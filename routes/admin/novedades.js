var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');

/* GET home page. */
router.get('/', async function(req, res, next) {

  var novedades
  if (req.query.q === undefined){

    novedades = await novedadesModel.getNovedades();
  } else {
    novedades = await novedadesModel.buscarNovedades(req.query.q);
    
  }

 
  res.render('admin/novedades', {
    layout: 'admin/layout',
    usuario: req.session.nombre,
    novedades,
    is_search: req.query.q !== undefined,
    q: req.query.q

    });
});

router.get('/eliminar/:id', async (req, res, next) =>{
    var id = req.params.id;
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades');

});// cierra get de eñiminar

/*agregar novedad*/ 

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar',{
        layout: 'admin/layout'
    })
});

/*Insertar o agregar en la base de datos*/

router.post('/agregar', async (req, res, next) => {
  try{
    if(req.body.img_url != "" && req.body.header != "" && req.body.description != "" && req.body.url != ""){
      await novedadesModel.insertNovedad(req.body);

      console.log(req.body);

      res.redirect('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true, message: 'Todos los campos son requeridos'
      })
    }
  } catch (error){
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true, message: 'Entry not added'
    });
  }
});


/* Traer el formulario de modificar con la novedad by ID*/

router.get('/modificar/:id', async(req, res, next) => {
  
  let id = req.params.id;
  console.log("id: ", id);
  let novedad = await novedadesModel.getNovedadById(id);

  res.render('admin/modificar', {
    layout: 'admin/layout',
    novedad
  });
});

router.post('/modificar', async (req, res, next) => {
try{
  let obj = {
    img_url: req.body.img_url,
    header: req.body.header,
    description: req.body.description,
    url: req.body.url
  }
  if(req.body.img_url != "" && req.body.header != "" && req.body.description != "" && req.body.url != ""){
    
    await novedadesModel.modificarNovedadById(obj, req.body.id);
    res.redirect('/admin/novedades');
    
  } else {
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true, message: 'Todos los campos son requeridos'
    })
  }
  
  }catch (error){
    console.log(error)
    res.render('admin/modificar',{
      layout: 'admin/layout',
       error: true, message: 'Entry not modified'
    }  )
  }
})

module.exports = router;
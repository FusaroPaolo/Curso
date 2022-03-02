const { isAsyncFunction } = require('util/support/types');
var pool = require('./bd');

/*sirve para listar las novedades*/

async function getNovedades(){
    var query = 'select * from lastest';
    var rows = await pool.query(query);
    return rows;
}

async function deleteNovedadesById(id){
    var query = 'delete from lastest where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;
}


async function insertNovedad(obj){
    try{
        var query = "insert into lastest set ?";
        var rows =await pool.query(query,[obj])
        return rows;
    }catch (error){
        console.log(error);
        throw error;
    }   // cierra catch
}       // cierra insert

async function getNovedadById(id){
    var query = 'select * from lastest where id = ?';
    var rows = await pool.query(query,[id]);
    return rows[0];
}

async function modificarNovedadById(obj, id) {
    try{
        var query ='update lastest set ? where id= ?';
        var rows = await pool.query(query, [obj, id]);
        return rows;
    }catch(errors){
        throw error;
    }
}

async function buscarNovedades(busqueda) {
    var query = 'select * from lastest where header like ?';
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' ]);
    return rows;
}

module.exports = {getNovedades, deleteNovedadesById, insertNovedad, getNovedadById, modificarNovedadById, buscarNovedades}
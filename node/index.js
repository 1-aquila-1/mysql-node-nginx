import express from 'express'
import { engine } from 'express-handlebars';
import db_conexao from './conexao.js'

const app = express()
const port = 3000


app.engine('handlebars', engine());
app.set('view engine', 'handlebars');
app.set('views', 'views');

app.get('/', (req, resp) => {
    const sql = `SELECT * FROM pessoa`
    db_conexao.query(sql, (erro, resultado, campo)=>{
        if(erro !== null){
            return resp.render("erro",{erro: erro})
        }
       return resp.render("home",{data: resultado})
    })
})

app.listen(port, ()=> {
    console.log('Rodando na porta ' + port)
})
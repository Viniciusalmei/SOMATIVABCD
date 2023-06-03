
create database  formativaHogwarts;
use formativaHogwarts;





create table status(
id bigint auto_increment not null,
statusname varchar(20),
primary key(id)
);



	create table tarefa(
	id bigint not null auto_increment,
	Titulo varchar(75) not null,
    DescricaoInicial text not null,
	solicitanteFk bigint not null,
	localFk bigint not null,
	PrazoFim datetime not null,
	DataAbertura datetime not null default now(),
    DataFinal datetime  null default now(),
	primary key(id),
	foreign key(solicitanteFk) references usuarios(id),
	foreign key(localFk) references locais(id));

 

	
		create table statustarefaFk(
		id bigint not null auto_increment,
		tarefaFk bigint not null, 
		statusFk bigint not null,
		comentario text not null,
        dataComentario datetime not null default now(),
		primary key(id),
		foreign key(tarefaFk) references tarefa(id),
		foreign key(statusFk) references status(id));
        
     
        

			create table statusTarefaFk_Fk (
			id bigint not null auto_increment,
			statustarefaFk bigint not null,
			Foto mediumtext not null,
            primary key(id),
            foreign key(statustarefaFk) references statustarefaFk(id));

            
				create table responsavelTarefa(
                id bigint not null auto_increment,
                tarefaFk_Fk bigint not null,
                responsavelFk bigint not null,
                primary key(id),
                foreign key (tarefaFk_Fk) references tarefa(id),
                foreign key(responsavelFk) references usuarios(id)
                );
                
               
                
                



create table userpl( 
 id bigint not null auto_increment,
 userFk bigint not null,
 linkfoto mediumtext not null,
 telefone bigint not null,
 primary key(id),
 foreign key(userFk) references usuarios(id)
 );
 

              
              
	




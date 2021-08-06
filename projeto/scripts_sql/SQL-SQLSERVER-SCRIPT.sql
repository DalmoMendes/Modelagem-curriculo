CREATE TABLE usuario (
  idusuario INTEGER   NOT NULL ,
  usuario_nome VARCHAR(30)    ,
  usuario_sobrenome VARCHAR(100)    ,
  usuario_genero CHAR(1)    ,
  usuario_nacionalidade VARCHAR(100)    ,
  usuario_naturalidade VARCHAR(50)    ,
  usuario_foto VARCHAR(255)    ,
  usuario_telefone VARCHAR(14)    ,
  usuario_email VARCHAR(255)    ,
  usuario_senha VARCHAR(255)    ,
  usuario_nivel INTEGER(1)    ,
  usuario_resumo VARCHAR(255)    ,
  usuario_cadastro TIMESTAMP    ,
  usuario_alteracao TIMESTAMP    ,
  usuario_estado INTEGER(1)    ,
  usuario_lixeira INTEGER(1)      ,
PRIMARY KEY(idusuario));



CREATE TABLE projeto (
  idprojeto INTEGER   NOT NULL ,
  idusuario_fk INTEGER   NOT NULL ,
  projeto_nome VARCHAR(255)    ,
  projeto_texto TEXT    ,
  projeto_url VARCHAR(255)    ,
  projeto_email VARCHAR(100)    ,
  projeto_estado INTEGER(1)      ,
PRIMARY KEY(idprojeto)  ,
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX projeto_FKIndex1 ON projeto (idusuario_fk);

CREATE INDEX IFK_Caso tenha ou participe de ON projeto (idusuario_fk);


CREATE TABLE publicacao (
  idpublicacao INTEGER   NOT NULL ,
  idusuario_fk INTEGER   NOT NULL ,
  publicacao_plataforma VARCHAR(20)    ,
  publicacao_tipo VARCHAR(100)    ,
  publicacao_nome VARCHAR(100)    ,
  publicacao_url VARCHAR(255)    ,
  publicacao_cadastro DATE    ,
  publicacao_estado INTEGER(1)      ,
PRIMARY KEY(idpublicacao)  ,
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX publicacao_FKIndex1 ON publicacao (idusuario_fk);

CREATE INDEX IFK_Minhas publicações na Inte ON publicacao (idusuario_fk);


CREATE TABLE social (
  idsocial INTEGER   NOT NULL ,
  idusuario_fk INTEGER   NOT NULL ,
  social_nome VARCHAR(20)    ,
  social_url VARCHAR(255)    ,
  social_icone VARCHAR(20)    ,
  social_estado INTEGER(1)      ,
PRIMARY KEY(idsocial)  ,
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX social_FKIndex1 ON social (idusuario_fk);

CREATE INDEX IFK_Minhas redes sociais ON social (idusuario_fk);


CREATE TABLE endereco (
  idendereco INTEGER   NOT NULL ,
  idusuario_fk INTEGER   NOT NULL ,
  endereco_cep INTEGER    ,
  endereco_rua VARCHAR(100)    ,
  endereco_numero VARCHAR(20)    ,
  endereco_bairro VARCHAR(100)    ,
  endereco_cidade VARCHAR(100)    ,
  endereco_uf CHAR(2)    ,
  endereco_estado INTEGER(1)      ,
PRIMARY KEY(idendereco)  ,
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX endereco_FKIndex1 ON endereco (idusuario_fk);

CREATE INDEX IFK_Meus endereços ON endereco (idusuario_fk);


CREATE TABLE documento (
  iddocumento INTEGER   NOT NULL ,
  idusuario INTEGER   NOT NULL ,
  documento_cpf VARCHAR(11)    ,
  documento_rg VARCHAR(30)    ,
  documento_titulo_inscricao VARCHAR(20)    ,
  documento_titulo_zona VARCHAR(5)    ,
  documento_titulo_secao VARCHAR(5)    ,
  documento_inicio DATE    ,
  documento_alteracao TIMESTAMP    ,
  documento_estado INTEGER(1)      ,
PRIMARY KEY(iddocumento, idusuario)  ,
  FOREIGN KEY(idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX documento_FKIndex1 ON documento (idusuario);

CREATE INDEX IFK_Meus documentos pessoais ON documento (idusuario);


CREATE TABLE formacao (
  idformacao INTEGER   NOT NULL ,
  idusuario_fk INTEGER   NOT NULL ,
  formacao_tipo VARCHAR(100)    ,
  formacao_curso VARCHAR(255)    ,
  formacao_local VARCHAR(255)    ,
  formacao_inicio DATE    ,
  formacao_situacao INTEGER(1)    ,
  formacao_conclusao DATE    ,
  formacao_ch CHAR(4)    ,
  formacao_estado INTEGER(1)      ,
PRIMARY KEY(idformacao)  ,
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX formacao_FKIndex1 ON formacao (idusuario_fk);

CREATE INDEX IFK_Minha formação e cursos ON formacao (idusuario_fk);


CREATE TABLE experiencia (
  idexperiencia INTEGER   NOT NULL ,
  idusuario_fk INTEGER   NOT NULL ,
  experiencia_trabalho VARCHAR(50)    ,
  experiencia_empresa VARCHAR(255)    ,
  experiencia_empresa_tipo VARCHAR(20)    ,
  experiencia_area VARCHAR(255)    ,
  experiencia_cargo VARCHAR(100)    ,
  experiencia_funcao VARCHAR(255)    ,
  experiencia_inicio DATE    ,
  experiencia_situacao INTEGER(1)    ,
  experiencia_termino DATE    ,
  experiencia_estado INTEGER(1)      ,
PRIMARY KEY(idexperiencia)  ,
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE);


CREATE INDEX profissional_FKIndex1 ON experiencia (idusuario_fk);

CREATE INDEX IFK_Minha experiências profiss ON experiencia (idusuario_fk);




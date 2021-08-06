CREATE TABLE usuario (
  idusuario INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  usuario_nome VARCHAR(30)  NULL  ,
  usuario_sobrenome VARCHAR(100)  NULL  ,
  usuario_genero CHAR(1)  NULL  ,
  usuario_nacionalidade VARCHAR(100)  NULL  ,
  usuario_naturalidade VARCHAR(50)  NULL  ,
  usuario_foto VARCHAR(255)  NULL  ,
  usuario_telefone VARCHAR(14)  NULL  ,
  usuario_email VARCHAR(255)  NULL  ,
  usuario_senha VARCHAR(255)  NULL  ,
  usuario_nivel INTEGER(1) UNSIGNED  NULL  ,
  usuario_resumo VARCHAR(255)  NULL  ,
  usuario_cadastro TIMESTAMP  NULL  ,
  usuario_alteracao TIMESTAMP  NULL  ,
  usuario_estado INTEGER(1) UNSIGNED  NULL  ,
  usuario_lixeira INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idusuario));


CREATE TABLE projeto (
  idprojeto INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario_fk INTEGER UNSIGNED  NOT NULL  ,
  projeto_nome VARCHAR(255)  NULL  ,
  projeto_texto TEXT  NULL  ,
  projeto_url VARCHAR(255)  NULL  ,
  projeto_email VARCHAR(100)  NULL  ,
  projeto_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idprojeto)  ,
INDEX projeto_FKIndex1(idusuario_fk),
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);


CREATE TABLE publicacao (
  idpublicacao INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario_fk INTEGER UNSIGNED  NOT NULL  ,
  publicacao_plataforma VARCHAR(20)  NULL  ,
  publicacao_tipo VARCHAR(100)  NULL  ,
  publicacao_nome VARCHAR(100)  NULL  ,
  publicacao_url VARCHAR(255)  NULL  ,
  publicacao_cadastro DATE  NULL  ,
  publicacao_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idpublicacao)  ,
INDEX publicacao_FKIndex1(idusuario_fk),
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);


CREATE TABLE social (
  idsocial INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario_fk INTEGER UNSIGNED  NOT NULL  ,
  social_nome VARCHAR(20)  NULL  ,
  social_url VARCHAR(255)  NULL  ,
  social_icone VARCHAR(20)  NULL  ,
  social_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idsocial)  ,
INDEX social_FKIndex1(idusuario_fk),
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);


CREATE TABLE endereco (
  idendereco INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario_fk INTEGER UNSIGNED  NOT NULL  ,
  endereco_cep INTEGER UNSIGNED  NULL  ,
  endereco_rua VARCHAR(100)  NULL  ,
  endereco_numero VARCHAR(20)  NULL  ,
  endereco_bairro VARCHAR(100)  NULL  ,
  endereco_cidade VARCHAR(100)  NULL  ,
  endereco_uf CHAR(2)  NULL  ,
  endereco_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idendereco)  ,
INDEX endereco_FKIndex1(idusuario_fk),
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);


CREATE TABLE documento (
  iddocumento INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario INTEGER UNSIGNED  NOT NULL  ,
  documento_cpf VARCHAR(11)  NULL  ,
  documento_rg VARCHAR(30)  NULL  ,
  documento_titulo_inscricao VARCHAR(20)  NULL  ,
  documento_titulo_zona VARCHAR(5)  NULL  ,
  documento_titulo_secao VARCHAR(5)  NULL  ,
  documento_inicio DATE  NULL  ,
  documento_alteracao TIMESTAMP  NULL  ,
  documento_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(iddocumento, idusuario)  ,
INDEX documento_FKIndex1(idusuario),
  FOREIGN KEY(idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);


CREATE TABLE formacao (
  idformacao INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario_fk INTEGER UNSIGNED  NOT NULL  ,
  formacao_tipo VARCHAR(100)  NULL  ,
  formacao_curso VARCHAR(255)  NULL  ,
  formacao_local VARCHAR(255)  NULL  ,
  formacao_inicio DATE  NULL  ,
  formacao_situacao INTEGER(1) UNSIGNED  NULL  ,
  formacao_conclusao DATE  NULL  ,
  formacao_ch CHAR(4)  NULL  ,
  formacao_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idformacao)  ,
INDEX formacao_FKIndex1(idusuario_fk),
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);


CREATE TABLE experiencia (
  idexperiencia INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idusuario_fk INTEGER UNSIGNED  NOT NULL  ,
  experiencia_trabalho VARCHAR(50)  NULL  ,
  experiencia_empresa VARCHAR(255)  NULL  ,
  experiencia_empresa_tipo VARCHAR(20)  NULL  ,
  experiencia_area VARCHAR(255)  NULL  ,
  experiencia_cargo VARCHAR(100)  NULL  ,
  experiencia_funcao VARCHAR(255)  NULL  ,
  experiencia_inicio DATE  NULL  ,
  experiencia_situacao INTEGER(1) UNSIGNED  NULL  ,
  experiencia_termino DATE  NULL  ,
  experiencia_estado INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(idexperiencia)  ,
INDEX profissional_FKIndex1(idusuario_fk),
  FOREIGN KEY(idusuario_fk)
    REFERENCES usuario(idusuario)
      ON DELETE CASCADE
      ON UPDATE NO ACTION);




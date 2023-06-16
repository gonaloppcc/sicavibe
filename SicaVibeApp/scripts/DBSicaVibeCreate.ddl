CREATE DATABASE SicaVibe;
USE SicaVibe;
CREATE TABLE Hotel_ServicoExtra (HotelID int(10) NOT NULL, ServicoExtraID int(10) NOT NULL, PRIMARY KEY (HotelID, ServicoExtraID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Reserva_Quarto (ReservaID int(10) NOT NULL, QuartoID int(10) NOT NULL, PRIMARY KEY (ReservaID, QuartoID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Reserva_ServicoExtra (ReservaID int(10) NOT NULL, ServicoExtraID int(10) NOT NULL, PRIMARY KEY (ReservaID, ServicoExtraID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Hotel (ID int(10) NOT NULL AUTO_INCREMENT, ImagemID int(10) NOT NULL, Nome varchar(255), Descricao varchar(1024), Endereco varchar(255), PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE TipoDeQuarto (ID int(10) NOT NULL AUTO_INCREMENT, ImagemID int(10) NOT NULL, Nome varchar(255), Capacidade int(10), Preco float, Descricao varchar(1024), PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Quarto (ID int(10) NOT NULL AUTO_INCREMENT, TipoDeQuartoID int(10) NOT NULL, HotelID int(10) NOT NULL, NPorta int(10) NOT NULL, Estado ENUM('LIVRE','OCUPADO','POR_LIMPAR'), PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Reserva (ID int(10) NOT NULL AUTO_INCREMENT, UtilizadorID int(10) NOT NULL, HotelID int(10) NOT NULL, DataEntrada date, DataSaida date, DataCheckIn timestamp NULL, DataCheckout timestamp NULL, Preco float, Estado ENUM('MARCADA','A_DECORRER','TERMINADA','CANCELADA'), PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE ServicoExtra (ID int(10) NOT NULL AUTO_INCREMENT, Nome varchar(255), Preco float, PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Utilizador (ID int(10) NOT NULL AUTO_INCREMENT, HotelID int(10), Email varchar(255) UNIQUE, Password varchar(255), Nome varchar(255), DataNascimento date, NTelemovel varchar(255) UNIQUE, Morada varchar(255), Cc varchar(255) UNIQUE, Nif varchar(255) UNIQUE, Estado ENUM('ATIVO','INATIVO','EM_PAUSA'), Discriminator varchar(255) NOT NULL, PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
CREATE TABLE Imagem (ID int(10) NOT NULL AUTO_INCREMENT, Nome varchar(255), Data mediumblob, PRIMARY KEY (ID)) ENGINE=InnoDB CHARACTER SET UTF8;
ALTER TABLE Reserva ADD CONSTRAINT FKReserva515338 FOREIGN KEY (HotelID) REFERENCES Hotel (ID);
ALTER TABLE Quarto ADD CONSTRAINT FKQuarto802006 FOREIGN KEY (HotelID) REFERENCES Hotel (ID);
ALTER TABLE Utilizador ADD CONSTRAINT FKUtilizador954793 FOREIGN KEY (HotelID) REFERENCES Hotel (ID);
ALTER TABLE Hotel_ServicoExtra ADD CONSTRAINT FKHotel_Serv469045 FOREIGN KEY (HotelID) REFERENCES Hotel (ID);
ALTER TABLE Hotel_ServicoExtra ADD CONSTRAINT FKHotel_Serv954705 FOREIGN KEY (ServicoExtraID) REFERENCES ServicoExtra (ID);
ALTER TABLE Reserva_Quarto ADD CONSTRAINT FKReserva_Qu947366 FOREIGN KEY (ReservaID) REFERENCES Reserva (ID);
ALTER TABLE Reserva_Quarto ADD CONSTRAINT FKReserva_Qu274743 FOREIGN KEY (QuartoID) REFERENCES Quarto (ID);
ALTER TABLE Reserva_ServicoExtra ADD CONSTRAINT FKReserva_Se34376 FOREIGN KEY (ReservaID) REFERENCES Reserva (ID);
ALTER TABLE Reserva_ServicoExtra ADD CONSTRAINT FKReserva_Se555988 FOREIGN KEY (ServicoExtraID) REFERENCES ServicoExtra (ID);
ALTER TABLE Quarto ADD CONSTRAINT FKQuarto145545 FOREIGN KEY (TipoDeQuartoID) REFERENCES TipoDeQuarto (ID);
ALTER TABLE TipoDeQuarto ADD CONSTRAINT FKTipoDeQuar291361 FOREIGN KEY (ImagemID) REFERENCES Imagem (ID);
ALTER TABLE Hotel ADD CONSTRAINT FKHotel557866 FOREIGN KEY (ImagemID) REFERENCES Imagem (ID);
ALTER TABLE Reserva ADD CONSTRAINT FKReserva884007 FOREIGN KEY (UtilizadorID) REFERENCES Utilizador (ID);
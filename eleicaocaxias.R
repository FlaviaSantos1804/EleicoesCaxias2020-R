rm(list=ls())


# Entrando com os dados de votos validos, nulos, brancos e ausentes

dados_gerais=c(0.6141,0.0971,0.0524,0.2363)
names(dados_gerais)=c("V�lidos","Nulos","Brancos","Ausentes")
 

# Comparando os votos v�lidos e inv�lidos

validos_invalidos=c(dados_gerais[1],sum(dados_gerais[-1]))
names(validos_invalidos)=c("V�lidos","Inv�lidos")
validos_invalidos


# Gerando um gr�fico de barras para a compara��o anterior

grafico_validos_invalidos=barplot(validos_invalidos,ylim=c(0,0.75),yaxt="n",col=c("orange","light gray"),cex.names=1.2,border=FALSE,sub="Fonte: Autoria pr�pria")

# Adicionado r�tulos de dados em cima de cada barra 

text(x=grafico_validos_invalidos,y=validos_invalidos,labels=paste(round(validos_invalidos*100,2),"%"),pos=3,font=2,cex=1.2)

# Adicionando um t�tulo ao gr�fico

title(main="61,41% dos eleitores validaram seus votos para prefeito",adj=0,cex.main=1.4)

# Adicionando um subtitulo ao gr�fico

mtext("Gr�fico medindo a porcentagem de votos v�lidos e inv�lidos para prefeito de Duque de Caxias",adj=0,cex=0.97,font=3)


# Entrando com os dados de cada candidato e de votos inv�lidos

candidatos_e_invalidos=c(0.3227,0.1083,0.0615,0.0611,0.0262,0.0165,0.0129,0.0037,0.00086,0.0971,0.0524,0.2363)
names(candidatos_e_invalidos)=c("Washington Reis","Marcelo Dino","Dica","Andr�ia","Ivanete","Aluizio","Zumba","Professor Gutemberg","Samuel Maia","Nulos","Brancos","Ausente")
candidatos_e_invalidos


# Comparando a porcentagem de votos a favor de wr com a que n�o votou nele

wr_contra=c(candidatos_e_invalidos[1],sum(candidatos_e_invalidos[-1]))
names(wr_contra)=c("Votaram nele","N�o votaram nele")
wr_contra

# Gerando um gr�fico de barras para a compara��o anterior

grafico_wr_contra=barplot(sort(wr_contra,decreasing=TRUE),ylim=c(0,0.75),yaxt="n",col=c("pink","light gray"),cex.names=1.2,border=FALSE,sub="Fonte: Autoria pr�pria")

# Adicionado r�tulos de dados em cima de cada barra 

text(x=grafico_wr_contra,y=sort(wr_contra,decreasing=TRUE),labels=sort(paste(round(wr_contra*100,2),"%"),decreasing=TRUE),pos=3,font=2,cex=1.2)

# Adicionando um t�tulo ao gr�fico

title(main="67.69% dos eleitores n�o votaram no prefeito eleito Washington Reis",adj=0,cex.main=1.4)

# Adicionando um subtitulo ao gr�fico

mtext("Gr�fico medindo a porcentagem de votos em rela��o ao prefeito eleito de Duque de Caxias",adj=0,cex=0.97,font=3)


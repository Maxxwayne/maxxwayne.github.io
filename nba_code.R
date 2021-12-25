library(rvest)
library(bazar)
library(plyr)

players=read.csv("/nba_players.csv",header=TRUE)
# head(players)

for (i in 1:nrow(players)){
  players$first[i] = unique(strsplit(as.character(players$Player[i]),' '))[[1]][1]
  players$last[i] = unique(strsplit(as.character(players$Player[i]),' '))[[1]][2]
  players$code[i] = tolower(gsub(' ','',concat('https://www.basketball-reference.com/players/',substr(players$last[i],1,1),'/',substr(players$last[i],1,5),substr(players$first[i],1,2),'01/gamelog/2022')))
}

players$code[27]='https://www.basketball-reference.com/players/b/barneha02/gamelog/2022'
players$code[66]='https://www.basketball-reference.com/players/b/brownch05/gamelog/2022'
players$code[67]='https://www.basketball-reference.com/players/b/brownja02/gamelog/2022'
players$code[71]='https://www.basketball-reference.com/players/b/brownst02/gamelog/2022'
players$code[77]='https://www.basketball-reference.com/players/b/butleja02/gamelog/2022'
players$code[83]='https://www.basketball-reference.com/players/c/capelca01/gamelog/2022'
players$code[113]='https://www.basketball-reference.com/players/d/davisan02/gamelog/2022'
players$code[115]='https://www.basketball-reference.com/players/d/daviste02/gamelog/2022'
players$code[135]='https://www.basketball-reference.com/players/e/edwarke02/gamelog/2022'
players$code[168]='https://www.basketball-reference.com/players/g/greenda02/gamelog/2022'
players$code[171]='https://www.basketball-reference.com/players/g/greenja05/gamelog/2022'
players$code[172]='https://www.basketball-reference.com/players/g/greenja02/gamelog/2022'
players$code[173]='https://www.basketball-reference.com/players/g/greenje02/gamelog/2022'
players$code[174]='https://www.basketball-reference.com/players/g/greenjo02/gamelog/2022'
players$code[180]='https://www.basketball-reference.com/players/h/hardati02/gamelog/2022'
players$code[186]='https://www.basketball-reference.com/players/h/harrito02/gamelog/2022'
players$code[191]='https://www.basketball-reference.com/players/h/hayesja02/gamelog/2022'
players$code[211]='https://www.basketball-reference.com/players/h/howarma02/gamelog/2022'
players$code[226]='https://www.basketball-reference.com/players/j/jacksjo02/gamelog/2022'
players$code[227]='https://www.basketball-reference.com/players/j/jacksja02/gamelog/2022'
players$code[233]='https://www.basketball-reference.com/players/j/johnsal02/gamelog/2022'
players$code[234]='https://www.basketball-reference.com/players/j/johnsca02/gamelog/2022'
players$code[235]='https://www.basketball-reference.com/players/j/johnsda08/gamelog/2022'
players$code[236]='https://www.basketball-reference.com/players/j/johnsja05/gamelog/2022'
players$code[238]='https://www.basketball-reference.com/players/j/johnske04/gamelog/2022'
players$code[239]='https://www.basketball-reference.com/players/j/johnske07/gamelog/2022'
players$code[241]='https://www.basketball-reference.com/players/j/jonesda03/gamelog/2022'
players$code[242]='https://www.basketball-reference.com/players/j/jonesde02/gamelog/2022'
players$code[252]='https://www.basketball-reference.com/players/k/kinglo02/gamelog/2022'
players$code[254]='https://www.basketball-reference.com/players/k/klebima01/gamelog/2022'
players$code[269]='https://www.basketball-reference.com/players/l/leeda03/gamelog/2022'
players$code[281]='https://www.basketball-reference.com/players/l/louzama01/gamelog/2022'
players$code[293]='https://www.basketball-reference.com/players/m/martica02/gamelog/2022'
players$code[295]='https://www.basketball-reference.com/players/m/martike04/gamelog/2022'
players$code[296]='https://www.basketball-reference.com/players/m/martike03/gamelog/2022'
players$code[325]='https://www.basketball-reference.com/players/m/morrima03/gamelog/2022'
players$code[326]='https://www.basketball-reference.com/players/m/morrima02/gamelog/2022'
players$code[329]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022'
players$code[331]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[335]='https://www.basketball-reference.com/players/n/nancela02/gamelog/2022'
players$code[344]='https://www.basketball-reference.com/players/n/ntilila01/gamelog/2022'
players$code[345]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[360]='https://www.basketball-reference.com/players/o/osmande01/gamelog/2022'
players$code[367]='https://www.basketball-reference.com/players/p/paytoga02/gamelog/2022'
players$code[375]='https://www.basketball-reference.com/players/p/porteke02/gamelog/2022'
players$code[384]='https://www.basketball-reference.com/players/p/princta02/gamelog/2022'
players$code[386]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[392]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[393]='https://www.basketball-reference.com/players/r/reedpa01/gamelog/2022'
players$code[401]='https://www.basketball-reference.com/players/r/robinje02/gamelog/2022'
players$code[427]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[428]='https://www.basketball-reference.com/players/s/smithde03/gamelog/2022'
players$code[430]='https://www.basketball-reference.com/players/s/smithja04/gamelog/2022'
players$code[442]='https://www.basketball-reference.com/players/t/thomaca02/gamelog/2022'
players$code[443]='https://www.basketball-reference.com/players/t/thomama02/gamelog/2022'
players$code[444]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[448]='https://www.basketball-reference.com/players/t/tilliki02/gamelog/2022'
players$code[454]='https://www.basketball-reference.com/players/t/trentga02/gamelog/2022'
players$code[468]='https://www.basketball-reference.com/players/w/walkeke02/gamelog/2022'
players$code[470]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[472]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[473]='https://www.basketball-reference.com/players/w/washidu02/gamelog/2022'
players$code[486]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####
players$code[487]='https://www.basketball-reference.com/players/w/willilo02/gamelog/2022'
players$code[489]='https://www.basketball-reference.com/players/w/williro04/gamelog/2022'
players$code[491]='https://www.basketball-reference.com/players/m/murphtr02/gamelog/2022' ####

# cap=list()
# dap=list()
cap=list(rep(data.frame(),nrow(players)))
dap=list(rep(data.frame(),nrow(players)))
slap=list(rep(data.frame(),nrow(players)))


for (j in 1:nrow(players)){
  cap[[j]] = read_html(players$code[j]) %>% html_nodes('table') #%>% html_element(css='.row_summable sortable stats_table') %>% html_table(fill=TRUE)
  slap[[j]] = cap[[j]][8] %>% html_table(fill=TRUE)
  dap[[j]] = cbind(players$Player[j],as.data.frame(slap[[j]]))
 # game_logs=ldply(cbind(players$Player[j],as.data.frame(cap[[j]][[8]])),data.frame)
  game_logs=ldply(dap,data.frame)
  colnames(game_logs)=c('Name','Rank','Game','Date','Age','Team','Away','Opponent','Game Result','Started Game?','Minutes','FGM','FGA','FG%','3PM','3PA','3P%','FTM','FTA','FT%','OREB','DREB','REB','AST','STL','BLK','TOV','PF','Points','Game Score','+/-')
}
# cap[[1]][[8]]=read_html(players$code[1]) %>% html_nodes('table')

# players[131,c(2,14)]
# cap[[1]][[8]]

# show_logs(glc[12,1],3,'Steven Adams')

# cbind(players$Player[1],as.data.frame(cap[[1]][[8]]))
# colnames(dap[[1]])
# colnames(game_logs[1,])
# dap[[1]]
game_logs=game_logs[-c(331,345,386,392,427,444,470,472,486,491),]
game_logs=game_logs[-which(game_logs$FGA=='Did Not Play' | game_logs$FGA=='Inactive' | game_logs$FGA=='FGA' | game_logs$FGA=='Not With Team' |game_logs$FGA=='Did Not Dress'),]

game_logs$FGM=as.integer(game_logs$FGM)
game_logs$FGA=as.integer(game_logs$FGA)
game_logs$`FG%`=as.numeric(game_logs$`FG%`)
game_logs$`3PM`=as.integer(game_logs$`3PM`)
game_logs$`3PA`=as.integer(game_logs$`3PA`)
game_logs$`3P%`=as.numeric(game_logs$`3P%`)
game_logs$FTM=as.integer(game_logs$FTM)
game_logs$FTA=as.integer(game_logs$FTA)
game_logs$`FT%`=as.numeric(game_logs$`FT%`)
game_logs$OREB=as.integer(game_logs$OREB)
game_logs$DREB=as.integer(game_logs$DREB)
game_logs$REB=as.integer(game_logs$REB)
game_logs$AST=as.integer(game_logs$AST)
game_logs$STL=as.integer(game_logs$STL)
game_logs$BLK=as.integer(game_logs$BLK)
game_logs$TOV=as.integer(game_logs$TOV)
game_logs$PF=as.integer(game_logs$PF)
game_logs$Points=as.integer(game_logs$Points)
game_logs$`Game Score`=as.integer(game_logs$`Game Score`)
game_logs$`+/-`=as.integer(game_logs$`+/-`)

for (x in 1:nrow(game_logs)){
  game_logs$MIN[x]=round(as.numeric(strsplit(game_logs$Minutes[x],':',1)[[1]][1]),0)
  game_logs$`Approx Fantasy`[x]= -1*(as.numeric(game_logs$FGA[x])-as.numeric(game_logs$FGM[x]))-0.25*(as.numeric(game_logs$`3PA`[x])-as.numeric(game_logs$`3PM`[x]))-0.5*(as.numeric(game_logs$FTA[x])-as.numeric(game_logs$FTM[x]))+1.25*as.numeric(game_logs$OREB[x])+as.numeric(game_logs$DREB[x])+as.numeric(game_logs$AST[x])+1.5*as.numeric(game_logs$STL[x])+1.5*as.numeric(game_logs$BLK[x])-1.5*as.numeric(game_logs$TOV[x])-0.5*as.numeric(game_logs$PF[x])+as.numeric(game_logs$Points[x])
}

glc=as.data.frame(colnames(game_logs))
colnames(glc)='Stat'

nombres=names(game_logs)

game_logs$dates=as.Date(game_logs$Date)

for(p in 1:nrow(game_logs)){
  if(game_logs$dates[p]<='2021-01-30'){
    game_logs$Week[p]='Week 15'
  }
  if(game_logs$dates[p]<='2021-01-23'){
    game_logs$Week[p]='Week 14'
  }
  if(game_logs$dates[p]<='2022-01-16'){
    game_logs$Week[p]='Week 13'
  }
  if(game_logs$dates[p]<='2022-01-09'){
    game_logs$Week[p]='Week 12'
  }
  if(game_logs$dates[p]<='2022-01-02'){
    game_logs$Week[p]='Week 11'
  }
  if(game_logs$dates[p]<='2021-12-26'){
    game_logs$Week[p]='Week 10'
  }
  if(game_logs$dates[p]<='2021-12-19'){
    game_logs$Week[p]='Week 9'
  }
  if(game_logs$dates[p]<='2021-12-12'){
    game_logs$Week[p]='Week 8'
  }
  if(game_logs$dates[p]<='2021-12-05'){
    game_logs$Week[p]='Week 7'
  }
  if(game_logs$dates[p]<='2021-11-28'){
    game_logs$Week[p]='Week 6'
  }
  if(game_logs$dates[p]<='2021-11-21'){
    game_logs$Week[p]='Week 5'
  }
  if(game_logs$dates[p]<='2021-11-14'){
    game_logs$Week[p]='Week 4'
  }
  if(game_logs$dates[p]<='2021-11-07'){
    game_logs$Week[p]='Week 3'
  }
  if(game_logs$dates[p]<='2021-10-31'){
    game_logs$Week[p]='Week 2'
  }
  if(game_logs$dates[p]<='2021-10-24'){
    game_logs$Week[p]='Week 1'
  }
}

show_logs=function(ss,vv,nn){
  as.data.frame(game_logs[which(game_logs[,which(colnames(game_logs)==ss)] >= vv & game_logs$Name==nn),c(4,7:9,11:13,15,16,18,19,21:29,30,31,33)])
}

show_count=function(sv,vn,ns){
  gsub(' ','',concat(nrow(game_logs[which(game_logs[,which(colnames(game_logs)==sv)] >= vn & game_logs$Name==ns),]),'/',nrow(game_logs[which(game_logs$Name==ns),])))
}
# gsub(' ','',concat(nrow(players),'/',12))
#aaaa=read_html(players$code[1]) %>% html_nodes('table') %>% top_n(-1)
#%>%slice(8) %>% html_table(fill=TRUE)
#aaaa %>% top_n(-1) %>% html_table(fill=TRUE)


write.csv(game_logs,'/test0.csv',row.names=FALSE)

#    game_logs[which(game_logs[,which(nombres=="FGM")] >= 2 & game_logs$Name=='Steven Adams' & game_logs$dates>='2021-11-14' & game_logs$dates<='2021-12-12'),nombres[c(1,4,11:16)]]
#subset(game_logs,unique(game_logs$Name))
week_logs=aggregate(`Approx Fantasy`~Name+Week,game_logs,sum)

write.csv(week_logs,'/test1.csv',row.names=FALSE)

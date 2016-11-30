# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##########################################################################################
# rails db:seed 		-	Comando para carregar as seeds
# rails db:schema:dump	-	Comando para limpar o esquema todo da BD (tudo)
# rails db:schema:load 	-	Comando para carregar o esquema da BD
##########################################################################################


User.delete_all
Role.delete_all

Room.delete_all
Course.delete_all
Degree.delete_all
School.delete_all

puts ""
puts "######### Apagou com sucesso os dados anteriores ##########"

#@s = School.create(name:'IPT', country:'teste', distric:'teste',  city:'teste', county:'teste', postCode:'teste', addressDetails:'teste')
#@s.courses.create(name:'teste1')
#@r = Role.create(name: 'Admin')
#@r.users.create(name: 'teste', email: 'teste', password:'teste')

puts "#################### Adicionar escolas ####################"

@s1 = School.create(name:'Escola Superior de Tecnologia de Tomar',country:'Portugal',distric:'Santarém',city:'Tomar',county:'Tomar',postCode:'2300',addressDetails:'')
@s2 = School.create(name:'Escola Superior de Gestão de Tomar',country:'Portugal',distric:'Santarém',city:'Tomar',county:'Tomar',postCode:'2300',addressDetails:'')
@s3 = School.create(name:'Escola Superior de Tecnologia de Abrantes',country:'Portugal',distric:'Santarém',city:'Tomar',county:'Tomar',postCode:'2300',addressDetails:'')

puts "####################  Adicionar salas  ####################"

@s1.rooms.create(description:'A100',projector:'False',seats:'21')
@s1.rooms.create(description:'A101',projector:'False',seats:'22')
@s1.rooms.create(description:'A102',projector:'False',seats:'19')
@s1.rooms.create(description:'A103',projector:'True',seats:'27')
@s1.rooms.create(description:'A104',projector:'False',seats:'19')
@s1.rooms.create(description:'A105',projector:'False',seats:'25')
@s1.rooms.create(description:'A106',projector:'False',seats:'16')
@s1.rooms.create(description:'A107',projector:'False',seats:'19')
@s1.rooms.create(description:'A108',projector:'True',seats:'16')
@s1.rooms.create(description:'A109',projector:'False',seats:'20')
@s1.rooms.create(description:'A110',projector:'True',seats:'18')
@s1.rooms.create(description:'A111',projector:'False',seats:'22')
@s1.rooms.create(description:'A112',projector:'True',seats:'25')
@s1.rooms.create(description:'A113',projector:'True',seats:'24')
@s1.rooms.create(description:'A114',projector:'True',seats:'30')
@s1.rooms.create(description:'A115',projector:'True',seats:'20')
@s1.rooms.create(description:'A116',projector:'True',seats:'26')
@s1.rooms.create(description:'A117',projector:'True',seats:'25')
@s1.rooms.create(description:'A118',projector:'True',seats:'28')
@s1.rooms.create(description:'A119',projector:'False',seats:'20')
@s1.rooms.create(description:'A120',projector:'True',seats:'24')
@s1.rooms.create(description:'A121',projector:'True',seats:'21')
@s1.rooms.create(description:'A122',projector:'True',seats:'22')
@s1.rooms.create(description:'A123',projector:'False',seats:'30')
@s1.rooms.create(description:'A124',projector:'False',seats:'18')
@s1.rooms.create(description:'A125',projector:'False',seats:'15')
@s1.rooms.create(description:'A126',projector:'False',seats:'16')
@s1.rooms.create(description:'A127',projector:'True',seats:'15')
@s1.rooms.create(description:'A128',projector:'False',seats:'15')
@s1.rooms.create(description:'A129',projector:'False',seats:'28')
@s1.rooms.create(description:'A130',projector:'True',seats:'28')
@s1.rooms.create(description:'A131',projector:'False',seats:'24')
@s1.rooms.create(description:'A132',projector:'True',seats:'16')
@s1.rooms.create(description:'A133',projector:'True',seats:'17')
@s1.rooms.create(description:'A134',projector:'True',seats:'27')
@s1.rooms.create(description:'A135',projector:'True',seats:'16')
@s1.rooms.create(description:'A136',projector:'True',seats:'30')
@s1.rooms.create(description:'A137',projector:'False',seats:'26')
@s1.rooms.create(description:'A138',projector:'True',seats:'30')
@s1.rooms.create(description:'A139',projector:'True',seats:'18')
@s1.rooms.create(description:'A140',projector:'True',seats:'28')
@s1.rooms.create(description:'A141',projector:'False',seats:'25')
@s1.rooms.create(description:'A142',projector:'False',seats:'27')
@s1.rooms.create(description:'A143',projector:'False',seats:'22')
@s1.rooms.create(description:'A144',projector:'True',seats:'15')
@s1.rooms.create(description:'A145',projector:'False',seats:'29')
@s1.rooms.create(description:'A146',projector:'True',seats:'26')
@s1.rooms.create(description:'A147',projector:'False',seats:'28')
@s2.rooms.create(description:'A147',projector:'False',seats:'18')
@s2.rooms.create(description:'A148',projector:'True',seats:'21')
@s2.rooms.create(description:'A149',projector:'True',seats:'30')
@s2.rooms.create(description:'A150',projector:'False',seats:'22')
@s2.rooms.create(description:'A151',projector:'False',seats:'23')
@s2.rooms.create(description:'A152',projector:'False',seats:'16')
@s2.rooms.create(description:'A153',projector:'False',seats:'30')
@s2.rooms.create(description:'A154',projector:'True',seats:'25')
@s2.rooms.create(description:'A155',projector:'True',seats:'30')
@s2.rooms.create(description:'A156',projector:'True',seats:'19')
@s2.rooms.create(description:'A157',projector:'True',seats:'15')
@s2.rooms.create(description:'A158',projector:'True',seats:'26')
@s2.rooms.create(description:'A159',projector:'True',seats:'28')
@s2.rooms.create(description:'A160',projector:'False',seats:'24')
@s2.rooms.create(description:'A161',projector:'False',seats:'25')
@s2.rooms.create(description:'A162',projector:'True',seats:'26')
@s2.rooms.create(description:'A163',projector:'False',seats:'23')
@s2.rooms.create(description:'A164',projector:'False',seats:'20')
@s2.rooms.create(description:'A165',projector:'False',seats:'22')
@s2.rooms.create(description:'A166',projector:'False',seats:'18')
@s2.rooms.create(description:'A167',projector:'False',seats:'29')
@s2.rooms.create(description:'A168',projector:'True',seats:'28')
@s2.rooms.create(description:'A169',projector:'False',seats:'23')
@s2.rooms.create(description:'A170',projector:'False',seats:'29')
@s2.rooms.create(description:'A171',projector:'True',seats:'29')
@s2.rooms.create(description:'A172',projector:'True',seats:'29')
@s2.rooms.create(description:'A173',projector:'True',seats:'30')
@s2.rooms.create(description:'A174',projector:'True',seats:'17')
@s2.rooms.create(description:'A175',projector:'True',seats:'26')
@s2.rooms.create(description:'A176',projector:'True',seats:'25')
@s2.rooms.create(description:'A177',projector:'False',seats:'27')
@s2.rooms.create(description:'A178',projector:'False',seats:'25')
@s2.rooms.create(description:'A179',projector:'True',seats:'19')
@s2.rooms.create(description:'A180',projector:'True',seats:'26')
@s2.rooms.create(description:'A181',projector:'False',seats:'16')
@s2.rooms.create(description:'A182',projector:'False',seats:'15')
@s2.rooms.create(description:'A183',projector:'True',seats:'24')
@s2.rooms.create(description:'A184',projector:'True',seats:'17')
@s2.rooms.create(description:'A185',projector:'False',seats:'20')
@s2.rooms.create(description:'A186',projector:'True',seats:'17')
@s2.rooms.create(description:'A187',projector:'False',seats:'20')
@s2.rooms.create(description:'A188',projector:'False',seats:'21')
@s2.rooms.create(description:'A189',projector:'False',seats:'25')
@s2.rooms.create(description:'A190',projector:'False',seats:'18')
@s2.rooms.create(description:'A191',projector:'False',seats:'22')
@s2.rooms.create(description:'A192',projector:'False',seats:'17')
@s2.rooms.create(description:'A193',projector:'False',seats:'17')
@s2.rooms.create(description:'A194',projector:'False',seats:'29')
@s2.rooms.create(description:'A195',projector:'False',seats:'16')
@s2.rooms.create(description:'A196',projector:'True',seats:'27')
@s2.rooms.create(description:'A197',projector:'True',seats:'23')
@s2.rooms.create(description:'A198',projector:'True',seats:'16')
@s2.rooms.create(description:'A199',projector:'True',seats:'26')
@s2.rooms.create(description:'A200',projector:'True',seats:'23')
@s2.rooms.create(description:'A201',projector:'True',seats:'22')
@s3.rooms.create(description:'A147',projector:'True',seats:'22')
@s3.rooms.create(description:'A148',projector:'True',seats:'16')
@s3.rooms.create(description:'A149',projector:'True',seats:'24')
@s3.rooms.create(description:'A150',projector:'True',seats:'23')
@s3.rooms.create(description:'A151',projector:'True',seats:'16')
@s3.rooms.create(description:'A152',projector:'True',seats:'21')
@s3.rooms.create(description:'A153',projector:'True',seats:'28')
@s3.rooms.create(description:'A154',projector:'True',seats:'21')
@s3.rooms.create(description:'A155',projector:'False',seats:'15')
@s3.rooms.create(description:'A156',projector:'True',seats:'22')
@s3.rooms.create(description:'A157',projector:'False',seats:'25')
@s3.rooms.create(description:'A158',projector:'False',seats:'29')
@s3.rooms.create(description:'A159',projector:'True',seats:'28')
@s3.rooms.create(description:'A160',projector:'False',seats:'21')
@s3.rooms.create(description:'A161',projector:'False',seats:'25')
@s3.rooms.create(description:'A162',projector:'True',seats:'24')
@s3.rooms.create(description:'A163',projector:'False',seats:'29')
@s3.rooms.create(description:'A164',projector:'True',seats:'29')
@s3.rooms.create(description:'A165',projector:'True',seats:'15')
@s3.rooms.create(description:'A166',projector:'True',seats:'21')
@s3.rooms.create(description:'A167',projector:'True',seats:'20')
@s3.rooms.create(description:'A168',projector:'True',seats:'26')
@s3.rooms.create(description:'A169',projector:'True',seats:'17')
@s3.rooms.create(description:'A170',projector:'False',seats:'23')
@s3.rooms.create(description:'A171',projector:'True',seats:'26')
@s3.rooms.create(description:'A172',projector:'False',seats:'29')
@s3.rooms.create(description:'A173',projector:'True',seats:'26')
@s3.rooms.create(description:'A174',projector:'False',seats:'24')
@s3.rooms.create(description:'A175',projector:'False',seats:'25')
@s3.rooms.create(description:'A176',projector:'False',seats:'18')
@s3.rooms.create(description:'A177',projector:'True',seats:'23')
@s3.rooms.create(description:'A178',projector:'True',seats:'19')
@s3.rooms.create(description:'A179',projector:'True',seats:'26')
@s3.rooms.create(description:'A180',projector:'False',seats:'30')
@s3.rooms.create(description:'A181',projector:'True',seats:'30')
@s3.rooms.create(description:'A182',projector:'True',seats:'30')
@s3.rooms.create(description:'A183',projector:'True',seats:'15')
@s3.rooms.create(description:'A184',projector:'True',seats:'27')
@s3.rooms.create(description:'A185',projector:'False',seats:'16')
@s3.rooms.create(description:'A186',projector:'True',seats:'17')
@s3.rooms.create(description:'A187',projector:'True',seats:'22')
@s3.rooms.create(description:'A188',projector:'False',seats:'30')
@s3.rooms.create(description:'A189',projector:'True',seats:'15')
@s3.rooms.create(description:'A190',projector:'False',seats:'28')
@s3.rooms.create(description:'A191',projector:'False',seats:'15')
@s3.rooms.create(description:'A192',projector:'True',seats:'16')
@s3.rooms.create(description:'A193',projector:'False',seats:'16')
@s3.rooms.create(description:'A194',projector:'True',seats:'15')
@s3.rooms.create(description:'A195',projector:'False',seats:'23')
@s3.rooms.create(description:'A196',projector:'True',seats:'26')
@s3.rooms.create(description:'A197',projector:'True',seats:'30')
@s3.rooms.create(description:'A198',projector:'False',seats:'30')
@s3.rooms.create(description:'A199',projector:'False',seats:'29')
@s3.rooms.create(description:'A200',projector:'True',seats:'22')
@s3.rooms.create(description:'A201',projector:'True',seats:'17')

puts "############### Adicionar Níveis de cursos ################"

@r1 = Degree.create(description:'TeSP')
@r2 = Degree.create(description:'Licenciatura')
@r3 = Degree.create(description:'Mestrado')
@r4 = Degree.create(description:'Doutoramento')
@r5 = Degree.create(description:'Pós-Graduação')


##ainda não está a funcionar para baixo

puts "#################### Adicionar  cursos ####################"

#@s1.courses.create(name:'Administração de Bases de Dados', degree: @r1)
#@s1.courses.create(name:'Animação e Modelação 3D', degree: @r1)

@s1.courses.create(name:'Administração de Bases de Dados',degree:@r1)
@s1.courses.create(name:'Animação e Modelação 3D',degree:@r1)
@s1.courses.create(name:'Arte e Técnica do Couro',degree:@r1)
@s1.courses.create(name:'Automação Industrial',degree:@r1)
@s1.courses.create(name:'Construção e Reabilitação',degree:@r1)
@s1.courses.create(name:'Contabilidade e Fiscalidade',degree:@r1)
@s1.courses.create(name:'Contabilidade e Gestão',degree:@r1)
@s1.courses.create(name:'Desenho Tecnológico',degree:@r1)
@s1.courses.create(name:'Desenho e Fabrico de Construções Mecânicas',degree:@r1)
@s1.courses.create(name:'Design Multimédia',degree:@r1)
@s1.courses.create(name:'Gestão Administrativa de Recursos Humanos',degree:@r1)
@s1.courses.create(name:'Gestão Comercial e Vendas',degree:@r1)
@s1.courses.create(name:'Instalações Elétricas e Manutenção Industrial',degree:@r1)
@s1.courses.create(name:'Manutenção de Sistemas Mecatrónicos',degree:@r1)
@s1.courses.create(name:'Produção Artística para a Conservação e Restauro',degree:@r1)
@s1.courses.create(name:'Produção de Atividades para o Turismo Cultural',degree:@r1)
@s1.courses.create(name:'Qualidade Alimentar',degree:@r1)
@s1.courses.create(name:'Qualidade Ambiental',degree:@r1)
@s1.courses.create(name:'Segurança e Proteção Civil',degree:@r1)
@s1.courses.create(name:'Som e Imagem',degree:@r1)
@s1.courses.create(name:'Tecnologia de Bioprocessos',degree:@r1)
@s1.courses.create(name:'Tecnologia e Programação em Sistemas de Informação',degree:@r1)
@s1.courses.create(name:'Tecnologias Tradicionais de Construção e Reabilitação',degree:@r1)
@s1.courses.create(name:'Web e Dispositivos Móveis',degree:@r1)
@s1.courses.create(name:'Administração Pública',degree:@r2)
@s1.courses.create(name:'Artes Plásticas - Pintura e Intermédia',degree:@r2)
@s1.courses.create(name:'Auditoria e Fiscalidade',degree:@r2)
@s1.courses.create(name:'Comunicação Social',degree:@r2)
@s1.courses.create(name:'Conservação e Restauro',degree:@r2)
@s1.courses.create(name:'Construção e Reabilitação',degree:@r2)
@s1.courses.create(name:'Contabilidade',degree:@r2)
@s1.courses.create(name:'Design e Tecnologia das Artes Gráficas',degree:@r2)
@s1.courses.create(name:'Engenharia Civil (pós-laboral)',degree:@r2)
@s1.courses.create(name:'Engenharia Civil',degree:@r2)
@s1.courses.create(name:'Engenharia Electrotécnica e de Computadores (pós-laboral)',degree:@r2)
@s1.courses.create(name:'Engenharia Electrotécnica e de Computadores',degree:@r2)
@s1.courses.create(name:'Engenharia Informática (pós-laboral)',degree:@r2)
@s1.courses.create(name:'Engenharia Informática',degree:@r2)
@s1.courses.create(name:'Engenharia Mecânica',degree:@r2)
@s1.courses.create(name:'Engenharia Química e Bioquímica',degree:@r2)
@s1.courses.create(name:'Engenharia do Ambiente e Biológica',degree:@r2)
@s1.courses.create(name:'Fotografia',degree:@r2)
@s1.courses.create(name:'Gestão Turística e Cultural',degree:@r2)
@s1.courses.create(name:'Gestão de Empresas (pós-laboral)',degree:@r2)
@s1.courses.create(name:'Gestão de Empresas',degree:@r2)
@s1.courses.create(name:'Gestão de Recursos Humanos e Comportamento Organizacional',degree:@r2)
@s1.courses.create(name:'Gestão do Território',degree:@r2)
@s1.courses.create(name:'Gestão e Administração Bancária (Pós-Laboral)',degree:@r2)
@s1.courses.create(name:'Gestão e Administração de Serviços de Saúde',degree:@r2)
@s1.courses.create(name:'Tecnologias de Informação e Comunicação',degree:@r2)
@s1.courses.create(name:'Video e Cinema Documental',degree:@r2)
@s1.courses.create(name:'Analítica e Inteligência Organizacional',degree:@r3)
@s1.courses.create(name:'Arqueologia Pré-Histórica a Arte Rupestre',degree:@r3)
@s1.courses.create(name:'Auditoria e Análise Financeira',degree:@r3)
@s1.courses.create(name:'Auditoria e Finanças',degree:@r3)
@s1.courses.create(name:'Conservação e Restauro',degree:@r3)
@s1.courses.create(name:'Desenvolvimento de Produtos de Turismo Cultural',degree:@r3)
@s1.courses.create(name:'Design Editorial',degree:@r3)
@s1.courses.create(name:'Engenharia Eletrotécnica - Especialização em Controlo e Eletrónica Industrial',degree:@r3)
@s1.courses.create(name:'Engenharia Informática - Internet das Coisas',degree:@r3)
@s1.courses.create(name:'Engenharia Mecânica - Projecto e Produção Mecânica',degree:@r3)
@s1.courses.create(name:'Fotografia',degree:@r3)
@s1.courses.create(name:'Gestão de Empresas Familiares e Empreendedorismo',degree:@r3)
@s1.courses.create(name:'Gestão de Recursos de Saúde',degree:@r3)
@s1.courses.create(name:'Informática na Saúde (pós-laboral)',degree:@r3)
@s1.courses.create(name:'Inovação e Desenvolvimento Empreendedor',degree:@r3)
@s1.courses.create(name:'Manutenção de Instalações Técnicas',degree:@r3)
@s1.courses.create(name:'Museus, Património e Sociedade do Conhecimento',degree:@r3)
@s1.courses.create(name:'Produção de Conteúdos Digitais',degree:@r3)
@s1.courses.create(name:'Reabilitação Urbana',degree:@r3)
@s1.courses.create(name:'Sistemas de Informação Geográfica, em Planeamento e Gestão do Território',degree:@r3)
@s1.courses.create(name:'Tecnologia Quimica',degree:@r3)
@s1.courses.create(name:'Técnicas de Arqueologia',degree:@r3)
@s1.courses.create(name:'Executive Master em Gestão de Organizações Sem Fins Lucrativos',degree:@r5)
@s1.courses.create(name:'Executive Master em Gestão para Empreendedores e Executivos',degree:@r5)
@s1.courses.create(name:'Análise e Tratamento Computacional de Dados',degree:@r5)
@s1.courses.create(name:'Arqueologia Subaquática',degree:@r5)
@s1.courses.create(name:'Arqueologia, Gestão e Educação Patrimonial',degree:@r5)
@s1.courses.create(name:'Business Intelligence',degree:@r5)
@s1.courses.create(name:'Design Multimédia',degree:@r5)
@s1.courses.create(name:'Gestão de Informação e do Conhecimento',degree:@r5)
@s1.courses.create(name:'Jornalismo de Proximidade',degree:@r5)
@s1.courses.create(name:'Marketing Territorial',degree:@r5)
@s1.courses.create(name:'Produção Industrial',degree:@r5)
@s1.courses.create(name:'Proteção Civil: A Gestão da Comunicação no Risco, nas Emergências e nas Crises',degree:@r5)
@s1.courses.create(name:'Pós-graduação em Novas Tecnologias da Comunicação',degree:@r5)

puts "################## Carregado com sucesso ##################"



####### DEBUG TIME #######
#puts @r1.course.to_yaml
#puts @r1.course.inspect
#puts @s1.courses.inspect
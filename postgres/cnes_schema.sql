
create table if not exists cnes.tb_dsei (
    id serial not null,
    co_seq_dsei int,ds_dsei varchar(255),nu_grau_latitude int,nu_minuto_latitude int,nu_segundo_latitude int,nu_grau_longitude int,nu_minuto_longitude int,nu_segundo_longitude int,ds_endereco varchar(255),ds_bairro varchar(255),nu_cep int,ds_email varchar(255),ds_email_chefe varchar(255),co_municipio_ibge int,no_chefe_dsei varchar(255),ds_extensao varchar(255),ds_complemento varchar(255),nu_ddd1 int,nu_telefone1 int,nu_ddd2 int,nu_telefone2 int,nu_ddd_fax int,nu_fax int,dt_inclusao timestamp,dt_extincao timestamp,st_registro_ativo boolean
)
;            
ALTER TABLE cnes.tb_dsei ADD 
    CONSTRAINT PK_tb_dsei PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_carga_horaria_sus (
    id serial not null,
    co_unidade int,co_profissional_sus int,co_cbo int,tp_sus_nao_sus varchar(255),ind_vinculacao varchar(255),tp_terceiro_sih varchar(255),qt_carga_horaria_ambulatorial varchar(255),co_conselho_classe int,nu_registro int,sg_uf_crm varchar(255),tp_preceptor varchar(255),tp_residente varchar(255),nu_cnpj_detalhamento_vinculo int,a.dt_atualizacao varchar(255),co_usuario int,a.dt_atualizacao_origem varchar(255),qt_carga_horaria_outros varchar(255),qt_carga_hor_hosp_sus varchar(255)
)
;            
ALTER TABLE cnes.tb_carga_horaria_sus ADD 
    CONSTRAINT PK_tb_carga_horaria_sus PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_regime_res (
    id serial not null,
    co_unidade int,tp_modulo varchar(255),nu_vagas_existentes int,nu_vagas_sus int,dt_ativacao timestamp,dt_desativacao timestamp,co_profissional_sus int,co_cbo int,tp_sus_nao_sus varchar(255),ind_vinculacao varchar(255),co_cnes_caps_ref int,co_prof_sus_caps_ref int,co_cbo_caps_ref int,tp_sus_nao_sus_caps_ref varchar(255),ind_vinculacao_caps_ref varchar(255),co_cnes_unid_basica_ref int,co_cnes_hosp_geral_ref int,st_unidade_regional boolean,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_regime_res ADD 
    CONSTRAINT PK_rl_estab_regime_res PRIMARY KEY 
    (
        id
    )
;            

create table if not exists cnes.tb_estabelecimento (    
    co_unidade int,
    co_cnes int not null,
    nu_cnpj_mantenedora int,
    tp_pfpj varchar(255),nivel_dep varchar(255),no_razao_social varchar(255),no_fantasia varchar(255),no_logradouro varchar(255),nu_endereco int,no_complemento varchar(255),no_bairro varchar(255),co_cep int,co_regiao_saude int,co_micro_regiao int,co_distrito_sanitario int,co_distrito_administrativo int,nu_telefone int,nu_fax int,no_email varchar(255),nu_cpf int,nu_cnpj int,co_atividade int,co_clientela int,nu_alvara int,dt_expedicao timestamp,tp_orgao_expedidor varchar(255),dt_val_lic_sani timestamp,tp_lic_sani varchar(255),tp_unidade varchar(255),co_turno_atendimento int,co_estado_gestor int,co_municipio_gestor int,dt_atualizacao timestamp,co_usuario int,co_cpfdiretorcln int,reg_diretorcln varchar(255),st_adesao_filantrop boolean,co_motivo_desab int,no_url varchar(255),nu_latitude int,nu_longitude int,dt_atu_geo timestamp,no_usuario_geo varchar(255),co_natureza_jur int,tp_estab_sempre_aberto varchar(255),st_geracredito_gerente_sgif boolean,st_conexao_internet boolean,co_tipo_unidade int,no_fantasia_abrev varchar(255),tp_gestao varchar(255),dt_atualizacao_origem timestamp,co_tipo_estabelecimento int,co_atividade_principal int,st_contrato_formalizado boolean
)
;            
ALTER TABLE cnes.tb_estabelecimento ADD 
    CONSTRAINT PK_tb_estabelecimento PRIMARY KEY 
    (
        co_cnes
    )
;            


create table if not exists cnes.tb_equipe (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_unidade int,tp_equipe varchar(255),co_sub_tipo_equipe int,no_referencia varchar(255),dt_ativacao timestamp,dt_desativacao timestamp,tp_pop_assist_quilomb varchar(255),tp_pop_assist_assent varchar(255),tp_pop_assist_geral varchar(255),tp_pop_assist_escola varchar(255),tp_pop_assist_pronasci varchar(255),tp_pop_assist_indigena varchar(255),tp_pop_assist_ribeirinha varchar(255),tp_pop_assist_situacao_rua varchar(255),tp_pop_assist_priv_liberdade varchar(255),tp_pop_assist_conflito_lei varchar(255),tp_pop_assist_adol_conf_lei varchar(255),co_cnes_uom int,nu_ch_amb_uom int,cd_motivo_desativ varchar(255),cd_tp_desativ varchar(255),co_prof_sus_preceptor int,co_cnes_preceptor int,co_equipe int,dt_atualizacao timestamp,no_usuario varchar(255),dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_equipe ADD 
    CONSTRAINT PK_tb_equipe PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_equipe_mun (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_municipio_atend int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_equipe_mun ADD 
    CONSTRAINT PK_rl_estab_equipe_mun PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_polo_base (
    id serial not null,
    co_seq_polo_base int,co_dsei int,co_municipio int,ds_polo_base varchar(255),nu_grau_latitude int,nu_minuto_latitude int,nu_segundo_latitude int,nu_grau_longitude int,nu_minuto_longitude int,nu_segundo_longitude int,ds_bairro varchar(255),ds_endereco varchar(255),nu_cep int,ds_complemento varchar(255),nu_ddd1 int,nu_telefone1 int,nu_ddd2 int,nu_telefone2 int,nu_ddd_fax int,nu_fax int,ds_email varchar(255),dt_inclusao timestamp,dt_extincao timestamp,no_chefe_polo_base varchar(255),ds_email_chefe varchar(255),st_atendimento_saude boolean,st_estrutura_fisica boolean,st_comunicacao_siasi boolean,st_energia_eletrica boolean,st_registro_ativo boolean
)
;            
ALTER TABLE cnes.tb_polo_base ADD 
    CONSTRAINT PK_tb_polo_base PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_orgao_emissor (
    id serial not null,
    co_orgao_emissor int,ds_orgao_emissor varchar(255)
)
;            
ALTER TABLE cnes.tb_orgao_emissor ADD 
    CONSTRAINT PK_tb_orgao_emissor PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_servico_referenciado (
    id serial not null,
    co_tipo_servico_referenciado int,tp_tipo_servico_referenciado varchar(255),ds_tipo_servico_referenciado varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_servico_referenciado ADD 
    CONSTRAINT PK_tb_tipo_servico_referenciado PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_atividade (
    id serial not null,
    co_grupo_atividade int,co_atividade int,ds_atividade varchar(255),ds_conceito_atividade varchar(255)
)
;            
ALTER TABLE cnes.tb_atividade ADD 
    CONSTRAINT PK_tb_atividade PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tp_mod_vinculo (
    id serial not null,
    cd_vinculacao varchar(255),tp_vinculo varchar(255),ds_vinculo varchar(255)
)
;            
ALTER TABLE cnes.tb_tp_mod_vinculo ADD 
    CONSTRAINT PK_tb_tp_mod_vinculo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_unidade (
    id serial not null,
    co_tipo_unidade int,ds_tipo_unidade varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_unidade ADD 
    CONSTRAINT PK_tb_tipo_unidade PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_grupo_equipe (
    id serial not null,
    co_grupo_equipe int,no_grupo_equipe varchar(255)
)
;            
ALTER TABLE cnes.tb_grupo_equipe ADD 
    CONSTRAINT PK_tb_grupo_equipe PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_estab_contrato (
    id serial not null,
    co_unidade int,seq_contrato varchar(255),no_referencia varchar(255),co_tipo_contr int,tp_gestao_contr varchar(255),nu_doc_portaria int,dt_vigencia_inicial timestamp,dt_vigencia_final timestamp,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_estab_contrato ADD 
    CONSTRAINT PK_tb_estab_contrato PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_sub_tp_mod_vinculo (
    id serial not null,
    cd_vinculacao varchar(255),tp_vinculo varchar(255),tp_subvinculo varchar(255),ds_subvinculo varchar(255),tp_categoria varchar(255),ds_conceito varchar(255)
)
;            
ALTER TABLE cnes.tb_sub_tp_mod_vinculo ADD 
    CONSTRAINT PK_tb_sub_tp_mod_vinculo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_atividade_ensino (
    id serial not null,
    co_atividade int,ds_atividade varchar(255)
)
;            
ALTER TABLE cnes.tb_atividade_ensino ADD 
    CONSTRAINT PK_tb_atividade_ensino PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_classificacao_servico (
    id serial not null,
    co_classificacao_servico int,co_servico_especializado int,ds_classificacao_servico varchar(255)
)
;            
ALTER TABLE cnes.tb_classificacao_servico ADD 
    CONSTRAINT PK_tb_classificacao_servico PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_avaliacao (
    id serial not null,
    co_avaliacao int,ds_avaliacao varchar(255)
)
;            
ALTER TABLE cnes.tb_avaliacao ADD 
    CONSTRAINT PK_tb_avaliacao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_tele_cnes (
    id serial not null,
    co_unidade int,co_cnes int,no_fantasia varchar(255),co_municipio int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_tele_cnes ADD 
    CONSTRAINT PK_rl_estab_tele_cnes PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_subtipo_instalacao (
    id serial not null,
    co_subtipo_instalacao int,ds_subtipo_instalacao varchar(255)
)
;            
ALTER TABLE cnes.tb_subtipo_instalacao ADD 
    CONSTRAINT PK_tb_subtipo_instalacao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_municipio (
    id serial not null,
    co_municipio int,no_municipio varchar(255),co_sigla_estado int,tp_cadastro varchar(255),tp_pacto varchar(255),tp_envia varchar(255),tp_envia_cnes varchar(255),tp_cib_sas varchar(255),tp_pleno_origem varchar(255),tp_mac varchar(255),nu_populacao int,nu_densidade int,cmtp_inicio_mac varchar(255)
)
;            
ALTER TABLE cnes.tb_municipio ADD 
    CONSTRAINT PK_tb_municipio PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_estabelecimento (
    id serial not null,
    co_tipo_estabelecimento int,ds_tipo_estabelecimento varchar(255),ds_conceito_tipo varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_estabelecimento ADD 
    CONSTRAINT PK_tb_tipo_estabelecimento PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_equipe_nasf_esf (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_municipio_esf int,co_area_esf int,seq_equipe_esf varchar(255),nu_sequencial int,co_unidade int,tp_equipe_esf varchar(255),co_cnes_esf int,no_fantasia_esf varchar(255),co_segmento_esf int,ds_segmento_esf varchar(255),ds_area_esf varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_equipe_nasf_esf ADD 
    CONSTRAINT PK_rl_equipe_nasf_esf PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_equipamento (
    id serial not null,
    co_equipamento int,co_tipo_equipamento int,ds_equipamento varchar(255)
)
;            
ALTER TABLE cnes.tb_equipamento ADD 
    CONSTRAINT PK_tb_equipamento PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_instal_fisica_para_assist (
    id serial not null,
    co_instalacao int,co_subtipo_instalacao int,ds_instalacao varchar(255),tp_instalacao varchar(255)
)
;            
ALTER TABLE cnes.tb_instal_fisica_para_assist ADD 
    CONSTRAINT PK_tb_instal_fisica_para_assist PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_coleta_sel_rejeito (
    id serial not null,
    co_unidade int,co_coleta_rejeito int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_coleta_sel_rejeito ADD 
    CONSTRAINT PK_rl_estab_coleta_sel_rejeito PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_fluxo_dados_clientela (
    id serial not null,
    co_clientela int,ds_clientela varchar(255)
)
;            
ALTER TABLE cnes.tb_fluxo_dados_clientela ADD 
    CONSTRAINT PK_tb_fluxo_dados_clientela PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_end_compl (
    id serial not null,
    co_unidade int,co_end_compl int,no_identificacao varchar(255),tp_logr varchar(255),no_logradouro varchar(255),nu_endereco int,no_complemento varchar(255),no_bairro varchar(255),co_cep int,co_municipio int,no_ddd_tel varchar(255),nu_telefone int,no_ddd_fax varchar(255),nu_fax int,no_email varchar(255),dt_ativacao timestamp,dt_desativacao timestamp,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_end_compl ADD 
    CONSTRAINT PK_rl_estab_end_compl PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_dados_profissional_sus (
    id serial not null,
    co_profissional_sus int,co_cpf int,no_profissional varchar(255),co_cns int,dt_atualizacao timestamp,co_usuario int,st_nmprof_cadsus boolean,co_nacionalidade int,co_seq_inclusao int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_dados_profissional_sus ADD 
    CONSTRAINT PK_tb_dados_profissional_sus PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_incentivos (
    id serial not null,
    co_municipio int,tp_incentivo varchar(255),co_incentivo int,dt_portaria timestamp,nu_portaria int,cmtp_inicio varchar(255),cmtp_fim varchar(255),dt_inclusao timestamp,dt_hora_inclusao timestamp,nu_cpf int,co_gestor int,tp_operacao varchar(255)
)
;            
ALTER TABLE cnes.tb_incentivos ADD 
    CONSTRAINT PK_tb_incentivos PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_serv_class (
    id serial not null,
    co_unidade int,co_servico int,co_classificacao int,tp_caracteristica varchar(255),co_cnpjcpf int,co_ambulatorial int,co_ambulatorial_sus int,co_hospitalar int,co_hospitalar_sus int,co_end_compl int,st_ativo_sn boolean,dt_atualizacao timestamp,co_usuario int
)
;            
ALTER TABLE cnes.rl_estab_serv_class ADD 
    CONSTRAINT PK_rl_estab_serv_class PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_segmento (
    id serial not null,
    co_municipio int,co_segmento int,ds_segmento varchar(255),tp_segmento varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_segmento ADD 
    CONSTRAINT PK_tb_segmento PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_inst_fisi_assist (
    id serial not null,
    co_unidade int,co_instalacao int,qt_instalacao varchar(255),nu_leitos int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_inst_fisi_assist ADD 
    CONSTRAINT PK_rl_estab_inst_fisi_assist PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_adm_gerencia_cnes (
    id serial not null,
    nu_cnpj_adm int,co_unidade int,dt_vigencia_inicial timestamp,dt_vigencia_final timestamp,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_adm_gerencia_cnes ADD 
    CONSTRAINT PK_rl_adm_gerencia_cnes PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_estab_horario_atend (
    id serial not null,
    co_unidade int,co_dia_semana int,hr_inicio_atendimento varchar(255),hr_fim_atendimento varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_estab_horario_atend ADD 
    CONSTRAINT PK_tb_estab_horario_atend PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_dialise (
    id serial not null,
    co_unidade int,qt_sala_hbsag_pos varchar(255),qt_sala_hbsag_neg varchar(255),qt_sala_dpi varchar(255),qt_sala_dpac varchar(255),qt_sala_reag_pos varchar(255),qt_sala_reag_neg varchar(255),qt_sala_rehcv varchar(255),nu_maqh_prop int,nu_maqh_outr int,co_nefro_responsavel int,co_cpf_nefro int,co_cpf_diretor int,no_diretor_responsavel varchar(255),tp_filtro_areia varchar(255),tp_filtro_carvao varchar(255),tp_abrandador varchar(255),tp_deoinizador varchar(255),tp_osmose_reversa varchar(255),tp_outros_trat_agua varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_dialise ADD 
    CONSTRAINT PK_tb_dialise PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_complementar (
    id serial not null,
    co_unidade int,co_leito int,co_tipo_leito int,tp_altacomp varchar(255),qt_exist varchar(255),qt_contr varchar(255),qt_sus varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_complementar ADD 
    CONSTRAINT PK_rl_estab_complementar PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_servico_referenciado (
    id serial not null,
    co_unidade int,co_servico_referenciado int,tp_servico_referenciado varchar(255),co_cnpj int,no_razao_social varchar(255),co_municipio int,co_usuario int,dt_atualizacao timestamp,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_servico_referenciado ADD 
    CONSTRAINT PK_tb_servico_referenciado PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_mod_vinculo (
    id serial not null,
    cd_vinculacao varchar(255),ds_vinculacao varchar(255)
)
;            
ALTER TABLE cnes.tb_mod_vinculo ADD 
    CONSTRAINT PK_tb_mod_vinculo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_estado (    
    co_uf int not null,
    co_sigla int,
    no_descricao varchar(255)
)
;            
ALTER TABLE cnes.tb_estado ADD 
    CONSTRAINT PK_tb_estado PRIMARY KEY 
    (
        co_uf
    )
;            


create table if not exists cnes.rl_estab_avaliacao (
    id serial not null,
    co_unidade int,co_avaliacao int,co_classificacao int,dt_avaliacao timestamp,co_instituicao_avaliadora int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_avaliacao ADD 
    CONSTRAINT PK_rl_estab_avaliacao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_mun_unid_acolhim (
    id serial not null,
    co_unidade int,sq_acolhimento varchar(255),co_municipio int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_mun_unid_acolhim ADD 
    CONSTRAINT PK_rl_mun_unid_acolhim PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_etnia (
    id serial not null,
    co_etnia int,ds_etnia varchar(255)
)
;            
ALTER TABLE cnes.tb_etnia ADD 
    CONSTRAINT PK_tb_etnia PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_motivo_desativacao (
    id serial not null,
    cd_motivo_desab varchar(255),ds_motivo_desab varchar(255)
)
;            
ALTER TABLE cnes.tb_motivo_desativacao ADD 
    CONSTRAINT PK_tb_motivo_desativacao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_atividade_profissional (
    id serial not null,
    co_cbo int,ds_atividade_profissional varchar(255),tp_classificacao_profissional varchar(255),tp_cbo_saude varchar(255),st_cbo_regulamentado boolean,no_ano_cmpt varchar(255)
)
;            
ALTER TABLE cnes.tb_atividade_profissional ADD 
    CONSTRAINT PK_tb_atividade_profissional PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_motivo_desativ_equipe (
    id serial not null,
    co_motivo_desativ int,ds_motivo_desativ varchar(255)
)
;            
ALTER TABLE cnes.tb_motivo_desativ_equipe ADD 
    CONSTRAINT PK_tb_motivo_desativ_equipe PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_instalacao_fisica (
    id serial not null,
    co_tipo_instalacao_fisica int,ds_tipo_instalacao_fisica varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_instalacao_fisica ADD 
    CONSTRAINT PK_tb_tipo_instalacao_fisica PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_servico_especializado (
    id serial not null,
    co_servico_especializado int,ds_servico_especializado varchar(255)
)
;            
ALTER TABLE cnes.tb_servico_especializado ADD 
    CONSTRAINT PK_tb_servico_especializado PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_certidao (
    id serial not null,
    co_tipo_certidao int,ds_tipo_certidao varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_certidao ADD 
    CONSTRAINT PK_tb_tipo_certidao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_equipamento (
    id serial not null,
    co_unidade int,co_equipamento int,co_tipo_equipamento int,qt_existente varchar(255),qt_uso varchar(255),tp_sus varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_equipamento ADD 
    CONSTRAINT PK_rl_estab_equipamento PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_central_reg (
    id serial not null,
    co_unidade int,co_seq_central int,no_central varchar(255),co_subtipo_central int,co_tipo_logradouro int,no_logradouro varchar(255),nu_numero int,no_complemento varchar(255),no_bairro varchar(255),co_cep int,co_municipio_end int,nu_ddd_tel int,nu_telefone int,nu_ddd_fax int,nu_fax int,no_url varchar(255),no_e_mail varchar(255),dt_ativacao timestamp,dt_desativacao timestamp,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_central_reg ADD 
    CONSTRAINT PK_rl_estab_central_reg PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_mun_regime_res (
    id serial not null,
    co_unidade int,co_municipio int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_mun_regime_res ADD 
    CONSTRAINT PK_rl_mun_regime_res PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_conselho_classe (
    id serial not null,
    co_conselho_classe int,ds_conselho_classe varchar(255)
)
;            
ALTER TABLE cnes.tb_conselho_classe ADD 
    CONSTRAINT PK_tb_conselho_classe PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_classificacao_aval (
    id serial not null,
    co_avaliacao int,co_classificacao int,ds_classificacao varchar(255)
)
;            
ALTER TABLE cnes.tb_classificacao_aval ADD 
    CONSTRAINT PK_tb_classificacao_aval PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_atributo (
    id serial not null,
    co_indicador int,co_atributo int,ds_atributo varchar(255)
)
;            
ALTER TABLE cnes.tb_atributo ADD 
    CONSTRAINT PK_tb_atributo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_prof_residencia (
    id serial not null,
    co_unidade int,nu_residencia int,co_profissional_sus int,co_cbo int,ind_vinculacao varchar(255),tp_sus_nao_sus varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_prof_residencia ADD 
    CONSTRAINT PK_tb_prof_residencia PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_hemoterapia (
    id serial not null,
    co_unidade int,nu_srecepcad int,nu_striaghmt int,nu_striagcln int,nu_scoleta int,nu_saferese int,nu_sprestoq int,nu_sproces int,nu_sestoque int,nu_sdistrib int,nu_sorologia int,nu_simunohem int,nu_spretranf int,nu_shemostas int,nu_scontrolq int,nu_sbiomolec int,nu_simunfen int,nu_stransfus int,nu_ssgdoador int,qt_ecadrecli varchar(255),qt_ecentrefr varchar(255),qt_erfguasng varchar(255),qt_econgrapd varchar(255),qt_eextaplsm varchar(255),qt_efreez18 varchar(255),qt_efreez30 varchar(255),qt_eagitplqt varchar(255),qt_eseladora varchar(255),qt_eirradhem varchar(255),qt_eagltnosc varchar(255),qt_emaqafres varchar(255),qt_erfgareag varchar(255),qt_erfgamsts varchar(255),qt_ecapfllam varchar(255),no_rhemot varchar(255),no_rhemat varchar(255),no_retecso varchar(255),no_mrcapac varchar(255),co_cpfmrhemot int,co_cpfmrhemat int,co_cpfmrtecso int,co_cpfmcapac int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_hemoterapia ADD 
    CONSTRAINT PK_tb_hemoterapia PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_sipac (
    id serial not null,
    co_unidade int,cod_sub_grupo_habilitacao varchar(255),cmtp_inicio varchar(255),cmtp_fim varchar(255),nu_leitos int,no_portaria varchar(255),dt_atualizacao timestamp,co_usuario int,tp_habilitacao varchar(255)
)
;            
ALTER TABLE cnes.rl_estab_sipac ADD 
    CONSTRAINT PK_rl_estab_sipac PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_sub_tipo_equipe (
    id serial not null,
    co_sub_tipo_equipe int,ds_sub_tipo_equipe varchar(255)
)
;            
ALTER TABLE cnes.tb_sub_tipo_equipe ADD 
    CONSTRAINT PK_tb_sub_tipo_equipe PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_atendimento_prestado (
    id serial not null,
    co_atendimento_prestado int,ds_atendimento_prestado varchar(255)
)
;            
ALTER TABLE cnes.tb_atendimento_prestado ADD 
    CONSTRAINT PK_tb_atendimento_prestado PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_aldeia (
    id serial not null,
    co_seq_aldeia int,co_polo_base int,co_municipio_ibge int,co_tipo_terra int,co_tipo_area int,co_escritorio_local int,no_aldeia varchar(255),nu_cep int,dt_inclusao timestamp,dt_extincao timestamp,co_terra_indigena int,nu_grau_latitude int,nu_minuto_latitude int,nu_segundo_latitude int,nu_grau_longitude int,nu_minuto_longitude int,nu_segundo_longitude int,nu_ano_contato_indigena int,st_registro_ativo boolean,co_aldeia_siasi3 int
)
;            
ALTER TABLE cnes.tb_aldeia ADD 
    CONSTRAINT PK_tb_aldeia PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_equipe_ch_difer (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_profissional_sus int,tp_chdifer varchar(255),seq_chdifer varchar(255),cnes_chdifer varchar(255),cghoraoutr varchar(255),data_atu varchar(255),co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_equipe_ch_difer ADD 
    CONSTRAINT PK_tb_equipe_ch_difer PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_eq_sub_tipo (
    id serial not null,
    tp_equipe varchar(255),co_sub_tipo_equipe int
)
;            
ALTER TABLE cnes.tb_tipo_eq_sub_tipo ADD 
    CONSTRAINT PK_tb_tipo_eq_sub_tipo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_sub_tipo (
    id serial not null,
    co_tipo_unidade int,co_sub_tipo int,ds_sub_tipo varchar(255)
)
;            
ALTER TABLE cnes.tb_sub_tipo ADD 
    CONSTRAINT PK_tb_sub_tipo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_mun_aten_psico (
    id serial not null,
    co_unidade int,co_municipio int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_mun_aten_psico ADD 
    CONSTRAINT PK_rl_mun_aten_psico PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_gestao (
    id serial not null,
    co_gestao int,ds_gestao varchar(255),tp_prog varchar(255)
)
;            
ALTER TABLE cnes.tb_gestao ADD 
    CONSTRAINT PK_tb_gestao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_aten_psico (
    id serial not null,
    co_unidade int,tp_estrutura varchar(255),st_parceria_ong boolean,nu_cnpj_ong int,nu_vagas_acol_notur int,co_profissional_sus int,co_cbo int,tp_sus_nao_sus varchar(255),ind_vinculacao varchar(255),co_cnes_referencia int,st_unidade_regional boolean,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_aten_psico ADD 
    CONSTRAINT PK_rl_estab_aten_psico PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_area (
    id serial not null,
    co_municipio int,co_area int,ds_area varchar(255),cd_segmento varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_area ADD 
    CONSTRAINT PK_tb_area PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_estab_ativ_secundaria (
    id serial not null,
    co_unidade int,co_atividade_secundaria int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_estab_ativ_secundaria ADD 
    CONSTRAINT PK_tb_estab_ativ_secundaria PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_servico_apoio (
    id serial not null,
    co_servico_apoio int,ds_servico_apoio varchar(255)
)
;            
ALTER TABLE cnes.tb_servico_apoio ADD 
    CONSTRAINT PK_tb_servico_apoio PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_equipe_aldeia (
    id serial not null,
    co_municipio int,co_area int,co_seq_equipe int,co_aldeia int,co_unidade int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_equipe_aldeia ADD 
    CONSTRAINT PK_rl_equipe_aldeia PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_equipe_atend_compl (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_profissional_sus int,co_cnes_atendcomp int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_equipe_atend_compl ADD 
    CONSTRAINT PK_tb_equipe_atend_compl PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_convenio (
    id serial not null,
    co_convenio int,ds_convenio varchar(255)
)
;            
ALTER TABLE cnes.tb_convenio ADD 
    CONSTRAINT PK_tb_convenio PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_equipe (
    id serial not null,
    tp_equipe varchar(255),ds_equipe varchar(255),co_grupo_equipe int
)
;            
ALTER TABLE cnes.tb_tipo_equipe ADD 
    CONSTRAINT PK_tb_tipo_equipe PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_prof_comissao (
    id serial not null,
    co_unidade int,co_comissao int,co_profissional_sus int,co_cbo int,tp_sus_nao_sus varchar(255),tp_vinculacao varchar(255),st_resp_tecnico boolean,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_prof_comissao ADD 
    CONSTRAINT PK_rl_estab_prof_comissao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_quimio_radio (
    id serial not null,
    co_unidade int,nu_salarsimu int,nu_salarplan int,co_cpfmedradm int,co_cpfmroncpd int,co_cpfmrciron int,co_cpfmr_rad int,co_cpfmr_fis int,nu_slararmfo int,nu_slarconfm int,nu_slarmolde int,nu_slarbolcp int,nu_slaqarmaz int,nu_slaqprepa int,nu_slaqcdura int,nu_slaqldura int,nu_slacpflul int,qt_eqrsimula varchar(255),qt_eqracell6 varchar(255),qt_eqr_6seme varchar(255),qt_eqr_6come varchar(255),qt_rortv1050 varchar(255),qt_rorv50150 varchar(255),qt_rov150500 varchar(255),qt_runidcoba varchar(255),qt_eqrbrbaix varchar(255),qt_eqrbrmedi varchar(255),qt_eqrbralta varchar(255),qt_eqrmonita varchar(255),qt_eqrmoniti varchar(255),qt_eqrsispln varchar(255),qt_eqrdoscli varchar(255),qt_eqrfonsel varchar(255),no_medradm varchar(255),no_mroncpd varchar(255),no_mrciron varchar(255),no_mr_rad varchar(255),no_mrfis varchar(255),co_cpfmronc int,no_mronc varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_quimio_radio ADD 
    CONSTRAINT PK_tb_quimio_radio PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_atend_prest_conv (
    id serial not null,
    co_unidade int,co_atendimento_prestado int,co_convenio int,co_usuario int,dt_atualizacao timestamp,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_atend_prest_conv ADD 
    CONSTRAINT PK_rl_estab_atend_prest_conv PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_sub_grupos_habilitacao (
    id serial not null,
    co_codigo_grupo int,no_descricao_grupo varchar(255),tp_origem varchar(255),tp_habilitacao varchar(255)
)
;            
ALTER TABLE cnes.tb_sub_grupos_habilitacao ADD 
    CONSTRAINT PK_tb_sub_grupos_habilitacao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_nasf_esf (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_cnes int,co_unidade int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_nasf_esf ADD 
    CONSTRAINT PK_rl_nasf_esf PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_coleta_seletiva_rejeito (
    id serial not null,
    co_coleta_rejeito int,ds_coleta_rejeito varchar(255)
)
;            
ALTER TABLE cnes.tb_coleta_seletiva_rejeito ADD 
    CONSTRAINT PK_tb_coleta_seletiva_rejeito PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_mantenedora (
    id serial not null,
    nu_cnpj_mantenedora int,co_banco int,nu_agencia int,nu_conta_corrente int,no_razao_social varchar(255),no_logradouro varchar(255),nu_endereco int,no_complemento varchar(255),no_bairro varchar(255),co_cep int,co_municipio int,co_regiao_saude int,nu_telefone int,dt_preenchimento timestamp,st_fms_fes boolean,nu_cnpj_fms_fes int,co_natureza_jur int,dt_atualizacao timestamp,co_usuario int,co_gestor int,co_municipio_mant int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_mantenedora ADD 
    CONSTRAINT PK_tb_mantenedora PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_cg_difer (
    id serial not null,
    tp_chdifer varchar(255),ds_chdifer varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_cg_difer ADD 
    CONSTRAINT PK_tb_tipo_cg_difer PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_representante (
    id serial not null,
    co_unidade int,co_cpf int,no_representante varchar(255),ds_cargo varchar(255),ds_e_mail varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_representante ADD 
    CONSTRAINT PK_rl_estab_representante PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_polo_aldeia (
    id serial not null,
    co_unidade int,co_aldeia int,co_polobase int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp,co_dsei int
)
;            
ALTER TABLE cnes.rl_estab_polo_aldeia ADD 
    CONSTRAINT PK_rl_estab_polo_aldeia PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_eqp_unid_apoio (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_endereco_complementar int,co_unidade int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_eqp_unid_apoio ADD 
    CONSTRAINT PK_rl_estab_eqp_unid_apoio PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_escolaridade (
    id serial not null,
    co_escolaridade int,ds_escolaridade varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_escolaridade ADD 
    CONSTRAINT PK_tb_tipo_escolaridade PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_turno_atendimento (
    id serial not null,
    co_turno_atendimento int,ds_turno_atendimento varchar(255)
)
;            
ALTER TABLE cnes.tb_turno_atendimento ADD 
    CONSTRAINT PK_tb_turno_atendimento PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_samu (
    id serial not null,
    co_unidade int,dt_ativacao timestamp,co_unidade_central int,co_seq_central int,co_placa int,nu_chassi int,co_prefixo_aeronave int,nu_embarca_marinha int,dt_desativacao timestamp,co_desativacao int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_samu ADD 
    CONSTRAINT PK_rl_estab_samu PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_tipo_equipamento (
    id serial not null,
    co_tipo_equipamento int,ds_tipo_equipamento varchar(255)
)
;            
ALTER TABLE cnes.tb_tipo_equipamento ADD 
    CONSTRAINT PK_tb_tipo_equipamento PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_sub_tipo (
    id serial not null,
    co_unidade int,co_tipo_unidade int,co_sub_tipo_unidade int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_sub_tipo ADD 
    CONSTRAINT PK_rl_estab_sub_tipo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_eqp_embarcacao (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),nu_embarcacao int,no_embarcacao varchar(255),ds_comunidade_atendida varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_eqp_embarcacao ADD 
    CONSTRAINT PK_rl_estab_eqp_embarcacao PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_comissao_outro (
    id serial not null,
    co_comissao int,ds_comissao varchar(255)
)
;            
ALTER TABLE cnes.tb_comissao_outro ADD 
    CONSTRAINT PK_tb_comissao_outro PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_tipo_estab_atividade (
    id serial not null,
    co_tipo_estabelecimento int,co_atividade int
)
;            
ALTER TABLE cnes.rl_tipo_estab_atividade ADD 
    CONSTRAINT PK_rl_tipo_estab_atividade PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_atividade_obrigatoria (
    id serial not null,
    co_tipo_estabelecimento int,co_atividade_obrigatoria int
)
;            
ALTER TABLE cnes.rl_atividade_obrigatoria ADD 
    CONSTRAINT PK_rl_atividade_obrigatoria PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_grupo_atividade (
    id serial not null,
    co_grupo_atividade int,ds_grupo_atividade varchar(255)
)
;            
ALTER TABLE cnes.tb_grupo_atividade ADD 
    CONSTRAINT PK_tb_grupo_atividade PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_residencia_med (
    id serial not null,
    co_unidade int,sq_residencia varchar(255),nu_residencia int,no_referencia varchar(255),no_logradouro varchar(255),ds_complemento varchar(255),nu_logradouro int,no_bairro varchar(255),co_municipio int,co_cep int,co_ddd int,nu_telefone int,tp_srt varchar(255),nu_cuidadores int,nu_capacidade_masc int,nu_capacidade_fem int,co_profissional_sus int,co_cbo int,tp_sus_nao_sus varchar(255),ind_vinculacao varchar(255),dt_ativacao timestamp,dt_desativacao timestamp,st_parceria_ong boolean,nu_cnpj_ong int,dt_atualizacao timestamp,no_usuario varchar(255),dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.tb_residencia_med ADD 
    CONSTRAINT PK_tb_residencia_med PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_unid_acolhim (
    id serial not null,
    co_unidade int,sq_acolhimento varchar(255),no_acolhimento varchar(255),nu_acolhimento int,tp_acolhimento varchar(255),no_logradouro varchar(255),ds_complemento varchar(255),nu_logradouro int,no_bairro varchar(255),co_municipio int,co_cep int,co_ddd int,nu_telefone int,tp_estrutura varchar(255),st_parceria_ong boolean,nu_cnpj_ong int,nu_vagas int,co_profissional_sus int,co_cbo int,tp_sus_nao_sus varchar(255),ind_vinculacao varchar(255),dt_ativacao timestamp,dt_desativacao timestamp,co_cnes_referencia int,st_unidade_regional boolean,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_unid_acolhim ADD 
    CONSTRAINT PK_rl_estab_unid_acolhim PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_servico_apoio (
    id serial not null,
    co_unidade int,co_servico_apoio int,co_caracteristica int,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_servico_apoio ADD 
    CONSTRAINT PK_rl_estab_servico_apoio PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_instituicao_avaliadora (
    id serial not null,
    co_instituicao_avaliadora int,ds_instituicao_avaliadora varchar(255)
)
;            
ALTER TABLE cnes.tb_instituicao_avaliadora ADD 
    CONSTRAINT PK_tb_instituicao_avaliadora PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_comissao_outro (
    id serial not null,
    co_unidade int,co_comissao int,dt_ativacao timestamp,dt_desativacao timestamp,dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_comissao_outro ADD 
    CONSTRAINT PK_rl_estab_comissao_outro PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_prog_fundo (
    id serial not null,
    co_unidade int,co_atividade int,tp_estadual_municipal varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_prog_fundo ADD 
    CONSTRAINT PK_rl_estab_prog_fundo PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_cooperativa (
    id serial not null,
    co_unidade int,co_cooperativa int,co_cbo int,co_usuario int,dt_atualizacao timestamp,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_cooperativa ADD 
    CONSTRAINT PK_rl_cooperativa PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_org_parc (
    id serial not null,
    co_unidade int,co_org_parceira int,no_org_parceira varchar(255),nu_cnpj int,co_cnes int,co_tipo_logradouro int,no_logradouro varchar(255),nu_numero int,no_complemento varchar(255),no_bairro varchar(255),co_cep int,co_municipio_end int,nu_ddd_tel int,nu_telefone int,nu_ddd_fax int,nu_fax int,no_url varchar(255),no_e_mail varchar(255),dt_atualizacao timestamp,co_usuario int,dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_org_parc ADD 
    CONSTRAINT PK_rl_estab_org_parc PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_natureza_juridica (
    id serial not null,
    co_natureza_jur int,ds_natureza_jur varchar(255)
)
;            
ALTER TABLE cnes.tb_natureza_juridica ADD 
    CONSTRAINT PK_tb_natureza_juridica PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_leito (
    id serial not null,
    co_leito int,ds_leito varchar(255),tp_leito varchar(255)
)
;            
ALTER TABLE cnes.tb_leito ADD 
    CONSTRAINT PK_tb_leito PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.tb_banco (
    id serial not null,
    co_banco int,ds_banco varchar(255)
)
;            
ALTER TABLE cnes.tb_banco ADD 
    CONSTRAINT PK_tb_banco PRIMARY KEY 
    (
        id
    )
;            


create table if not exists cnes.rl_estab_equipe_prof (
    id serial not null,
    co_municipio int,co_area int,seq_equipe varchar(255),co_profissional_sus int,co_unidade int,co_cbo int,tp_sus_nao_sus varchar(255),ind_vinculacao varchar(255),co_microarea int,dt_entrada timestamp,dt_desligamento timestamp,co_cnes_outraequipe int,co_municipio_outraequipe int,co_area_outraequipe int,co_profissional_sus_compl int,co_cbo_ch_compl int,st_equipeminima boolean,co_mun_atuacao int,dt_atualizacao timestamp,no_usuario varchar(255),dt_atualizacao_origem timestamp
)
;            
ALTER TABLE cnes.rl_estab_equipe_prof ADD 
    CONSTRAINT PK_rl_estab_equipe_prof PRIMARY KEY 
    (
        id
    )
;            


ALTER TABLE cnes.tb_estabelecimento ADD 
	CONSTRAINT FK_AbrangenciaArea_AbrangenciaUnidadeSaude FOREIGN KEY 
	(
		co_estado_gestor
	)
	REFERENCES cnes.tb_estado
	(
		co_uf
	)
;

#V3.24f
# ###################################################################
# Roberto : simple_cod.data comes from data.new cod.v8_om
#           F values generated using a R function   
# Roberto : Uncomment bias_correction and 1 # (0/1)
# Roberto : SR_sigmaR should be 0.1 to run. Otherwise, it doesn't run
# Roberto : Check R0= 18 in your AM. It is too high. I got 13.08 in my AM cod.v05
# Roberto : use 3 # F_Method,  4 #N iterations for tuning F and
#            comment the  overall start F value section           
# ###################################################################

#_data_and_control_files: simple_cod.dat // simple_cod.ctl
1 #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
#_Cond 0  #  N recruitment designs goes here if N_GP*nseas*area>1
#_Cond 0  #  placeholder for recruitment interaction request
#_Cond 1 1 1  # example recruitment design element for GP=1, seas=1, area=1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
0 #_Nblock_Patterns
#_Cond 0 #_blocks_per_pattern 
# begin and end years of blocks
#
0.5 #_fracfemale 
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
#_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_speciific_K; 4=not implemented
1 #_Growth_Age_for_L1
999 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
2 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=read fec and wt from wtatage.ss
#_Age_Maturity by growth pattern
# 0 0.01 0.05 0.23 0.62 0.86 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
2 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
1 #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO	HI      INIT        PRIOR       PR     SD     PHASE   env    use     dev     dev     dev    Block   Block
#                                      type                   var    dev    minyr   maxyr  stddev          Fxn
0.01    1.8     0.2         0.1         -1     0.8     -3      0	0	0	0	0	0	0	# NatM_p_1_Fem_GP_1 
10      80      20          30.8        -1     0.2     -2      0	0	0	0	0	0	0	# L_at_Amin_Fem_GP_1
25      250     132.0      120.1       -1      0.2     -5      0	0	0	0	0	0	0	# L_at_Amax_Fem_GP_1
0.01    2       0.2        0.25         -1     0.8     -2      0	0	0	0	0	0	0	# VonBert_K_Fem_GP_1 
-0.01   0.5     0.1         0.1         -1     0.8     -3      0	0	0	0	0	0	0	# CV_young_Fem_GP_1
0.01    0.5     0.1         0.1         -1     0.8     -5      0	0	0	0	0	0	0	# CV_old_Fem_GP_1
0       3   0.0000068   0.0000068       -1       0     -1      0	0	0	0	0	0	0	# Wtlen_1_Fem
2.5     3.5     3.101       3.101       -1     0.2     -3      0	0	0	0	0	0	0	# Wtlen_2_Fem
2.5      35      3.73        3.73       -1     0.8     -3      0	0	0	0	0	0	0	# Mat50%_Fem -  changed because hitting bounds
-3      3       -1.62       -1.62       -1     0.8     -3      0	0	0	0	0	0	0	# Mat_slope_Fem
-3      3       1           1           -1     0.8     -3      0	0	0	0	0	0	0	# Eggs/kg_inter_Fem
-3      4       0           0           -1     0.8     -3      0	0	0	0	0	0	0	# Eggs/kg_slope_wt_Fem
-4      4       0           0           -1     0       -4      0	0	0	0	0	0	0	# RecrDist_GP_1
-4      4       0           0           -1     0       -4      0	0	0	0	0	0	0	# RecrDist_Area_1
-4      4       0           0           -1     0       -4      0	0	0	0	0	0	0	# RecrDist_Seas_1
-4      4       0           0           -1     0       -4      0	0	0	0	0	0	0	# CohortGrowDev
#_Cond 0  #custom_MG-env_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-environ parameters
#
#_Cond 0  #custom_MG-block_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-block parameters
#_Cond No MG parm trends 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm
#_LO	HI  INIT        PRIOR  PR_type  SD      PHASE
  10    20  18.70588    10.3   -1       10      1     # SR_LN(R0)
  0.2   1   0.650159    0.7     1       0.05    4     # SR_BH_steep
  0     2   0.1        0.8    -1       0.8     -5     # SR_sigmaR
 -5     5   0           0      -1       1       -3    # SR_envlink
 -5     5   0           0      -1       1       -4    # SR_R1_offset
  0     0   0           0      -1       0       -99   # SR_autocorr
0  #_SR_env_link
0  #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1  #do_recdev:  0=none; 1=devvector; 2=simple deviations
1914 # first year of main recr_devs; early devs can preceed this era - ##### NOTE: May need to be changed
1950 # last year of main recr_devs; forecast devs start in following year - ##### NOTE: May need to be changed
2  #_recdev phase 
1    # (0/1) to read 13 advanced options
0    #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-4   #_recdev_early_phase
0    #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1    #_lambda for Fcast_recr_like occurring before endyr+1
1949 #_last_early_yr_nobias_adj_in_MPD
1982 #_first_yr_fullbias_adj_in_MPD
2009 #_last_yr_fullbias_adj_in_MPD
2010 #_first_recent_yr_nobias_adj_in_MPD
0.85 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs) - 
0    #_period of cycles in recruitment (N parms read below)
-5   #min rec_dev
5    #max rec_dev
0    #_read_recdevs

#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#
#Fishing Mortality info 
0.3 # F ballpark for tuning early phases
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
2.9 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
#0.4 1 0 # overall start F value; overall phase; N detailed inputs to read
#Fleet  Year   Seas    F_value  SE     Phase
4 #N iterations for tuning F in hybrid method (recommend 3 to 7)

#_initial_F_parms
#_LO  HI  INIT   PRIOR  PR_type   SD  PHASE
   0  2   0.087  0.01     0       99   -1    # InitF_1Fishery

#_Q_setup
# Q_type options:  <0=mirror, 0=float_nobiasadj, 1=float_biasadj, 2=parm_nobiasadj, 3=parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_assign_to_parm
#_for_env-var:_enter_index_of_the_env-var_to_be_linked
#_Den-dep  env-var  extra_se  Q_type
0 0 0 0 # 1 FISHERY
0 0 0 0 # 2 SURVEY
0 0 0 0 # 3 CPUE

#_Cond 0 #_If q has random component, then 0=read one parm for each fleet with random q; 1=read a parm for each year of index
#_Q_parms(if_any)
#LO	HI    INIT    PRIOR	PR_type   SD	PHASE
# 0    0.9   0.1006   0.01     -1         99     3  # Q_extraSD_2_SURVEY
# 0    0.9   0.10     0.01      1         99     3  # Q_extraSD_3_RecruitSvy
#-25     5    -9.485150   -10       -1        10     1  # LnQ_base_2_SURVEY
#-25     5    -9.745190      10       -1        10     1  # LnQ_base_3_RecruitSvy

#_size_selex_types
#discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead
#_Pattern Discard Male Special
1 0 0 0 # 1 FISHERY
1 0 0 0 # 2 SURVEY
15 0 0 1 # 3 CPUE - Mirrors Fishery


#_age_selex_types
#_Pattern ___ Male Special
10 0 0 0  # 1 Fishery - NOTE: Changed to logistic (12) for OM (20 - DOUBLE NORMAL)
10 0 0 0  # 2 SURVEY
15 0 0 1  # 3 CPUE - Mirrors Fishery

#CURRY: addd in param starts for size sel from maturity sched
#_LO    HI      INIT      PRIOR     PR          SD    PHASE   env     use    dev     dev     dev    Block   Block - NOTE: Transtitioned to age-specific selectivity
20      150     60        0         -1          99    1      0       0      0       0       0	0	0	# SizeSel_1P_1_Fishery
0       300     30        0         -1          99    1      0       0      0       0       0	0	0	# SizeSel_1P_2_Fishery  
20      150     48        0         -1          99    1      0       0      0       0       0	0	0	# SizeSel_2P_1_SURVEY  - 0.8*size at 50% selectivity from fishery -decided in class
0       300     30        0         -1          99    1      0       0      0       0       0	0	0	# SizeSel_2P_2_SURVEY 

#_LO    HI      INIT      PRIOR     PR          SD    PHASE   env     use    dev     dev     dev    Block   Block - NOTE: Transtitioned to age-specific selectivity
#                                  type                      var     dev    minyr   maxyr  stddev           Fxn
#0       16      3.73        0       -1          99      2     0	0	0	0	0.5	0	0	# AgeSel_1P_1_Fishery	
#-15     10      1.62        0       -1          99      2     0	0	0	0	0.5	0	0	# AgeSel_1P_2_Fishery	
#-15     10      -4          0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_1P_3_Fishery	
#-10     10      2           0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_1P_4_Fishery
#-10     5       -2          0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_1P_5_Fishery
#-10     5       -4          0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_1P_6_Fishery

#0       16      3.73        0       -1          99      2     0	0	0	0	0.5	0	0	# AgeSel_2P_1_SURVEY	
#-10     10      1.62        0       -1          99      2     0	0	0	0	0.5	0	0	# AgeSel_2P_2_SURVEY	
#-10     10      1           0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_2P_3_SURVEY	
#-10     10      2           0       -1          99      1     0	0	0	0	0.5	0	0   # AgeSel_2P_4_SURVEY	
#-10     5       -2          0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_2P_5_SURVEY	
#-10     5       -4          0       -1          99      1     0	0	0	0	0.5	0	0	# AgeSel_2P_6_SURVEY	

#_Cond 0 #_custom_sel-env_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no enviro fxns
#_Cond 0 #_custom_sel-blk_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no block usage
#_Cond No selex parm trends 
#_Cond -4 # placeholder for selparm_Dev_Phase
#_env/block/dev_adjust_method (1=standard; 2=logistic trans to keep in base parm bounds; 3=standard w/ no bound check)
#

# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
1 #_Variance_adjustments_to_input_values
#_fleet: 1 2 3 
0   0    0    #_add_to_survey_CV
0   0    0    #_add_to_discard_stddev
0   0    0    #_add_to_bodywt_CV
1   1    1    #_mult_by_lencomp_N
1   1    1    #_mult_by_agecomp_N
1   1    1    #_mult_by_size-at-age_N\

#
4 #_maxlambdaphase
1 #_sd_offset
#
0 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 
# 9=init_equ_catch; 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin
#like_comp fleet/survey  phase  value  sizefreq_method

# lambdas (for info only; columns are phases)
#  0 0 0 0 #_CPUE/survey:_1
#  1 1 1 1 #_CPUE/survey:_2
#  0 0 0 0 #_CPUE/survey:_3
#  1 1 1 1 #_agecomp:_1
#  1 1 1 1 #_agecomp:_2
#  0 0 0 0 #_agecomp:_3
#  1 1 1 1 #_size-age:_1
#  0 0 0 0 #_size-age:_2
#  0 0 0 0 #_size-age:_3
#  1 1 1 1 #_init_equ_catch
#  1 1 1 1 #_recruitments
#  1 1 1 1 #_parameter-priors
#  1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 #_crashPenLambda

0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999


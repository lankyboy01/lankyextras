local pedsList = {
    "a_f_m_beach_01",
    "a_f_m_bevhills_01",
    "a_f_m_bevhills_02",
    "a_f_m_bodybuild_01",
    "a_f_m_business_02",
    "a_f_m_downtown_01",
    "a_f_m_eastsa_01",
    "a_f_m_eastsa_02",
    "a_f_m_fatbla_01",
    "a_f_m_fatcult_01",
    "a_f_m_fatwhite_01",
    "a_f_m_ktown_01",
    "a_f_m_ktown_02",
    "a_f_m_prolhost_01",
    "a_f_m_salton_01",
    "a_f_m_skidrow_01",
    "a_f_m_soucent_01",
    "a_f_m_soucent_02",
    "a_f_m_soucentmc_01",
    "a_f_m_tourist_01",
    "a_f_m_tramp_01",
    "a_f_m_trampbeac_01",
    "a_f_o_genstreet_01",
    "a_f_o_indian_01",
    "a_f_o_ktown_01",
    "a_f_o_salton_01",
    "a_f_o_soucent_01",
    "a_f_o_soucent_02",
    "a_f_y_beach_01",
    "a_f_y_bevhills_01",
    "a_f_y_bevhills_02",
    "a_f_y_bevhills_03",
    "a_f_y_bevhills_04",
    "a_f_y_business_01",
    "a_f_y_business_02",
    "a_f_y_business_03",
    "a_f_y_business_04",
    "a_f_y_eastsa_01",
    "a_f_y_eastsa_02",
    "a_f_y_eastsa_03",
    "a_f_y_epsilon_01",
    "a_f_y_fitness_01",
    "a_f_y_fitness_02",
    "a_f_y_genhot_01",
    "a_f_y_golfer_01",
    "a_f_y_hiker_01",
    "a_f_y_hippie_01",
    "a_f_y_hipster_01",
    "a_f_y_hipster_02",
    "a_f_y_hipster_03",
    "a_f_y_hipster_04",
    "a_f_y_indian_01",
    "a_f_y_juggalo_01",
    "a_f_y_runner_01",
    "a_f_y_rurmeth_01",
    "a_f_y_scdressy_01",
    "a_f_y_skater_01",
    "a_f_y_soucent_01",
    "a_f_y_soucent_02",
    "a_f_y_soucent_03",
    "a_f_y_tennis_01",
    "a_f_y_topless_01",
    "a_f_y_tourist_01",
    "a_f_y_tourist_02",
    "a_f_y_vinewood_01",
    "a_f_y_vinewood_02",
    "a_f_y_vinewood_03",
    "a_f_y_vinewood_04",
    "a_f_y_yoga_01",
    "a_m_m_acult_01",
    "a_m_m_afriamer_01",
    "a_m_m_beach_01",
    "a_m_m_beach_02",
    "a_m_m_bevhills_01",
    "a_m_m_bevhills_02",
    "a_m_m_business_01",
    "a_m_m_eastsa_01",
    "a_m_m_eastsa_02",
    "a_m_m_farmer_01",
    "a_m_m_fatlatin_01",
    "a_m_m_genfat_01",
    "a_m_m_genfat_02",
    "a_m_m_golfer_01",
    "a_m_m_hasjew_01",
    "a_m_m_hillbilly_01",
    "a_m_m_hillbilly_02",
    "a_m_m_indian_01",
    "a_m_m_ktown_01",
    "a_m_m_malibu_01",
    "a_m_m_mexcntry_01",
    "a_m_m_mexlabor_01",
    "a_m_m_og_boss_01",
    "a_m_m_paparazzi_01",
    "a_m_m_polynesian_01",
    "a_m_m_prolhost_01",
    "a_m_m_rurmeth_01",
    "a_m_m_salton_01",
    "a_m_m_salton_02",
    "a_m_m_salton_03",
    "a_m_m_salton_04",
    "a_m_m_skater_01",
    "a_m_m_skidrow_01",
    "a_m_m_socenlat_01",
    "a_m_m_soucent_01",
    "a_m_m_soucent_02",
    "a_m_m_soucent_03",
    "a_m_m_soucent_04",
    "a_m_m_stlat_02",
    "a_m_m_tennis_01",
    "a_m_m_tourist_01",
    "a_m_m_tramp_01",
    "a_m_m_trampbeac_01",
    "a_m_m_tranvest_01",
    "a_m_m_tranvest_02",
    "a_m_o_acult_01",
    "a_m_o_acult_02",
    "a_m_o_beach_01",
    "a_m_o_genstreet_01",
    "a_m_o_ktown_01",
    "a_m_o_salton_01",
    "a_m_o_soucent_01",
    "a_m_o_soucent_02",
    "a_m_o_soucent_03",
    "a_m_o_tramp_01",
    "a_m_y_acult_01",
    "a_m_y_acult_02",
    "a_m_y_beach_01",
    "a_m_y_beach_02",
    "a_m_y_beach_03",
    "a_m_y_beachvesp_01",
    "a_m_y_beachvesp_02",
    "a_m_y_bevhills_01",
    "a_m_y_bevhills_02",
    "a_m_y_breakdance_01",
    "a_m_y_busicas_01",
    "a_m_y_business_01",
    "a_m_y_business_02",
    "a_m_y_business_03",
    "a_m_y_cyclist_01",
    "a_m_y_dhill_01",
    "a_m_y_downtown_01",
    "a_m_y_eastsa_01",
    "a_m_y_eastsa_02",
    "a_m_y_epsilon_01",
    "a_m_y_epsilon_02",
    "a_m_y_gay_01",
    "a_m_y_gay_02",
    "a_m_y_genstreet_01",
    "a_m_y_genstreet_02",
    "a_m_y_golfer_01",
    "a_m_y_hasjew_01",
    "a_m_y_hiker_01",
    "a_m_y_hippy_01",
    "a_m_y_hipster_01",
    "a_m_y_hipster_02",
    "a_m_y_hipster_03",
    "a_m_y_indian_01",
    "a_m_y_jetski_01",
    "a_m_y_juggalo_01",
    "a_m_y_ktown_01",
    "a_m_y_ktown_02",
    "a_m_y_latino_01",
    "a_m_y_methhead_01",
    "a_m_y_mexthug_01",
    "a_m_y_motox_01",
    "a_m_y_motox_02",
    "a_m_y_musclbeac_01",
    "a_m_y_musclbeac_02",
    "a_m_y_polynesian_01",
    "a_m_y_roadcyc_01",
    "a_m_y_runner_01",
    "a_m_y_runner_02",
    "a_m_y_salton_01",
    "a_m_y_skater_01",
    "a_m_y_skater_02",
    "a_m_y_soucent_01",
    "a_m_y_soucent_02",
    "a_m_y_soucent_03",
    "a_m_y_soucent_04",
    "a_m_y_stbla_01",
    "a_m_y_stbla_02",
    "a_m_y_stlat_01",
    "a_m_y_stwhi_01",
    "a_m_y_stwhi_02",
    "a_m_y_sunbathe_01",
    "a_m_y_surfer_01",
    "a_m_y_vindouche_01",
    "a_m_y_vinewood_01",
    "a_m_y_vinewood_02",
    "a_m_y_vinewood_03",
    "a_m_y_vinewood_04",
    "a_m_y_yoga_01",
    "g_f_importexport_01",
    "g_f_y_ballas_01",
    "g_f_y_families_01",
    "g_f_y_lost_01",
    "g_f_y_vagos_01",
    "g_m_importexport_01",
    "g_m_m_armboss_01",
    "g_m_m_armgoon_01",
    "g_m_m_armlieut_01",
    "g_m_m_chemwork_01",
    "g_m_m_chiboss_01",
    "g_m_m_chicold_01",
    "g_m_m_chigoon_01",
    "g_m_m_chigoon_02",
    "g_m_m_korboss_01",
    "g_m_m_mexboss_01",
    "g_m_m_mexboss_02",
    "g_m_y_armgoon_02",
    "g_m_y_azteca_01",
    "g_m_y_ballaeast_01",
    "g_m_y_ballaorig_01",
    "g_m_y_ballasout_01",
    "g_m_y_famca_01",
    "g_m_y_famdnf_01",
    "g_m_y_famfor_01",
    "g_m_y_korean_01",
    "g_m_y_korean_02",
    "g_m_y_korlieut_01",
    "g_m_y_lost_01",
    "g_m_y_lost_02",
    "g_m_y_lost_03",
    "g_m_y_mexgang_01",
    "g_m_y_mexgoon_01",
    "g_m_y_mexgoon_02",
    "g_m_y_mexgoon_03",
    "g_m_y_pologoon_01",
    "g_m_y_pologoon_02",
    "g_m_y_salvaboss_01",
    "g_m_y_salvagoon_01",
    "g_m_y_salvagoon_02",
    "g_m_y_salvagoon_03",
    "g_m_y_strpunk_01",
    "g_m_y_strpunk_02",
    "hc_driver",
    "hc_gunman",
    "hc_hacker",
    "ig_abigail",
    "ig_agent",
    "ig_amandatownley",
    "ig_andreas",
    "ig_ashley",
    "ig_avon",
    "ig_ballasog",
    "ig_bankman",
    "ig_barry",
    "ig_benny",
    "ig_bestmen",
    "ig_beverly",
    "ig_brad",
    "ig_bride",
    "ig_car3guy1",
    "ig_car3guy2",
    "ig_casey",
    "ig_chef",
    "ig_chef2",
    "ig_chengsr",
    "ig_chrisformage",
    "ig_clay",
    "ig_claypain",
    "ig_cletus",
    "ig_dale",
    "ig_davenorton",
    "ig_denise",
    "ig_devin",
    "ig_dom",
    "ig_dreyfuss",
    "ig_drfriedlander",
    "ig_englishdave",
    "ig_fabien",
    "ig_fbisuit_01",
    "ig_floyd",
    "ig_g",
    "ig_georginacheng",
    "ig_groom",
    "ig_hao",
    "ig_helmsmanpavel",
    "ig_huang",
    "ig_hunter",
    "ig_isldj_00",
    "ig_isldj_01",
    "ig_isldj_02",
    "ig_isldj_03",
    "ig_isldj_04",
    "ig_janet",
    "ig_jay_norris",
    "ig_jewelass",
    "ig_jimmyboston",
    "ig_jimmydisanto",
    "ig_joeminuteman",
    "ig_johnnyklebitz",
    "ig_josef",
    "ig_josh",
    "ig_karen_daniels",
    "ig_kerrymcintosh",
    "ig_lacey_jones_02",
    "ig_lamardavis",
    "ig_lazlow",
    "ig_lestercrest",
    "ig_lifeinvad_01",
    "ig_lifeinvad_02",
    "ig_magenta",
    "ig_malc",
    "ig_manuel",
    "ig_marnie",
    "ig_maryann",
    "ig_maude",
    "ig_michelle",
    "ig_milton",
    "ig_mjo",
    "ig_molly",
    "ig_money",
    "ig_mp_agent14",
    "ig_mrk",
    "ig_mrs_thornhill",
    "ig_mrsphillips",
    "ig_natalia",
    "ig_nervousron",
    "ig_nigel",
    "ig_old_man1a",
    "ig_old_man2",
    "ig_omega",
    "ig_oneil",
    "ig_orleans",
    "ig_ortega",
    "ig_paige",
    "ig_paper",
    "ig_patricia",
    "ig_popov",
    "ig_priest",
    "ig_prolsec_02",
    "ig_ramp_gang",
    "ig_ramp_hic",
    "ig_ramp_hipster",
    "ig_ramp_mex",
    "ig_rashcosvki",
    "ig_roccopelosi",
    "ig_russiandrunk",
    "ig_screen_writer",
    "ig_siemonyetarian",
    "ig_solomon",
    "ig_sss",
    "ig_stevehains",
    "ig_stretch",
    "ig_talcc",
    "ig_talina",
    "ig_tanisha",
    "ig_taocheng",
    "ig_taostranslator",
    "ig_tenniscoach",
    "ig_terry",
    "ig_tomepsilon",
    "ig_tonya",
    "ig_tonyprince",
    "ig_tracydisanto",
    "ig_trafficwarden",
    "ig_tylerdix",
    "ig_vagspeak",
    "ig_wade",
    "ig_zimbor",
    "mp_f_boatstaff_01",
    "mp_f_cardesign_01",
    "mp_f_chbar_01",
    "mp_f_cocaine_01",
    "mp_f_counterfeit_01",
    "mp_f_deadhooker",
    "mp_f_execpa_01",
    "mp_f_execpa_02",
    "mp_f_forgery_01",
    "mp_f_freemode_01",
    "mp_f_helistaff_01",
    "mp_f_meth_01",
    "mp_f_misty_01",
    "mp_f_stripperlite",
    "mp_f_weed_01",
    "mp_g_m_pros_01",
    "mp_headtargets",
    "mp_m_avongoon",
    "mp_m_boatstaff_01",
    "mp_m_bogdangoon",
    "mp_m_claude_01",
    "mp_m_cocaine_01",
    "mp_m_counterfeit_01",
    "mp_m_exarmy_01",
    "mp_m_execpa_01",
    "mp_m_famdd_01",
    "mp_m_fibsec_01",
    "mp_m_forgery_01",
    "mp_m_freemode_01",
    "mp_m_g_vagfun_01",
    "mp_m_marston_01",
    "mp_m_meth_01",
    "mp_m_niko_01",
    "mp_m_securoguard_01",
    "mp_m_shopkeep_01",
    "mp_m_waremech_01",
    "mp_m_weapexp_01",
    "mp_m_weapwork_01",
    "mp_m_weed_01",
    "mp_s_m_armoured_01",
    "s_f_m_fembarber",
    "s_f_m_maid_01",
    "s_f_m_shop_high",
    "s_f_m_sweatshop_01",
    "s_f_y_airhostess_01",
    "s_f_y_bartender_01",
    "s_f_y_baywatch_01",
    "s_f_y_cop_01",
    "s_f_y_factory_01",
    "s_f_y_hooker_01",
    "s_f_y_hooker_02",
    "s_f_y_hooker_03",
    "s_f_y_migrant_01",
    "s_f_y_movprem_01",
    "s_f_y_ranger_01",
    "s_f_y_scrubs_01",
    "s_f_y_sheriff_01",
    "s_f_y_shop_low",
    "s_f_y_shop_mid",
    "s_f_y_stripper_01",
    "s_f_y_stripper_02",
    "s_f_y_stripperlite",
    "s_f_y_sweatshop_01",
    "s_m_m_ammucountry",
    "s_m_m_armoured_01",
    "s_m_m_armoured_02",
    "s_m_m_autoshop_01",
    "s_m_m_autoshop_02",
    "s_m_m_bouncer_01",
    "s_m_m_ccrew_01",
    "s_m_m_chemsec_01",
    "s_m_m_ciasec_01",
    "s_m_m_cntrybar_01",
    "s_m_m_dockwork_01",
    "s_m_m_doctor_01",
    "s_m_m_drugprocess_01",
    "s_m_m_fiboffice_01",
    "s_m_m_fiboffice_02",
    "s_m_m_gaffer_01",
    "s_m_m_gardener_01",
    "s_m_m_gentransport",
    "s_m_m_hairdress_01",
    "s_m_m_highsec_01",
    "s_m_m_highsec_02",
    "s_m_m_janitor",
    "s_m_m_lathandy_01",
    "s_m_m_lifeinvad_01",
    "s_m_m_linecook",
    "s_m_m_lsmetro_01",
    "s_m_m_mariachi_01",
    "s_m_m_marine_01",
    "s_m_m_marine_02",
    "s_m_m_migrant_01",
    "s_m_m_movalien_01",
    "s_m_m_movprem_01",
    "s_m_m_movspace_01",
    "s_m_m_pilot_01",
    "s_m_m_pilot_02",
    "s_m_m_postal_01",
    "s_m_m_postal_02",
    "s_m_m_prisguard_01",
    "s_m_m_scientist_01",
    "s_m_m_security_01",
    "s_m_m_snowcop_01",
    "s_m_m_strperf_01",
    "s_m_m_strpreach_01",
    "s_m_m_strvend_01",
    "s_m_m_trucker_01",
    "s_m_m_ups_01",
    "s_m_m_ups_02",
    "s_m_o_busker_01",
    "s_m_y_airworker",
    "s_m_y_ammucity_01",
    "s_m_y_armymech_01",
    "s_m_y_autopsy_01",
    "s_m_y_barman_01",
    "s_m_y_baywatch_01",
    "s_m_y_blackops_01",
    "s_m_y_blackops_02",
    "s_m_y_blackops_03",
    "s_m_y_busboy_01",
    "s_m_y_chef_01",
    "s_m_y_clown_01",
    "s_m_y_construct_01",
    "s_m_y_construct_02",
    "s_m_y_cop_01",
    "s_m_y_dealer_01",
    "s_m_y_devinsec_01",
    "s_m_y_dockwork_01",
    "s_m_y_doorman_01",
    "s_m_y_dwservice_01",
    "s_m_y_dwservice_02",
    "s_m_y_factory_01",
    "s_m_y_fireman_01",
    "s_m_y_garbage",
    "s_m_y_grip_01",
    "s_m_y_hwaycop_01",
    "s_m_y_marine_01",
    "s_m_y_marine_02",
    "s_m_y_marine_03",
    "s_m_y_mime",
    "s_m_y_pestcont_01",
    "s_m_y_pilot_01",
    "s_m_y_prismuscl_01",
    "s_m_y_prisoner_01",
    "s_m_y_ranger_01",
    "s_m_y_robber_01",
    "s_m_y_sheriff_01",
    "s_m_y_shop_mask",
    "s_m_y_strvend_01",
    "s_m_y_swat_01",
    "s_m_y_uscg_01",
    "s_m_y_valet_01",
    "s_m_y_waiter_01",
    "s_m_y_waretech_01",
    "s_m_y_winclean_01",
    "s_m_y_xmech_01",
    "s_m_y_xmech_02",
    "u_f_m_corpse_01",
    "u_f_m_drowned_01",
    "u_f_m_miranda",
    "u_f_m_promourn_01",
    "u_f_o_moviestar",
    "u_f_o_prolhost_01",
    "u_f_y_bikerchic",
    "u_f_y_comjane",
    "u_f_y_corpse_01",
    "u_f_y_corpse_02",
    "u_f_y_hotposh_01",
    "u_f_y_jewelass_01",
    "u_f_y_mistress",
    "u_f_y_poppymich",
    "u_f_y_princess",
    "u_f_y_spyactress",
    "u_m_m_aldinapoli",
    "u_m_m_bankman",
    "u_m_m_bikehire_01",
    "u_m_m_doa_01",
    "u_m_m_edtoh",
    "u_m_m_fibarchitect",
    "u_m_m_filmdirector",
    "u_m_m_glenstank_01",
    "u_m_m_griff_01",
    "u_m_m_jesus_01",
    "u_m_m_jewelsec_01",
    "u_m_m_jewelthief",
    "u_m_m_markfost",
    "u_m_m_partytarget",
    "u_m_m_prolsec_01",
    "u_m_m_promourn_01",
    "u_m_m_rivalpap",
    "u_m_m_spyactor",
    "u_m_m_willyfist",
    "u_m_o_finguru_01",
    "u_m_o_taphillbilly",
    "u_m_o_tramp_01",
    "u_m_y_abner",
    "u_m_y_antonb",
    "u_m_y_babyd",
    "u_m_y_baygor",
    "u_m_y_burgerdrug_01",
    "u_m_y_caleb",
    "u_m_y_chip",
    "u_m_y_corpse_01",
    "u_m_y_cyclist_01",
    "u_m_y_fibmugger_01",
    "u_m_y_guido_01",
    "u_m_y_gunvend_01",
    "u_m_y_hippie_01",
    "u_m_y_imporage",
    "u_m_y_juggernaut_01",
    "u_m_y_justin",
    "u_m_y_mani",
    "u_m_y_militarybum",
    "u_m_y_paparazzi",
    "u_m_y_party_01",
    "u_m_y_pogo_01",
    "u_m_y_prisoner_01",
    "u_m_y_proldriver_01",
    "u_m_y_rsranger_01",
    "u_m_y_sbike",
    "u_m_y_smugmech_01",
    "u_m_y_staggrm_01",
    "u_m_y_tattoo_01",
    "u_m_y_zombie_01"
}

local favorites = {}
local whitelist = {}

local currentPage = 1
local itemsPerPage = 10

local function openFavoritesMenu()
    local favoriteOptions = {
        {
            title = 'Back',
            event = 'lankyped:openPedMenu'
        },
        {
            title = 'Clear Favorites',
            event = 'lankyped:clearFavorites'
        },
        {
            title = 'Refresh Favorites',
            event = 'lankyped:refreshFavorites',
            close = false -- Button to refresh favorites from the database without closing the menu
        }
    }

    for _, ped in ipairs(favorites) do
        table.insert(favoriteOptions, {
            title = ped,
            event = 'lankyped:switchPed',
            args = ped,
            close = false
        })
    end

    if #favoriteOptions == 3 then
        table.insert(favoriteOptions, {
            title = 'No favorites found',
            disabled = true
        })
    end

    exports.ox_lib:registerContext({
        id = 'favorites_menu',
        title = 'Favorites',
        options = favoriteOptions
    })

    exports.ox_lib:showContext('favorites_menu')
end

RegisterNetEvent('lankyped:loadFavorites')
AddEventHandler('lankyped:loadFavorites', function(favs)
    favorites = {}
    for _, fav in ipairs(favs) do
        table.insert(favorites, fav.ped_model)
    end
    openFavoritesMenu()  -- Reopen the favorites menu after loading favorites
end)

RegisterNetEvent('lankyped:loadWhitelist')
AddEventHandler('lankyped:loadWhitelist', function(whitelistData)
    whitelist = {}
    for _, wl in ipairs(whitelistData) do
        table.insert(whitelist, wl.steam_hex)
    end
end)

local function setPlayerPed(pedModel)
    local model = GetHashKey(pedModel)
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
    else
        exports.ox_lib:notify({title = 'Error', description = 'Invalid ped model.', type = 'error'})
    end
end

local function favoritePed(pedModel)
    table.insert(favorites, pedModel)
    TriggerServerEvent('lankyped:saveFavorites', favorites)
    exports.ox_lib:notify({title = 'Success', description = pedModel .. ' added to favorites.', type = 'success'})
end

local function openPedActionMenu(ped)
    local actionOptions = {
        {
            title = 'Use Ped',
            event = 'lankyped:setPed',
            args = ped,
            close = false
        },
        {
            title = 'Add to Favorites',
            event = 'lankyped:favoritePed',
            args = ped,
            close = false -- Keep the menu open when adding to favorites
        },
        {
            title = 'Back',
            event = 'lankyped:openPedListMenu',
            args = currentPage -- Pass the current page to go back to
        }
    }

    exports.ox_lib:registerContext({
        id = 'ped_action_menu',
        title = ped,
        options = actionOptions
    })

    exports.ox_lib:showContext('ped_action_menu')
end

local function openPedListMenu(page)
    currentPage = page or 1
    local startIndex = (currentPage - 1) * itemsPerPage + 1
    local endIndex = math.min(startIndex + itemsPerPage - 1, #pedsList)
    local pedOptions = {
        {
            title = 'Back',
            event = 'lankyped:openPedMenu'
        },
        {
            title = 'Search Peds',
            event = 'lankyped:openPedSearchMenu'
        }
    }

    for i = startIndex, endIndex do
        local ped = pedsList[i]
        table.insert(pedOptions, {
            title = ped,
            event = 'lankyped:openPedActionMenu',
            args = ped,
            close = false -- Ensure the menu stays open when selecting a ped
        })
    end

    if endIndex < #pedsList then
        table.insert(pedOptions, {
            title = 'Next Page',
            event = 'lankyped:openPedListMenu',
            args = currentPage + 1,
            close = false
        })
    end

    if currentPage > 1 then
        table.insert(pedOptions, {
            title = 'Previous Page',
            event = 'lankyped:openPedListMenu',
            args = currentPage - 1,
            close = false
        })
    end

    exports.ox_lib:registerContext({
        id = 'ped_list_menu',
        title = 'Ped List - Page ' .. currentPage,
        options = pedOptions
    })

    exports.ox_lib:showContext('ped_list_menu')
end

local function openPedSearchMenu()
    local searchInput = exports.ox_lib:inputDialog('Search Peds', {'Enter ped name:'})
    if searchInput then
        local searchTerm = searchInput[1]
        local filteredPeds = {}
        for _, ped in ipairs(pedsList) do
            if string.find(ped, searchTerm) then
                table.insert(filteredPeds, ped)
            end
        end

        local pedOptions = {
            {
                title = 'Back',
                event = 'lankyped:openPedListMenu',
                args = currentPage -- Pass the current page to go back to
            }
        }

        for _, ped in ipairs(filteredPeds) do
            table.insert(pedOptions, {
                title = ped,
                event = 'lankyped:openPedActionMenu',
                args = ped,
                close = false -- Ensure the menu stays open when selecting a ped
            })
        end

        if #pedOptions == 1 then
            table.insert(pedOptions, {
                title = 'No peds found',
                disabled = true
            })
        end

        exports.ox_lib:registerContext({
            id = 'ped_search_menu',
            title = 'Ped Search Results',
            options = pedOptions
        })

        exports.ox_lib:showContext('ped_search_menu')
    end
end

local function openPedMenu()
    local menuOptions = {
        {
            title = 'Ped List',
            event = 'lankyped:openPedListMenu',
            args = 1 -- Start at the first page
        },
        {
            title = 'Favorites',
            event = 'lankyped:openFavoritesMenu' -- Directly open the favorites menu
        }
    }

    exports.ox_lib:registerContext({
        id = 'ped_menu',
        title = 'Ped Menu',
        options = menuOptions
    })

    exports.ox_lib:showContext('ped_menu')
end

RegisterNetEvent('lankyped:openPedMenu')
AddEventHandler('lankyped:openPedMenu', function()
    openPedMenu()
end)

RegisterCommand('pedadmin', function()
    TriggerServerEvent('lankyped:requestWhitelist')
end, false)

RegisterNetEvent('lankyped:setPed')
AddEventHandler('lankyped:setPed', function(ped)
    setPlayerPed(ped)
    -- Re-open the ped action menu after setting the ped
    openPedActionMenu(ped)
end)

RegisterNetEvent('lankyped:switchPed')
AddEventHandler('lankyped:switchPed', function(ped)
    setPlayerPed(ped)
    -- Keep the favorites menu open
    exports.ox_lib:showContext('favorites_menu')
end)

RegisterNetEvent('lankyped:favoritePed')
AddEventHandler('lankyped:favoritePed', function(ped)
    favoritePed(ped)
    -- Keep the ped action menu open
    openPedActionMenu(ped)
end)

RegisterNetEvent('lankyped:clearFavorites')
AddEventHandler('lankyped:clearFavorites', function()
    favorites = {}
    TriggerServerEvent('lankyped:saveFavorites', favorites)
    exports.ox_lib:notify({title = 'Success', description = 'Favorites cleared.', type = 'success'})
    openFavoritesMenu()
end)

RegisterNetEvent('lankyped:refreshFavorites')
AddEventHandler('lankyped:refreshFavorites', function()
    TriggerServerEvent('lankyped:requestFavorites')
end)

RegisterNetEvent('lankyped:openPedListMenu')
AddEventHandler('lankyped:openPedListMenu', openPedListMenu)

RegisterNetEvent('lankyped:openPedSearchMenu')
AddEventHandler('lankyped:openPedSearchMenu', openPedSearchMenu)

RegisterNetEvent('lankyped:openFavoritesMenu')
AddEventHandler('lankyped:openFavoritesMenu', openFavoritesMenu)

RegisterNetEvent('lankyped:openPedActionMenu')
AddEventHandler('lankyped:openPedActionMenu', openPedActionMenu)

RegisterNetEvent('lankyped:openWhitelistMenu')
AddEventHandler('lankyped:openWhitelistMenu', function()
    local whitelistOptions = {
        {
            title = 'Add Player',
            event = 'lankyped:openAddPlayerMenu'
        },
        {
            title = 'Remove Player',
            event = 'lankyped:openRemovePlayerMenu'
        },
        {
            title = 'Remove Whitelist by Steam Hex',
            event = 'lankyped:openRemoveSteamHexMenu'
        }
    }

    exports.ox_lib:registerContext({
        id = 'whitelist_menu',
        title = 'Whitelist Management',
        options = whitelistOptions
    })

    exports.ox_lib:showContext('whitelist_menu')
end)

RegisterNetEvent('lankyped:openAddSteamHexMenu')
AddEventHandler('lankyped:openAddSteamHexMenu', function()
    local input = exports.ox_lib:inputDialog('Add Steam Hex', {'Enter Steam Hex:'})
    if input then
        local steamHex = input[1]
        TriggerServerEvent('lankyped:addSteamHex', steamHex)
    end
end)

RegisterNetEvent('lankyped:openRemoveSteamHexMenu')
AddEventHandler('lankyped:openRemoveSteamHexMenu', function()
    local input = exports.ox_lib:inputDialog('Remove Steam Hex', {'Enter Steam Hex:'})
    if input then
        local steamHex = input[1]
        TriggerServerEvent('lankyped:removeSteamHex', steamHex)
    end
end)

RegisterNetEvent('lankyped:openAddPlayerMenu')
AddEventHandler('lankyped:openAddPlayerMenu', function()
    local input = exports.ox_lib:inputDialog('Add Player', {'Enter Player Server ID:'})
    if input then
        local playerId = tonumber(input[1])
        if playerId then
            TriggerServerEvent('lankyped:addPlayerToWhitelist', playerId)
        else
            exports.ox_lib:notify({title = 'Error', description = 'Invalid Player Server ID.', type = 'error'})
        end
    end
end)

RegisterNetEvent('lankyped:openRemovePlayerMenu')
AddEventHandler('lankyped:openRemovePlayerMenu', function()
    local input = exports.ox_lib:inputDialog('Remove Player', {'Enter Player Server ID:'})
    if input then
        local playerId = tonumber(input[1])
        if playerId then
            TriggerServerEvent('lankyped:removePlayerFromWhitelist', playerId)
        else
            exports.ox_lib:notify({title = 'Error', description = 'Invalid Player Server ID.', type = 'error'})
        end
    end
end)

<?php
ob_start();
session_start();

include ("includes/funktioner.php");
include ("includes/db_connect.php");

// ==============================================================

// Disse variabler kan bruges i forbindelse med in_array() funktionen.
// Du behøver ikke at ændre noget her.
// Vi forklarer dette i et oplæg.

$gr_admin_opret_brugere                    = "admin_opret_brugere";
$gr_admin_rediger_brugere                  = "admin_rediger_brugere";
$gr_admin_slet_brugere                     = "admin_slet_brugere";
$gr_admin_deaktiver_brugere                = "admin_deaktiver_brugere";
$gr_admin_skift_medlemmers_brugernavn      = "admin_skift_medlemmers_brugernavn";
$gr_admin_skift_moderators_brugernavn      = "admin_skift_moderators_brugernavn";
$gr_admin_rediger_spil                     = "admin_rediger_spil";
$gr_admin_slet_spil                        = "admin_slet_spil";
$gr_admin_deaktiver_spil                   = "admin_deaktiver_spil";
$gr_admin_deaktiver_specifikke_downloads   = "admin_deaktiver_specifikke_downloads";
$gr_admin_rediger_medlemmers_kommentarer   = "admin_rediger_medlemmers_kommentarer";
$gr_admin_slet_medlemmers_kommentarer      = "admin_slet_medlemmers_kommentarer";
$gr_admin_rediger_moderatorers_kommentarer = "admin_rediger_moderatorers_kommentarer";
$gr_admin_slet_moderatorers_kommentarer    = "admin_slet_moderatorers_kommentarer";
$gr_registrer_profil                       = "registrer_profil";
$gr_upload_spil                            = "upload_spil";
$gr_rediger_egne_spil                      = "rediger_egne_spil";
$gr_slet_egne_spil                         = "slet_egne_spil";
$gr_rate_spil                              = "rate_spil";
$gr_download_spil                          = "download_spil";
$gr_spil_online                            = "spil_online";
$gr_laes_kommentarer                       = "laes_kommentarer";
$gr_skriv_kommentarer                      = "skriv_kommentarer";
$gr_tilmeld_og_frameld_nyhedsbrev          = "tilmeld_og_frameld_nyhedsbrev";

// ==============================================================

// [TODO]:
// Du skal på et tidspunkt skrive noget php kode her mellem disse 2 kommentar-streger,
// som henter de rettigheder der tilhører den bruger, som er logget ind
// (eller gæstens rettigheder hvis man ikke er logget ind).
// Rettighederne skal gemmes i et array, som du kalder $g_rettigheder.

// ==============================================================


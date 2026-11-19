.class public Lcom/linkplay/lpmdpkit/utils/LPLogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LP_MDP_KIT:Ljava/lang/String; = "LPMDPKit"

.field public static final LP_MS_AMAZON_MUSIC:Ljava/lang/String; = "LPMSAmazonMusic"

.field public static final LP_MS_AMAZON_MUSIC_UI:Ljava/lang/String; = "LPMSAmazonMusicUI"

.field public static final LP_MS_CALM_RADIO:Ljava/lang/String; = "LPMSCalmRadio"

.field public static final LP_MS_CALM_RADIO_UI:Ljava/lang/String; = "LPMSCalmRadioUI"

.field public static final LP_MS_COMMON_UI:Ljava/lang/String; = "lpmscommonui"

.field public static final LP_MS_DB_KIT:Ljava/lang/String; = "LPMSDBKit"

.field public static final LP_MS_DEEZER:Ljava/lang/String; = "LPMSDeezer"

.field public static final LP_MS_DEEZER_UI:Ljava/lang/String; = "LPMSDeezerUI"

.field public static final LP_MS_MEDIA_LIBRARY:Ljava/lang/String; = "LPMSMediaLibrary"

.field public static final LP_MS_NAS:Ljava/lang/String; = "LPMSNAS"

.field public static final LP_MS_SOUND_CLOUD:Ljava/lang/String; = "LPMSSoundCloud"

.field public static final LP_MS_SOUND_CLOUD_UI:Ljava/lang/String; = "LPMSSoundCloudUI"

.field public static final LP_MS_SOUND_MACHINE:Ljava/lang/String; = "LPMSSoundMachine"

.field public static final LP_MS_SOUND_MACHINE_UI:Ljava/lang/String; = "LPMSSoundMachineUI"

.field public static final LP_MS_SPOTIFY:Ljava/lang/String; = "LPMSSpotify"

.field public static final LP_MS_SPOTIFY_UI:Ljava/lang/String; = "LPMSSpotifyUI"

.field public static final LP_MS_TIDAL:Ljava/lang/String; = "LPMSTidal"

.field public static final LP_MS_TIDAL_UI:Ljava/lang/String; = "LPMSTidalUI"

.field public static final LP_MS_TUNEIN:Ljava/lang/String; = "LPMSTuneIn"

.field public static final LP_MS_TUNEIN_UI:Ljava/lang/String; = "LPMSTuneInUI"

.field public static final LP_MUSIC_KIT:Ljava/lang/String; = "LPMusicKit"

.field public static final LP_RADIO:Ljava/lang/String; = "LinkplayRadio"

.field public static final LP_RADIO_UI:Ljava/lang/String; = "LinkplayRadioUI"

.field private static printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static init(Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;)V
    .locals 0

    sput-object p0, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->printLogCallback:Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/linkplay/lpmdpkit/callback/LPPrintLogCallback;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

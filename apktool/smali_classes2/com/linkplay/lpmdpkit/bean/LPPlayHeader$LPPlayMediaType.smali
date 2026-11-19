.class public Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPPlayMediaType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LPPlayMediaType"
.end annotation


# static fields
.field public static final LP_AIRPLAY:Ljava/lang/String; = "AIRPLAY"

.field public static final LP_ALEXA:Ljava/lang/String; = "ALEXA"

.field public static final LP_ALEXA_AUDIBLE:Ljava/lang/String; = "ALEXA_AUDIBLE"

.field public static final LP_ALEXA_PANDORA:Ljava/lang/String; = "ALEXA_PANDORA"

.field public static final LP_ALI_RPC:Ljava/lang/String; = "ALI-RPC"

.field public static final LP_BLUETOOTH:Ljava/lang/String; = "BLUETOOTH"

.field public static final LP_CO_AXIAL:Ljava/lang/String; = "CO_AXIAL"

.field public static final LP_EXTERNAL_TFCARD:Ljava/lang/String; = "EXTERNAL_TFCARD"

.field public static final LP_EXTERNAL_USB:Ljava/lang/String; = "EXTERNAL_USB"

.field public static final LP_FM:Ljava/lang/String; = "FM"

.field public static final LP_LINE_2IN:Ljava/lang/String; = "SECORD_LINEIN"

.field public static final LP_LINE_IN:Ljava/lang/String; = "LINE-IN"

.field public static final LP_NONE:Ljava/lang/String; = "NONE"

.field public static final LP_OPTICAL:Ljava/lang/String; = "OPTICAL"

.field public static final LP_QPLAY:Ljava/lang/String; = "QPLAY"

.field public static final LP_RADIO_NETWORK:Ljava/lang/String; = "RADIO-NETWORK"

.field public static final LP_RCA:Ljava/lang/String; = "RCA"

.field public static final LP_SONGLIST_LOCAL:Ljava/lang/String; = "SONGLIST-LOCAL"

.field public static final LP_SONGLIST_LOCAL_TF:Ljava/lang/String; = "SONGLIST-LOCAL_TF"

.field public static final LP_SONGLIST_NETWORK:Ljava/lang/String; = "SONGLIST-NETWORK"

.field public static final LP_SPOTIFY:Ljava/lang/String; = "SPOTIFY"

.field public static final LP_STATION_NETWORK:Ljava/lang/String; = "STATION-NETWORK"

.field public static final LP_THIRD_DLNA:Ljava/lang/String; = "THIRD-DLNA"

.field public static final LP_UDISK:Ljava/lang/String; = "UDISK"

.field public static final LP_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final SPOTIFY_EPISODE:Ljava/lang/String; = "spotify:episode"

.field public static final SPOTIFY_SHOW:Ljava/lang/String; = "spotify:show"

.field private static values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v26, "spotify:show"

    const-string v27, "spotify:episode"

    const-string v1, "NONE"

    const-string v2, "RADIO-NETWORK"

    const-string v3, "STATION-NETWORK"

    const-string v4, "SONGLIST-NETWORK"

    const-string v5, "SONGLIST-LOCAL"

    const-string v6, "THIRD-DLNA"

    const-string v7, "AIRPLAY"

    const-string v8, "QPLAY"

    const-string v9, "UNKNOWN"

    const-string v10, "LINE-IN"

    const-string v11, "SECORD_LINEIN"

    const-string v12, "FM"

    const-string v13, "BLUETOOTH"

    const-string v14, "EXTERNAL_USB"

    const-string v15, "EXTERNAL_TFCARD"

    const-string v16, "OPTICAL"

    const-string v17, "UDISK"

    const-string v18, "SPOTIFY"

    const-string v19, "ALEXA"

    const-string v20, "RCA"

    const-string v21, "CO_AXIAL"

    const-string v22, "ALEXA_PANDORA"

    const-string v23, "SONGLIST-LOCAL_TF"

    const-string v24, "ALEXA_AUDIBLE"

    const-string v25, "ALI-RPC"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPPlayMediaType;->values:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byOrdinal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "NONE"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPPlayMediaType;->values:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.class public enum Lcom/sightcall/universal/internal/view/CallButton;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/view/CallButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum AUDIO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum ERASE:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum FLASH:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum GEOLOCATION:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum MESSAGES:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum MICRO:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum RECORDING_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

.field private static final REVERSE_LUT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sightcall/universal/internal/view/CallButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SAVE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum SCREENCAST:Lcom/sightcall/universal/internal/view/CallButton;

.field public static SEPARATOR:Ljava/lang/String;

.field public static final enum SHARE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum SHARE_PHOTO:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum SHARE_PICTURE:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum SHARE_STOP:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum SNAPSHOT:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum VIDEO:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum VIDEO_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

.field public static final enum VIDEO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;


# instance fields
.field public final alternativeKeys:[Ljava/lang/String;

.field public final drawable:I

.field public final key:Ljava/lang/String;

.field public final voiceCommands:[I


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/view/CallButton;
    .locals 19

    sget-object v1, Lcom/sightcall/universal/internal/view/CallButton;->MICRO:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v2, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v4, Lcom/sightcall/universal/internal/view/CallButton;->AUDIO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v5, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v6, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v7, Lcom/sightcall/universal/internal/view/CallButton;->FLASH:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v8, Lcom/sightcall/universal/internal/view/CallButton;->ERASE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v9, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_STOP:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v10, Lcom/sightcall/universal/internal/view/CallButton;->RECORDING_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v11, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_PHOTO:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v12, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_PICTURE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v13, Lcom/sightcall/universal/internal/view/CallButton;->GEOLOCATION:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v14, Lcom/sightcall/universal/internal/view/CallButton;->SAVE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v15, Lcom/sightcall/universal/internal/view/CallButton;->SNAPSHOT:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v16, Lcom/sightcall/universal/internal/view/CallButton;->SCREENCAST:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v17, Lcom/sightcall/universal/internal/view/CallButton;->MESSAGES:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v18, Lcom/sightcall/universal/internal/view/CallButton;->HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

    filled-new-array/range {v1 .. v18}, [Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/sightcall/universal/internal/view/CallButton;

    sget v3, Lcom/sightcall/universal/R$drawable;->universal_icon_call_micro:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_microphone_on:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_microphone_off:I

    filled-new-array {v1, v2}, [I

    move-result-object v4

    const-string v1, "remote-sound"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v1, "MICRO"

    const/4 v2, 0x0

    const-string v5, "local-sound"

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButton;->MICRO:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v1, Lcom/sightcall/universal/internal/view/CallButton;

    sget v4, Lcom/sightcall/universal/R$drawable;->universal_icon_call_video:I

    sget v0, Lcom/sightcall/universal/R$string;->universal_start_video:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_stop_video:I

    filled-new-array {v0, v2}, [I

    move-result-object v5

    const-string v0, "remote-video"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v2, "VIDEO"

    const/4 v3, 0x1

    const-string v6, "local-video"

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v0, Lcom/sightcall/universal/internal/view/CallButton$1;

    sget v1, Lcom/sightcall/universal/R$drawable;->universal_icon_call_video_source:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_video_source:I

    filled-new-array {v2}, [I

    move-result-object v2

    const-string v3, "local-layout"

    const-string v4, "remote-layout"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/sightcall/universal/internal/view/CallButton$1;-><init>(I[Ljava/lang/String;[I)V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v4, Lcom/sightcall/universal/internal/view/CallButton;

    sget v7, Lcom/sightcall/universal/R$drawable;->universal_icon_call_audio_source:I

    const/4 v0, 0x0

    new-array v8, v0, [I

    const-string v1, "local-speaker"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v5, "AUDIO_SOURCE"

    const/4 v6, 0x3

    const-string v9, "toggle-speaker"

    invoke-direct/range {v4 .. v10}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/sightcall/universal/internal/view/CallButton;->AUDIO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v5, Lcom/sightcall/universal/internal/view/CallButton;

    sget v8, Lcom/sightcall/universal/R$drawable;->universal_icon_call_pause_resume:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_pause_video:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_resume_video:I

    filled-new-array {v1, v2}, [I

    move-result-object v9

    const-string v1, "local-pause"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v6, "VIDEO_PAUSE_RESUME"

    const/4 v7, 0x4

    const-string v10, "remote-pause"

    invoke-direct/range {v5 .. v11}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v6, Lcom/sightcall/universal/internal/view/CallButton;

    sget v9, Lcom/sightcall/universal/R$drawable;->universal_icon_call_share:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_share_media:I

    filled-new-array {v1}, [I

    move-result-object v10

    const-string v1, "local-share"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v12

    const-string v7, "SHARE_MEDIA"

    const/4 v8, 0x5

    const-string v11, "remote-picker"

    invoke-direct/range {v6 .. v12}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v7, Lcom/sightcall/universal/internal/view/CallButton;

    sget v10, Lcom/sightcall/universal/R$drawable;->universal_icon_call_flash:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_flash_on:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_flash_off:I

    filled-new-array {v1, v2}, [I

    move-result-object v11

    const-string v1, "local-light"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v8, "FLASH"

    const/4 v9, 0x6

    const-string v12, "remote-light"

    invoke-direct/range {v7 .. v13}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/sightcall/universal/internal/view/CallButton;->FLASH:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v8, Lcom/sightcall/universal/internal/view/CallButton;

    sget v11, Lcom/sightcall/universal/R$drawable;->universal_icon_call_erase:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_erase:I

    filled-new-array {v1}, [I

    move-result-object v12

    const-string v1, "remote-erase"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v14

    const-string v9, "ERASE"

    const/4 v10, 0x7

    const-string v13, "local-erase"

    invoke-direct/range {v8 .. v14}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcom/sightcall/universal/internal/view/CallButton;->ERASE:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v1, Lcom/sightcall/universal/internal/view/CallButton;

    sget v4, Lcom/sightcall/universal/R$drawable;->universal_icon_call_share:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_share_stop:I

    filled-new-array {v2}, [I

    move-result-object v5

    const-string v6, "local-stop-share"

    new-array v7, v0, [Ljava/lang/String;

    const-string v2, "SHARE_STOP"

    const/16 v3, 0x8

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_STOP:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v2, Lcom/sightcall/universal/internal/view/CallButton;

    sget v5, Lcom/sightcall/universal/R$drawable;->universal_icon_call_recording_pause_resume:I

    new-array v6, v0, [I

    const-string v7, "local-record"

    new-array v8, v0, [Ljava/lang/String;

    const-string v3, "RECORDING_PAUSE_RESUME"

    const/16 v4, 0x9

    invoke-direct/range {v2 .. v8}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/sightcall/universal/internal/view/CallButton;->RECORDING_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v3, Lcom/sightcall/universal/internal/view/CallButton;

    sget v6, Lcom/sightcall/universal/R$drawable;->universal_icon_call_share_photo:I

    new-array v7, v0, [I

    const-string v8, "remote-photo"

    new-array v9, v0, [Ljava/lang/String;

    const-string v4, "SHARE_PHOTO"

    const/16 v5, 0xa

    invoke-direct/range {v3 .. v9}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_PHOTO:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v4, Lcom/sightcall/universal/internal/view/CallButton;

    sget v7, Lcom/sightcall/universal/R$drawable;->universal_icon_call_share_picture:I

    new-array v8, v0, [I

    const-string v9, "remote-gallery-picture"

    new-array v10, v0, [Ljava/lang/String;

    const-string v5, "SHARE_PICTURE"

    const/16 v6, 0xb

    invoke-direct/range {v4 .. v10}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_PICTURE:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v5, Lcom/sightcall/universal/internal/view/CallButton;

    sget v8, Lcom/sightcall/universal/R$drawable;->universal_icon_call_geolocation:I

    new-array v9, v0, [I

    const-string v10, "mobile-geoloc"

    new-array v11, v0, [Ljava/lang/String;

    const-string v6, "GEOLOCATION"

    const/16 v7, 0xc

    invoke-direct/range {v5 .. v11}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcom/sightcall/universal/internal/view/CallButton;->GEOLOCATION:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v6, Lcom/sightcall/universal/internal/view/CallButton;

    sget v9, Lcom/sightcall/universal/R$drawable;->universal_icon_call_save_media:I

    new-array v10, v0, [I

    const-string v11, "remote-save"

    new-array v12, v0, [Ljava/lang/String;

    const-string v7, "SAVE_MEDIA"

    const/16 v8, 0xd

    invoke-direct/range {v6 .. v12}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lcom/sightcall/universal/internal/view/CallButton;->SAVE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v7, Lcom/sightcall/universal/internal/view/CallButton;

    sget v10, Lcom/sightcall/universal/R$drawable;->universal_icon_call_share_photo:I

    new-array v11, v0, [I

    const-string v12, "remote-snapshot"

    new-array v13, v0, [Ljava/lang/String;

    const-string v8, "SNAPSHOT"

    const/16 v9, 0xe

    invoke-direct/range {v7 .. v13}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/sightcall/universal/internal/view/CallButton;->SNAPSHOT:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v8, Lcom/sightcall/universal/internal/view/CallButton;

    sget v11, Lcom/sightcall/universal/R$drawable;->universal_icon_call_screencast:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_screencast:I

    filled-new-array {v1}, [I

    move-result-object v12

    const-string v13, "remote-screencast"

    new-array v14, v0, [Ljava/lang/String;

    const-string v9, "SCREENCAST"

    const/16 v10, 0xf

    invoke-direct/range {v8 .. v14}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcom/sightcall/universal/internal/view/CallButton;->SCREENCAST:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v1, Lcom/sightcall/universal/internal/view/CallButton;

    sget v4, Lcom/sightcall/universal/R$drawable;->universal_icon_call_messaging:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_message:I

    filled-new-array {v2}, [I

    move-result-object v5

    const-string v6, "open-chat"

    new-array v7, v0, [Ljava/lang/String;

    const-string v2, "MESSAGES"

    const/16 v3, 0x10

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/sightcall/universal/internal/view/CallButton;->MESSAGES:Lcom/sightcall/universal/internal/view/CallButton;

    new-instance v1, Lcom/sightcall/universal/internal/view/CallButton$2;

    sget v2, Lcom/sightcall/universal/R$drawable;->universal_icon_call_hangup:I

    sget v3, Lcom/sightcall/universal/R$string;->universal_hangup:I

    filled-new-array {v3}, [I

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/sightcall/universal/internal/view/CallButton$2;-><init>(I[Ljava/lang/String;[I)V

    sput-object v1, Lcom/sightcall/universal/internal/view/CallButton;->HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-static {}, Lcom/sightcall/universal/internal/view/CallButton;->$values()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButton;->$VALUES:[Lcom/sightcall/universal/internal/view/CallButton;

    const-string v0, ","

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButton;->SEPARATOR:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/internal/view/CallButton$3;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/view/CallButton$3;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButton;->REVERSE_LUT:Landroid/util/SparseArray;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sightcall/universal/internal/view/CallButton;->drawable:I

    iput-object p4, p0, Lcom/sightcall/universal/internal/view/CallButton;->voiceCommands:[I

    iput-object p5, p0, Lcom/sightcall/universal/internal/view/CallButton;->key:Ljava/lang/String;

    iput-object p6, p0, Lcom/sightcall/universal/internal/view/CallButton;->alternativeKeys:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a()I
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/internal/view/CallButton;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method private createContentDescription(Landroid/content/Context;[I)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lji;

    invoke-direct {p2, p1}, Lji;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/sightcall/universal/internal/view/CallButton;->SEPARATOR:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getNumberOfCameras()I
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/sightcall/universal/internal/view/CallButton;
    .locals 9

    invoke-static {}, Lcom/sightcall/universal/internal/view/CallButton;->values()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/sightcall/universal/internal/view/CallButton;->key:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/internal/view/CallButton;->values()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/sightcall/universal/internal/view/CallButton;->alternativeKeys:[Ljava/lang/String;

    if-eqz v5, :cond_4

    array-length v6, v5

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/view/CallButton;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/view/CallButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/view/CallButton;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/view/CallButton;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/view/CallButton;->$VALUES:[Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/view/CallButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/view/CallButton;

    return-object v0
.end method

.method public static valuesOf(Ljava/util/List;Z)[Lcom/sightcall/universal/internal/view/CallButton;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;Z)[",
            "Lcom/sightcall/universal/internal/view/CallButton;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/sightcall/universal/internal/view/CallButton;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/session/Reference$Button;

    sget-object v4, Lcom/sightcall/session/Reference$Button$EraseDrawing;->INSTANCE:Lcom/sightcall/session/Reference$Button$EraseDrawing;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->ERASE:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sightcall/session/Reference$Button$HangupCall;->INSTANCE:Lcom/sightcall/session/Reference$Button$HangupCall;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sightcall/session/Reference$Button$OpenChat;->INSTANCE:Lcom/sightcall/session/Reference$Button$OpenChat;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->MESSAGES:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/sightcall/session/Reference$Button$PauseCamera;->INSTANCE:Lcom/sightcall/session/Reference$Button$PauseCamera;

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/sightcall/session/Reference$Button$ShareMedia;->INSTANCE:Lcom/sightcall/session/Reference$Button$ShareMedia;

    if-ne v3, v4, :cond_6

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/sightcall/session/Reference$Button$StartCamera;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartCamera;

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/sightcall/session/Reference$Button$StartMicro;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartMicro;

    if-ne v3, v4, :cond_8

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->MICRO:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    sget-object v4, Lcom/sightcall/session/Reference$Button$StartScreencast;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartScreencast;

    if-ne v3, v4, :cond_9

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->SCREENCAST:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    sget-object v4, Lcom/sightcall/session/Reference$Button$StartTorch;->INSTANCE:Lcom/sightcall/session/Reference$Button$StartTorch;

    if-ne v3, v4, :cond_a

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->FLASH:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    sget-object v4, Lcom/sightcall/session/Reference$Button$SwitchCamera;->INSTANCE:Lcom/sightcall/session/Reference$Button$SwitchCamera;

    if-ne v3, v4, :cond_b

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    sget-object v4, Lcom/sightcall/session/Reference$Button$SwitchSpeaker;->INSTANCE:Lcom/sightcall/session/Reference$Button$SwitchSpeaker;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->AUDIO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    if-eqz p1, :cond_d

    sget-object p1, Lcom/sightcall/session/Reference$Button$SwitchSpeaker;->INSTANCE:Lcom/sightcall/session/Reference$Button$SwitchSpeaker;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lcom/sightcall/universal/internal/view/CallButton;->AUDIO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, v0, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :cond_d
    new-array p0, v0, [Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sightcall/universal/internal/view/CallButton;

    return-object p0
.end method


# virtual methods
.method public inflate(Landroid/content/Context;Lcom/sightcall/universal/internal/view/CallButtonBar;)Lcom/sightcall/universal/internal/view/CallButtonImageView;
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/sightcall/universal/R$style;->universal_Theme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/sightcall/universal/R$layout;->universal_view_call_button:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    sget v1, Lcom/sightcall/graphik/R$color;->universal_colorCallButtonTint:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setType(Lcom/sightcall/universal/internal/view/CallButton;)V

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setColorFilter(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/CallButton;->voiceCommands:[I

    invoke-direct {p0, v0, p2}, Lcom/sightcall/universal/internal/view/CallButton;->createContentDescription(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

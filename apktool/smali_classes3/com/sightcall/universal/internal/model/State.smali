.class public Lcom/sightcall/universal/internal/model/State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/State$Camera;,
        Lcom/sightcall/universal/internal/model/State$Micro;,
        Lcom/sightcall/universal/internal/model/State$Player;,
        Lcom/sightcall/universal/internal/model/State$Share;,
        Lcom/sightcall/universal/internal/model/State$Os;,
        Lcom/sightcall/universal/internal/model/State$App;
    }
.end annotation


# instance fields
.field final app:Lcom/sightcall/universal/internal/model/State$App;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "app"
    .end annotation
.end field

.field final ar:Lcom/sightcall/universal/ar/ArCoreState;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ar"
    .end annotation
.end field

.field final camera:Lcom/sightcall/universal/internal/model/State$Camera;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera"
    .end annotation
.end field

.field final id:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field final liveQr:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "live_qr"
    .end annotation
.end field

.field final micro:Lcom/sightcall/universal/internal/model/State$Micro;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "micro"
    .end annotation
.end field

.field final os:Lcom/sightcall/universal/internal/model/State$Os;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "os"
    .end annotation
.end field

.field final player:Lcom/sightcall/universal/internal/model/State$Player;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "player"
    .end annotation
.end field

.field final productId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "product"
    .end annotation
.end field

.field final role:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "role"
    .end annotation
.end field

.field final share:Lcom/sightcall/universal/internal/model/State$Share;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "share"
    .end annotation
.end field

.field final usecaseId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;IILcom/sightcall/universal/internal/model/State$Camera;Lcom/sightcall/universal/internal/model/State$Micro;Lcom/sightcall/universal/internal/model/State$Player;Lcom/sightcall/universal/internal/model/State$Share;Lcom/sightcall/universal/internal/model/State$Os;Lcom/sightcall/universal/internal/model/State$App;Lcom/sightcall/universal/ar/ArCoreState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/internal/model/State;->id:I

    iput-object p2, p0, Lcom/sightcall/universal/internal/model/State;->role:Ljava/lang/String;

    iput p3, p0, Lcom/sightcall/universal/internal/model/State;->usecaseId:I

    iput p4, p0, Lcom/sightcall/universal/internal/model/State;->productId:I

    iput-object p5, p0, Lcom/sightcall/universal/internal/model/State;->camera:Lcom/sightcall/universal/internal/model/State$Camera;

    iput-object p6, p0, Lcom/sightcall/universal/internal/model/State;->micro:Lcom/sightcall/universal/internal/model/State$Micro;

    iput-object p7, p0, Lcom/sightcall/universal/internal/model/State;->player:Lcom/sightcall/universal/internal/model/State$Player;

    iput-object p8, p0, Lcom/sightcall/universal/internal/model/State;->share:Lcom/sightcall/universal/internal/model/State$Share;

    iput-object p9, p0, Lcom/sightcall/universal/internal/model/State;->os:Lcom/sightcall/universal/internal/model/State$Os;

    iput-object p10, p0, Lcom/sightcall/universal/internal/model/State;->app:Lcom/sightcall/universal/internal/model/State$App;

    iput-object p11, p0, Lcom/sightcall/universal/internal/model/State;->ar:Lcom/sightcall/universal/ar/ArCoreState;

    iput-boolean p12, p0, Lcom/sightcall/universal/internal/model/State;->liveQr:Z

    return-void
.end method

.method public static create(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/internal/model/State;
    .locals 15

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State;->getId(Lnet/rtccloud/sdk/Call;)I

    move-result v3

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State;->getRole(Lcom/sightcall/universal/model/Session;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State;->getUsecaseId(Lcom/sightcall/universal/model/Session;)I

    move-result v5

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State;->getProductId(Lcom/sightcall/universal/model/Session;)I

    move-result v6

    invoke-static {v1}, Lcom/sightcall/universal/internal/model/State$App;->create(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/State$App;

    move-result-object v12

    invoke-static {v1}, Lcom/sightcall/universal/internal/model/State$Os;->create(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/State$Os;

    move-result-object v11

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/model/State$Share;->create(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Share;

    move-result-object v10

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State$Player;->create(Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Player;

    move-result-object v9

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State$Micro;->create(Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Micro;

    move-result-object v8

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State$Camera;->create(Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Camera;

    move-result-object v7

    invoke-static {}, Lcom/sightcall/universal/ar/ArCoreState;->get()Lcom/sightcall/universal/ar/ArCoreState;

    move-result-object v13

    invoke-static {v1}, Lcom/sightcall/universal/internal/model/State;->isLiveQrAvailable(Landroid/content/Context;)Z

    move-result v14

    new-instance v2, Lcom/sightcall/universal/internal/model/State;

    invoke-direct/range {v2 .. v14}, Lcom/sightcall/universal/internal/model/State;-><init>(ILjava/lang/String;IILcom/sightcall/universal/internal/model/State$Camera;Lcom/sightcall/universal/internal/model/State$Micro;Lcom/sightcall/universal/internal/model/State$Player;Lcom/sightcall/universal/internal/model/State$Share;Lcom/sightcall/universal/internal/model/State$Os;Lcom/sightcall/universal/internal/model/State$App;Lcom/sightcall/universal/ar/ArCoreState;Z)V

    return-object v2
.end method

.method private static getId(Lnet/rtccloud/sdk/Call;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getProductId(Lcom/sightcall/universal/model/Session;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase;->productId:Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getRole(Lcom/sightcall/universal/model/Session;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    const-string v0, "guest"

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/sightcall/universal/internal/model/State$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    return-object v0

    :cond_2
    const-string p0, "attendee"

    return-object p0

    :cond_3
    const-string p0, "host"

    return-object p0
.end method

.method private static getUsecaseId(Lcom/sightcall/universal/model/Session;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->idInt()I

    move-result p0

    return p0
.end method

.method private static isLiveQrAvailable(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->b:Lcom/google/android/gms/internal/vision/zzk;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzk;->b:I

    new-instance v2, Lcom/google/android/gms/internal/vision/zzm;

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->a:Landroid/content/Context;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/vision/zzm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzk;)V

    new-instance p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-direct {p0, v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;-><init>(Lcom/google/android/gms/internal/vision/zzm;)V

    iget-object p0, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->a:Lcom/google/android/gms/internal/vision/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzt;->b()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/model/State;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

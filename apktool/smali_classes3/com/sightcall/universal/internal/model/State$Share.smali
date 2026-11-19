.class Lcom/sightcall/universal/internal/model/State$Share;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Share"
.end annotation


# instance fields
.field final action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "action"
    .end annotation
.end field

.field final started:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "started"
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field

.field final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/model/State$Share;->started:Z

    iput-object p2, p0, Lcom/sightcall/universal/internal/model/State$Share;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/State$Share;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/internal/model/State$Share;->action:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Share;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/State$Share;->getType(Lnet/rtccloud/sdk/ScreenshareProducer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/State$Share;->getUrl(Lnet/rtccloud/sdk/ScreenshareProducer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State$Share;->getAction(Lcom/sightcall/universal/model/Session;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/sightcall/universal/internal/model/State$Share;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/sightcall/universal/internal/model/State$Share;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getAction(Lcom/sightcall/universal/model/Session;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean v0, p0, Lcom/sightcall/universal/model/CallParameters;->isSharePromptDisplayed:Z

    if-eqz v0, :cond_0

    const-string p0, "popup"

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/universal/model/CallParameters;->isSharePictureGalleryDisplayed:Z

    if-eqz v0, :cond_1

    const-string p0, "picture"

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/sightcall/universal/model/CallParameters;->isShareVideoGalleryDisplayed:Z

    if-eqz v0, :cond_2

    const-string p0, "video"

    return-object p0

    :cond_2
    iget-boolean p0, p0, Lcom/sightcall/universal/model/CallParameters;->isShareViewFinderDisplayed:Z

    if-eqz p0, :cond_3

    const-string p0, "photo"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getType(Lnet/rtccloud/sdk/ScreenshareProducer;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string p0, "url"

    return-object p0

    :cond_0
    instance-of p0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerView;

    if-eqz p0, :cond_1

    const-string p0, "picture photo"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUrl(Lnet/rtccloud/sdk/ScreenshareProducer;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

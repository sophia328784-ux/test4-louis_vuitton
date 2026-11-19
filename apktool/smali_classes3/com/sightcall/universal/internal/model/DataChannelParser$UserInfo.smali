.class public final Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DataChannelParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfo"
.end annotation


# instance fields
.field private final caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "caseAttendee"
    .end annotation
.end field

.field private final clientMode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "clientMode"
    .end annotation
.end field

.field private final displayName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "displayname"
    .end annotation
.end field

.field private final ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ip"
    .end annotation
.end field

.field private final isMobile:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "isMobile"
    .end annotation
.end field

.field private final os:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "os"
    .end annotation
.end field

.field private final pincode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "sixDigits"
    .end annotation
.end field

.field private final product:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "product"
    .end annotation
.end field

.field private final usecaseId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->isMobile:Z

    const-string v0, "mobileApp"

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->clientMode:Ljava/lang/String;

    iget-object v0, p2, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->usecaseId:Ljava/lang/String;

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase;->productId:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->product:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    const-string p1, "apad"

    goto :goto_1

    :cond_1
    const-string p1, "aphone"

    :goto_1
    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->os:Ljava/lang/String;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object p1

    iget-object v0, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->uri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/User;->ip()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->ip:Ljava/lang/String;

    iget-object p1, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->pin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->pincode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->caseReportId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

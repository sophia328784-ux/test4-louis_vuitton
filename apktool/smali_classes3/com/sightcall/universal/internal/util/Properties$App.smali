.class Lcom/sightcall/universal/internal/util/Properties$App;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/util/Properties$App$Version;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "packagename"
    .end annotation
.end field

.field private final version:Lcom/sightcall/universal/internal/util/Properties$App$Version;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "version"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->appName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$App;->name:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/internal/util/Properties$App$Version;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sightcall/universal/internal/util/Properties$App$Version;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$App;->version:Lcom/sightcall/universal/internal/util/Properties$App$Version;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/util/Properties$App;->packageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/util/Properties$App;-><init>(Landroid/content/Context;)V

    return-void
.end method

.class public final Lcom/sightcall/universal/internal/util/Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/util/Properties$Os;,
        Lcom/sightcall/universal/internal/util/Properties$Hardware;,
        Lcom/sightcall/universal/internal/util/Properties$App;
    }
.end annotation


# instance fields
.field private final app:Lcom/sightcall/universal/internal/util/Properties$App;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "app"
    .end annotation
.end field

.field private final hardware:Lcom/sightcall/universal/internal/util/Properties$Hardware;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware"
    .end annotation
.end field

.field private final os:Lcom/sightcall/universal/internal/util/Properties$Os;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "os"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/internal/util/Properties$Os;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/util/Properties$Os;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties;->os:Lcom/sightcall/universal/internal/util/Properties$Os;

    new-instance v0, Lcom/sightcall/universal/internal/util/Properties$Hardware;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/util/Properties$Hardware;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties;->hardware:Lcom/sightcall/universal/internal/util/Properties$Hardware;

    new-instance v0, Lcom/sightcall/universal/internal/util/Properties$App;

    invoke-direct {v0, p1, v1}, Lcom/sightcall/universal/internal/util/Properties$App;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties;->app:Lcom/sightcall/universal/internal/util/Properties$App;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/util/Properties;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

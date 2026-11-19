.class Lcom/sightcall/universal/internal/model/State$App;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/State$App$Version;
    }
.end annotation


# instance fields
.field final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field final packageName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field final version:Lcom/sightcall/universal/internal/model/State$App$Version;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/internal/model/State$App$Version;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/State$App;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/model/State$App;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/State$App;->version:Lcom/sightcall/universal/internal/model/State$App$Version;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/State$App;
    .locals 3

    invoke-static {p0}, Lnet/rtccloud/sdk/util/Utils;->appName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/internal/model/State$App;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State$App$Version;->create(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/State$App$Version;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Lcom/sightcall/universal/internal/model/State$App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/internal/model/State$App$Version;)V

    return-object v2
.end method

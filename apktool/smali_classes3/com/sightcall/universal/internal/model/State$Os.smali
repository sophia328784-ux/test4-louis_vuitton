.class Lcom/sightcall/universal/internal/model/State$Os;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Os"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/State$Os$Version;
    }
.end annotation


# instance fields
.field final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field

.field final version:Lcom/sightcall/universal/internal/model/State$Os$Version;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/internal/model/State$Os$Version;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/State$Os;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/model/State$Os;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/State$Os;->version:Lcom/sightcall/universal/internal/model/State$Os$Version;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/State$Os;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const-string p0, "tablet"

    goto :goto_0

    :cond_0
    const-string p0, "phone"

    :goto_0
    new-instance v0, Lcom/sightcall/universal/internal/model/State$Os;

    const-string v1, "android"

    invoke-static {}, Lcom/sightcall/universal/internal/model/State$Os$Version;->create()Lcom/sightcall/universal/internal/model/State$Os$Version;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sightcall/universal/internal/model/State$Os;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/internal/model/State$Os$Version;)V

    return-object v0
.end method

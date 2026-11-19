.class Lcom/sightcall/universal/internal/util/Properties$Os;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Os"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/util/Properties$Os$Version;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field

.field private final version:Lcom/sightcall/universal/internal/util/Properties$Os$Version;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "version"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$Os;->name:Ljava/lang/String;

    new-instance v0, Lcom/sightcall/universal/internal/util/Properties$Os$Version;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/util/Properties$Os$Version;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$Os;->version:Lcom/sightcall/universal/internal/util/Properties$Os$Version;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sightcall/universal/internal/util/Properties$Os;-><init>()V

    return-void
.end method

.class Lcom/sightcall/universal/internal/util/Properties$Hardware;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hardware"
.end annotation


# instance fields
.field private final brand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "brand"
    .end annotation
.end field

.field private final manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "manufacturer"
    .end annotation
.end field

.field private final model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "model"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$Hardware;->manufacturer:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$Hardware;->brand:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$Hardware;->model:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sightcall/universal/internal/util/Properties$Hardware;-><init>()V

    return-void
.end method

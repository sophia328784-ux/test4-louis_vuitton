.class Lcom/sightcall/universal/internal/util/Properties$Os$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/util/Properties$Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private final code:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "code"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$Os$Version;->name:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->sdkVersion()I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/util/Properties$Os$Version;->code:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/sightcall/universal/internal/util/Properties$Os$Version;-><init>()V

    return-void
.end method

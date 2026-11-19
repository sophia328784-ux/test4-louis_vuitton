.class public final Lcom/perfectcorp/perfectlib/Configuration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

.field public b:Lcom/perfectcorp/perfectlib/Path;

.field public c:Lcom/perfectcorp/perfectlib/Path;

.field public d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->SD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/Configuration;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/Configuration;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/Configuration;-><init>(Lcom/perfectcorp/perfectlib/Configuration$Builder;)V

    return-object v0
.end method

.method public final setConfigFile(Lcom/perfectcorp/perfectlib/Path;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->c:Lcom/perfectcorp/perfectlib/Path;

    return-object p0
.end method

.method public final setDeveloperMode(Z)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->g:Z

    return-object p0
.end method

.method public final setEnableDataTracking(Z)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->j:Z

    return-object p0
.end method

.method public final setFunStickerQuality(Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 1

    const-string v0, "funStickerQuality can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    return-object p0
.end method

.method public final setImageSource(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 1

    const-string v0, "imageSource can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-object p0
.end method

.method public final setMappingMode(Z)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->h:Z

    return-object p0
.end method

.method public final setModelPath(Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 1

    const-string v0, "modelPath can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    return-object p0
.end method

.method public final setPreloadPath(Lcom/perfectcorp/perfectlib/Path;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->b:Lcom/perfectcorp/perfectlib/Path;

    return-object p0
.end method

.method public final setPreviewMode(Z)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->i:Z

    return-object p0
.end method

.method public final setSkinCareRecommendationId(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->k:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.class public Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;
    }
.end annotation


# instance fields
.field private final backgroundFrameProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;",
            ">;"
        }
    .end annotation
.end field

.field public final data:Ljava/lang/String;

.field public final expiredDate:Ljava/lang/String;

.field private final foregroundFrameProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;",
            ">;"
        }
    .end annotation
.end field

.field public final guid:Ljava/lang/String;

.field public final isDeleted:Z

.field private final parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

.field private final parsePayload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

.field public final payload:Ljava/lang/String;

.field public final rootFolder:Ljava/lang/String;

.field private final usageType:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->foregroundFrameProviders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->backgroundFrameProviders:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->payload:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->usageType:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->d:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->version:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->expiredDate:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->data:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->h:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->isDeleted:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BackgroundInfo"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->g:Ljava/lang/String;

    :try_start_0
    sget-object v2, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    invoke-virtual {v2, v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "[parseUiData] failed"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->b:Ljava/lang/String;

    :try_start_1
    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    invoke-virtual {v0, p1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "[parsePayload] failed"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    invoke-direct {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parsePayload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->foregroundStickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->foregroundFrameProviders:Ljava/util/List;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/d;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->bestFrameIndex:I

    invoke-direct {v2, v0, v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/d;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->backgroundStickers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->backgroundFrameProviders:Ljava/util/List;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/d;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->bestFrameIndex:I

    invoke-direct {v2, v0, v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/d;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parsePayload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    return-object p0
.end method

.method public final b()Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->usageType:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->foregroundStickers:Ljava/util/List;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->parseData:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->backgroundStickers:Ljava/util/List;

    return-object p0
.end method

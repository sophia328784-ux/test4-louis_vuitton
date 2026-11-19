.class public final Landroidx/media3/session/MediaSession$Builder;
.super Landroidx/media3/session/MediaSession$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/session/MediaSession$BuilderBase<",
        "Landroidx/media3/session/MediaSession;",
        "Landroidx/media3/session/MediaSession$Builder;",
        "Landroidx/media3/session/MediaSession$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/Player;)V
    .locals 1

    new-instance v0, Landroidx/media3/session/MediaSession$Builder$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/session/MediaSession$BuilderBase;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$Callback;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/MediaSession;
    .locals 15

    iget-boolean v0, p0, Landroidx/media3/session/MediaSession$Builder;->n:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v1, p0, Landroidx/media3/session/MediaSession$Builder;->n:Z

    sget-object v0, Landroidx/media3/session/MediaSession;->b:Ljava/lang/Object;

    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->G:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    iget-object v3, p0, Landroidx/media3/session/MediaSession$BuilderBase;->a:Landroid/content/Context;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    invoke-direct {v2, v3}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;-><init>(Landroid/content/Context;)V

    iput v0, v2, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->b:I

    iput-boolean v1, v2, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->c:Z

    new-instance v0, Landroidx/media3/datasource/DataSourceBitmapLoader;

    invoke-direct {v0, v2}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/media3/session/SizeLimitedBitmapLoader;

    invoke-direct {v4, v2, v0, v1}, Landroidx/media3/session/SizeLimitedBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;IZ)V

    iput-object v4, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    new-instance v0, Landroidx/media3/session/SizeAvoidingBitmapLoader;

    iget-object v1, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    sget-object v2, Landroidx/media3/session/MediaSession$BuilderBase;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/primitives/ImmutableIntArray;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v3, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int v7, v5, v7

    sub-int v7, v6, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v8

    sub-int/2addr v5, v6

    invoke-direct {v3, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    iget v5, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x6

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x6

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v5, Lcom/google/common/primitives/ImmutableIntArray;

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([I)V

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v4, v5

    :goto_1
    invoke-direct {v0, v1, v4}, Landroidx/media3/session/SizeAvoidingBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;Lcom/google/common/primitives/ImmutableIntArray;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    :cond_2
    new-instance v0, Landroidx/media3/session/CacheBitmapLoader;

    iget-object v1, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    invoke-direct {v0, v1}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    new-instance v2, Landroidx/media3/session/MediaSession;

    iget-object v9, p0, Landroidx/media3/session/MediaSession$BuilderBase;->d:Landroidx/media3/session/MediaSession$Callback;

    iget-object v12, p0, Landroidx/media3/session/MediaSession$BuilderBase;->g:Landroidx/media3/common/util/BitmapLoader;

    iget-boolean v13, p0, Landroidx/media3/session/MediaSession$BuilderBase;->h:Z

    iget-boolean v14, p0, Landroidx/media3/session/MediaSession$BuilderBase;->l:Z

    iget-object v3, p0, Landroidx/media3/session/MediaSession$BuilderBase;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/session/MediaSession$BuilderBase;->c:Ljava/lang/String;

    iget-object v5, p0, Landroidx/media3/session/MediaSession$BuilderBase;->b:Landroidx/media3/common/Player;

    iget-object v6, p0, Landroidx/media3/session/MediaSession$BuilderBase;->i:Lcom/google/common/collect/ImmutableList;

    iget-object v7, p0, Landroidx/media3/session/MediaSession$BuilderBase;->j:Lcom/google/common/collect/ImmutableList;

    iget-object v8, p0, Landroidx/media3/session/MediaSession$BuilderBase;->k:Lcom/google/common/collect/ImmutableList;

    iget-object v10, p0, Landroidx/media3/session/MediaSession$BuilderBase;->e:Landroid/os/Bundle;

    iget-object v11, p0, Landroidx/media3/session/MediaSession$BuilderBase;->f:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v14}, Landroidx/media3/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZ)V

    return-object v2
.end method

.method public final b(Landroidx/media3/session/MediaSession$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaSession$BuilderBase;->d:Landroidx/media3/session/MediaSession$Callback;

    return-void
.end method

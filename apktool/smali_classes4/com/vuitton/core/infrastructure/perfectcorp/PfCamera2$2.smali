.class Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v2, v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->n:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/Camera2ImageUtil;->a(Landroid/media/Image;)[B

    move-result-object v1

    sget-object v2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->p:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->n:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

    invoke-interface {p0, v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;->h([B)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

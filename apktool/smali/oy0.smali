.class public final synthetic Loy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Loy0;->b:I

    iput-object p2, p0, Loy0;->c:Ljava/lang/Object;

    iput-object p3, p0, Loy0;->d:Ljava/lang/Object;

    iput-object p4, p0, Loy0;->e:Ljava/lang/Object;

    iput-object p5, p0, Loy0;->f:Ljava/lang/Object;

    iput-object p6, p0, Loy0;->g:Ljava/lang/Object;

    iput-boolean p7, p0, Loy0;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Loy0;->b:I

    iget-boolean v1, p0, Loy0;->h:Z

    iget-object v2, p0, Loy0;->g:Ljava/lang/Object;

    iget-object v3, p0, Loy0;->f:Ljava/lang/Object;

    iget-object v4, p0, Loy0;->e:Ljava/lang/Object;

    iget-object v5, p0, Loy0;->d:Ljava/lang/Object;

    iget-object p0, p0, Loy0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/video/VideoCapture;

    check-cast v5, Landroidx/camera/core/processing/SurfaceEdge;

    check-cast v4, Landroidx/camera/core/impl/CameraInternal;

    check-cast v3, Landroidx/camera/video/impl/VideoCaptureConfig;

    check-cast v2, Landroidx/camera/core/impl/Timebase;

    sget-object v0, Landroidx/camera/video/VideoCapture;->F:Landroidx/camera/video/VideoCapture$Defaults;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-ne v4, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v5, v4, v0}, Landroidx/camera/core/processing/SurfaceEdge;->d(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->N:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v3, v0}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/VideoOutput;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    invoke-interface {v0, v3, v2, v1}, Landroidx/camera/video/VideoOutput;->g(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->O()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/perfectcorp/perfectlib/SkuHandler;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Z)Lcom/perfectcorp/perfectlib/ProductInfo;

    move-result-object p0

    invoke-virtual {v5, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/perfectcorp/perfectlib/SkuHandler;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Z)Lcom/perfectcorp/perfectlib/ProductInfo;

    move-result-object p0

    invoke-virtual {v5, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

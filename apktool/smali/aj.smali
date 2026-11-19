.class public final synthetic Laj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Laj;->a:I

    iput-object p1, p0, Laj;->b:Ljava/lang/Object;

    iput-object p2, p0, Laj;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Laj;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, Laj;->c:Ljava/lang/Object;

    iget-object p0, p0, Laj;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast v2, Landroidx/camera/core/SurfaceOutput;

    check-cast p1, Landroidx/camera/core/SurfaceOutput$Event;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    iget-object p1, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->i:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->b:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->d(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->c:Ljava/lang/Thread;

    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->c(Ljava/lang/Thread;)V

    invoke-virtual {p0, p1, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->i(Landroid/view/Surface;Z)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast v2, Landroidx/camera/core/SurfaceOutput;

    check-cast p1, Landroidx/camera/core/SurfaceOutput$Event;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->i:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->b:Landroidx/camera/core/processing/OpenGlRenderer;

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->d(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->c:Ljava/lang/Thread;

    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->c(Ljava/lang/Thread;)V

    invoke-virtual {p0, p1, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->i(Landroid/view/Surface;Z)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p0, Landroid/view/Surface;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

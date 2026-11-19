.class public final synthetic Landroidx/camera/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/camera/core/SurfaceRequest;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/view/c;->b:I

    iput-object p1, p0, Landroidx/camera/view/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/view/c;->c:Landroidx/camera/core/SurfaceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/view/c;->b:I

    iget-object v1, p0, Landroidx/camera/view/c;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object p0, p0, Landroidx/camera/view/c;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/view/TextureViewImplementation;

    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->h:Landroidx/camera/core/SurfaceRequest;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Landroidx/camera/view/TextureViewImplementation;->h:Landroidx/camera/core/SurfaceRequest;

    iput-object v2, p0, Landroidx/camera/view/TextureViewImplementation;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->l:Landroidx/camera/view/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/view/d;->a()V

    iput-object v2, p0, Landroidx/camera/view/TextureViewImplementation;->l:Landroidx/camera/view/d;

    :cond_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/view/PreviewView$1;

    iget-object p0, p0, Landroidx/camera/view/PreviewView$1;->b:Landroidx/camera/view/PreviewView;

    iget-object p0, p0, Landroidx/camera/view/PreviewView;->m:Landroidx/camera/core/Preview$SurfaceProvider;

    check-cast p0, Landroidx/camera/view/PreviewView$1;

    invoke-virtual {p0, v1}, Landroidx/camera/view/PreviewView$1;->a(Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

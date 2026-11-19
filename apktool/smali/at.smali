.class public final synthetic Lat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceRequest;I)V
    .locals 0

    iput p2, p0, Lat;->b:I

    iput-object p1, p0, Lat;->c:Landroidx/camera/core/SurfaceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lat;->b:I

    iget-object p0, p0, Lat;->c:Landroidx/camera/core/SurfaceRequest;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->c()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

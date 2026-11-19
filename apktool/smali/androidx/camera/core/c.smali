.class public final synthetic Landroidx/camera/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/core/c;->b:I

    iput-object p1, p0, Landroidx/camera/core/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/core/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/camera/core/c;->b:I

    iget-object v1, p0, Landroidx/camera/core/c;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/camera/core/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/AndroidImageReaderProxy;

    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v1, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->d(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/core/util/Consumer;

    check-cast v1, Landroid/view/Surface;

    sget-object v0, Landroidx/camera/core/SurfaceRequest;->q:Landroid/util/Range;

    new-instance v0, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;-><init>(ILandroid/view/Surface;)V

    invoke-interface {p0, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/core/util/Consumer;

    check-cast v1, Landroid/view/Surface;

    sget-object v0, Landroidx/camera/core/SurfaceRequest;->q:Landroid/util/Range;

    new-instance v0, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;-><init>(ILandroid/view/Surface;)V

    invoke-interface {p0, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/core/util/Consumer;

    check-cast v1, Landroid/view/Surface;

    sget-object v0, Landroidx/camera/core/SurfaceRequest;->q:Landroid/util/Range;

    new-instance v0, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroidx/camera/core/AutoValue_SurfaceRequest_Result;-><init>(ILandroid/view/Surface;)V

    invoke-interface {p0, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lh21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

.field public final synthetic d:Landroidx/camera/core/SurfaceRequest$TransformationInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;I)V
    .locals 0

    iput p3, p0, Lh21;->b:I

    iput-object p1, p0, Lh21;->c:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iput-object p2, p0, Lh21;->d:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lh21;->b:I

    iget-object v1, p0, Lh21;->d:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    iget-object p0, p0, Lh21;->c:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/camera/core/SurfaceRequest;->q:Landroid/util/Range;

    invoke-interface {p0, v1}, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;->f(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void

    :pswitch_0
    sget-object v0, Landroidx/camera/core/SurfaceRequest;->q:Landroid/util/Range;

    invoke-interface {p0, v1}, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;->f(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

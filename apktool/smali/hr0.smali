.class public final synthetic Lhr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    iput-object p1, p0, Lhr0;->b:Landroidx/camera/video/Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lhr0;->b:Landroidx/camera/video/Recorder;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->A(Landroid/view/Surface;)V

    return-void
.end method

.method public f(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    iget-object p0, p0, Lhr0;->b:Landroidx/camera/video/Recorder;

    iput-object p1, p0, Landroidx/camera/video/Recorder;->v:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-void
.end method

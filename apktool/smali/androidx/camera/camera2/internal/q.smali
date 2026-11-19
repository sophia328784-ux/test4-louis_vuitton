.class public final synthetic Landroidx/camera/camera2/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$Checker;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/internal/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/internal/q;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->b(Landroid/hardware/camera2/TotalCaptureResult;Z)Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->b(Landroid/hardware/camera2/TotalCaptureResult;Z)Z

    move-result p0

    return p0

    :pswitch_1
    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline;->b(Landroid/hardware/camera2/TotalCaptureResult;Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

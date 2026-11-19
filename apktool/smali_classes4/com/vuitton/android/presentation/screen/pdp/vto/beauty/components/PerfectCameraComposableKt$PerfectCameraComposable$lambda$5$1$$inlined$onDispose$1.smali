.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcom/perfectcorp/perfectlib/CameraView;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/perfectcorp/perfectlib/CameraView;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;->b:Lcom/perfectcorp/perfectlib/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;->b:Lcom/perfectcorp/perfectlib/CameraView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    return-void
.end method

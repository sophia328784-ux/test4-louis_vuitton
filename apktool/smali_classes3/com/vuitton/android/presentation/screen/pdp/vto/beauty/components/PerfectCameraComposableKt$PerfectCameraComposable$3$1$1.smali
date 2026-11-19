.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1",
        "Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;",
        "presentation"
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
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "MakeupCam init failed"

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->d:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onSuccess(Lcom/perfectcorp/perfectlib/MakeupCam;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/MakeupCam;->onCreated()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->enableLiplinerOnTop(Z)V

    new-instance v0, Lk0;

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v2, v1}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

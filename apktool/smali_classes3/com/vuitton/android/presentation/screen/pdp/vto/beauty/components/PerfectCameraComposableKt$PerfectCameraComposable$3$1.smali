.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt$PerfectCameraComposable$3$1"
    f = "PerfectCameraComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/perfectcorp/perfectlib/CameraView;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/MakeupCam;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->c:Lcom/perfectcorp/perfectlib/CameraView;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->d:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->e:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->j:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->i:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->j:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->b:Z

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->c:Lcom/perfectcorp/perfectlib/CameraView;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->d:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->e:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->f:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->g:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->h:Lkotlin/jvm/functions/Function2;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;-><init>(ZLcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/MakeupCam;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->c:Lcom/perfectcorp/perfectlib/CameraView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->d:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->i:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->g:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->h:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->create(Lcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;)V

    :cond_0
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->e:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$3$1;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;
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
    c = "com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$1$1"
    f = "LvLoading.kt"
    l = {
        0xce
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-wide p3, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->e:J

    iput-object p5, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->g:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->g:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->c:Z

    iget-object v2, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-wide v3, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->e:J

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;-><init>(ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->c:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    :goto_0
    if-nez p1, :cond_4

    iput v2, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->b:I

    iget-wide v1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->e:J

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$1$1;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$onCreate$1$1$12$1"
    f = "BeautyVtoActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->d:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->c:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->o:Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->o:Lcom/perfectcorp/perfectlib/SkuInfo;

    if-eqz v0, :cond_2

    new-instance v2, Lce;

    const/4 v3, 0x5

    invoke-direct {v2, v1, p1, v3}, Lce;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$12$1;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v1, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->I(Lkotlinx/coroutines/CoroutineScope;Lcom/perfectcorp/perfectlib/SkuInfo;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lw9;

    const/16 v0, 0x13

    invoke-direct {p1, v0}, Lw9;-><init>(I)V

    invoke-virtual {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->J(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

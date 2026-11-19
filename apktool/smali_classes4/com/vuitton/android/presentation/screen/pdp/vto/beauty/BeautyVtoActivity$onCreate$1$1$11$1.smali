.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$onCreate$1$1$11$1"
    f = "BeautyVtoActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->e:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->c:Landroidx/compose/runtime/MutableState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    if-ne v0, v2, :cond_2

    new-instance p0, Lbe;

    const/4 p1, 0x7

    invoke-direct {p0, v3, p1}, Lbe;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;

    invoke-direct {v0, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lbe;)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/VtoApplier;->clearAllEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$11$1;->e:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->n:Lcom/perfectcorp/perfectlib/LookInfo;

    if-eqz v0, :cond_5

    new-instance v2, Lce;

    const/4 v4, 0x3

    invoke-direct {v2, v3, p1, v4}, Lce;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/LookSetting;->create(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/LookSetting;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$applyLook$2;

    invoke-direct {v0, v3, p1, v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$applyLook$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lcom/perfectcorp/perfectlib/LookSetting;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v1, v1, v0, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_4
    new-instance v0, Lq;

    invoke-direct {v0, p1, v3, p0}, Lq;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v3, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->K(Lkotlin/jvm/functions/Function0;)V

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1"
    f = "ThematicPlpThemesOverlay.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->d:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->d:Landroidx/compose/runtime/MutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->b:I

    const-wide/16 v1, 0xfa

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$1$1"
    f = "RepairDetailBffComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffComposableKt$RepairDetailBffComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsOngoingScreen;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    invoke-direct {v1, v3, v0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsOngoingScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsHistoryScreen;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v3, p1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_5

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :cond_5
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->g:Ljava/lang/String;

    invoke-direct {v1, v3, v0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsHistoryScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

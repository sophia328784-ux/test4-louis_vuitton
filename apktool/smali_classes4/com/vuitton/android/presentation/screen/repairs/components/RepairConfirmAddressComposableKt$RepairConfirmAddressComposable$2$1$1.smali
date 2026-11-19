.class final Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;->d:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p1, Lkotlin/Result$Failure;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;->d:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array {p2, v0}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->S(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/components/RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

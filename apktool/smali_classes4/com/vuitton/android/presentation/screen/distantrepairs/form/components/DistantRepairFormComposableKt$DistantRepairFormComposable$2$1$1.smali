.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    invoke-interface {p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;->w3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    invoke-interface {v0, p2, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;->P(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComposableKt$DistantRepairFormComposable$2$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;->TWO:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;->s0(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

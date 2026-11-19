.class final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$replaceCurrentAppointment$1"
    f = "OsaContactFormViewModelImpl.kt"
    l = {
        0x209
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->b:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->U:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->p:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V

    invoke-virtual {v4, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-direct {v1, v4, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$replaceCurrentAppointment$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

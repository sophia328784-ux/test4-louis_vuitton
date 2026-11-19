.class public final synthetic Lvj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;I)V
    .locals 0

    iput p3, p0, Lvj0;->b:I

    iput-object p1, p0, Lvj0;->c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iput-object p2, p0, Lvj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvj0;->b:I

    iget-object v1, p0, Lvj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iget-object p0, p0, Lvj0;->c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->G4(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->e4()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

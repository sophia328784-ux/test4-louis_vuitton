.class public final synthetic Lqj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lqj0;->b:I

    iput-object p1, p0, Lqj0;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p2, p0, Lqj0;->d:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqj0;->b:I

    iget-object v1, p0, Lqj0;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lqj0;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

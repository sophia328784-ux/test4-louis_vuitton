.class public final synthetic Lxj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Lxj0;->b:I

    iput-object p1, p0, Lxj0;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p2, p0, Lxj0;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lxj0;->b:I

    iget-object v1, p0, Lxj0;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lxj0;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

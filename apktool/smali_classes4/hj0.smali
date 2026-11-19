.class public final synthetic Lhj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p4, p0, Lhj0;->b:I

    iput-object p1, p0, Lhj0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lhj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iput-object p3, p0, Lhj0;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lhj0;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;

    iget-object v1, p0, Lhj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;-><init>(Z)V

    iget-object v1, p0, Lhj0;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lhj0;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;

    iget-object v1, p0, Lhj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;-><init>(Z)V

    iget-object v1, p0, Lhj0;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lhj0;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;

    iget-object v1, p0, Lhj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;-><init>(Z)V

    iget-object v1, p0, Lhj0;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lhj0;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;

    iget-object v1, p0, Lhj0;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;-><init>(Z)V

    iget-object v1, p0, Lhj0;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lhj0;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

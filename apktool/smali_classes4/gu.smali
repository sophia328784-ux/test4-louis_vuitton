.class public final synthetic Lgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;I)V
    .locals 0

    iput p2, p0, Lgu;->b:I

    iput-object p1, p0, Lgu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lgu;->b:I

    iget-object p0, p0, Lgu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->c()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PostalCodeExclusionAppearedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$PostalCodeExclusionAppearedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleConfirmClickedEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;->CREATION:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleConfirmClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectTimeEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;->CREATION:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectTimeEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;->CREATION:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$EligibleProductCardClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$EligibleProductCardClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

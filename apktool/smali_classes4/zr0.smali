.class public final synthetic Lzr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;I)V
    .locals 0

    iput p4, p0, Lzr0;->b:I

    iput-object p1, p0, Lzr0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lzr0;->d:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lzr0;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lzr0;->b:I

    iget-object v1, p0, Lzr0;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    iget-object v2, p0, Lzr0;->d:Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Lzr0;->c:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/time/LocalDate;

    check-cast p2, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;->RESCHEDULE:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;->RESCHEDULE:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleSelectDateEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

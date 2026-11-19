.class public final synthetic Lsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Lsf;->b:I

    iput-object p1, p0, Lsf;->c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lsf;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lsf;->b:I

    iget-object v1, p0, Lsf;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lsf;->c:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AdditionalExperienceClickEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;)V

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;I)V
    .locals 0

    iput p2, p0, Lqg;->b:I

    iput-object p1, p0, Lqg;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqg;->b:I

    iget-object p0, p0, Lqg;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseAbortedEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseAbortedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->A5(Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ContinueEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ContinueEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->E7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

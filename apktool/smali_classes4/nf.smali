.class public final synthetic Lnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Lnf;->b:I

    iput-object p1, p0, Lnf;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iput-object p2, p0, Lnf;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lnf;->b:I

    iget-object v1, p0, Lnf;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lnf;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseConfirmedEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseConfirmedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->Ib()V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->A5(Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

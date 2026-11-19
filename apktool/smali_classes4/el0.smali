.class public final synthetic Lel0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V
    .locals 0

    iput p2, p0, Lel0;->b:I

    iput-object p1, p0, Lel0;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lel0;->b:I

    iget-object p0, p0, Lel0;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->c()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->C1(Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

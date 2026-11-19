.class public final synthetic Lhl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;I)V
    .locals 0

    iput p2, p0, Lhl0;->b:I

    iput-object p1, p0, Lhl0;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lhl0;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$LeaveFiltersEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$LeaveFiltersEvent;

    iget-object p0, p0, Lhl0;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Ac(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Ac(Z)V

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

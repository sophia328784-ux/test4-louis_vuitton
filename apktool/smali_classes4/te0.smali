.class public final synthetic Lte0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;I)V
    .locals 0

    iput p2, p0, Lte0;->b:I

    iput-object p1, p0, Lte0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lte0;->b:I

    iget-object p0, p0, Lte0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenMyLV;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OpenMyLV;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->fa(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

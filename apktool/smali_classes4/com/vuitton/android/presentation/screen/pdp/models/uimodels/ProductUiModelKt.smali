.class public abstract Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;->h()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

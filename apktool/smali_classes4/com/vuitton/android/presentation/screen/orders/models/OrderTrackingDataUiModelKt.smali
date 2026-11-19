.class public abstract Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModelKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->b:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "click_and_collect"

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v2, "standard"

    :goto_0
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->f:Ljava/lang/String;

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.class public final Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;
.super Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeQuantitySucceeded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;",
        "cart",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;",
        "newQuantity",
        "",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "change_quantity_succeeded"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

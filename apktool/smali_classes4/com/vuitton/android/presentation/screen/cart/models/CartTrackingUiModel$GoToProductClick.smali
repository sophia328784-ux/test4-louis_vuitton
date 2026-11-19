.class public final Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;
.super Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoToProductClick"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;",
        "cart",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V",
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
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "go_to_productsheet"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

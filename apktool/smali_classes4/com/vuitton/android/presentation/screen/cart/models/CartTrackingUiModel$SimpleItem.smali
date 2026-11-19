.class public abstract Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001\u0082\u0001\u0007\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityFailed;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityIntention;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemConfirm;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemFailed;",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemSucceeded;",
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


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move-object p3, p5

    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SimpleItem;->c:Ljava/lang/String;

    return-void
.end method

.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;
.super Lcom/vuitton/android/presentation/notification/NotificationAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$NotifyItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;",
        "Lcom/vuitton/android/presentation/notification/NotificationAction;",
        "GoToWishlist",
        "GoToCart",
        "NotifyItem",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;",
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
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move-object p1, p3

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/notification/NotificationAction;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

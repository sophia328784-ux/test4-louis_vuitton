.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;
.super Lcom/vuitton/android/presentation/notification/NotificationAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;",
        "Lcom/vuitton/android/presentation/notification/NotificationAction;",
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


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x7f14141c

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/notification/NotificationAction;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;

    return-void
.end method

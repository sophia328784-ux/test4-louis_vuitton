.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;
.super Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoToWishlist"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;",
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
.field public static final b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v2, 0x2

    const v3, 0x7f14141c

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x6987a3b9

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "GoToWishlist"

    return-object p0
.end method

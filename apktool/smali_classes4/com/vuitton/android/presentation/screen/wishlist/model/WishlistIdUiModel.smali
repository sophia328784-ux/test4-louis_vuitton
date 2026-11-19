.class public final Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;",
        "Landroid/os/Parcelable;",
        "Companion",
        "id",
        "",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, ""

    sput-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "WishlistIdUiModel(id="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

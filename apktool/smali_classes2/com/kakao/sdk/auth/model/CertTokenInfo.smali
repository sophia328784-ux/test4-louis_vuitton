.class public final Lcom/kakao/sdk/auth/model/CertTokenInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/model/CertTokenInfo;",
        "Landroid/os/Parcelable;",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "token",
        "",
        "txId",
        "<init>",
        "(Lcom/kakao/sdk/auth/model/OAuthToken;Ljava/lang/String;)V",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "getToken",
        "()Lcom/kakao/sdk/auth/model/OAuthToken;",
        "Ljava/lang/String;",
        "getTxId",
        "()Ljava/lang/String;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kakao/sdk/auth/model/CertTokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final token:Lcom/kakao/sdk/auth/model/OAuthToken;

.field private final txId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/auth/model/CertTokenInfo$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/auth/model/CertTokenInfo$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/model/OAuthToken;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->token:Lcom/kakao/sdk/auth/model/OAuthToken;

    iput-object p2, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->txId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/auth/model/CertTokenInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/auth/model/CertTokenInfo;

    iget-object v1, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->token:Lcom/kakao/sdk/auth/model/OAuthToken;

    iget-object v3, p1, Lcom/kakao/sdk/auth/model/CertTokenInfo;->token:Lcom/kakao/sdk/auth/model/OAuthToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->txId:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/auth/model/CertTokenInfo;->txId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->token:Lcom/kakao/sdk/auth/model/OAuthToken;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->txId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CertTokenInfo(token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->token:Lcom/kakao/sdk/auth/model/OAuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", txId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->txId:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->token:Lcom/kakao/sdk/auth/model/OAuthToken;

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/auth/model/OAuthToken;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/kakao/sdk/auth/model/CertTokenInfo;->txId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/kakao/sdk/common/model/AppsError;
.super Lcom/kakao/sdk/common/model/KakaoSdkError;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/AppsError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/AppsError;",
        "Lcom/kakao/sdk/common/model/KakaoSdkError;",
        "Landroid/os/Parcelable;",
        "",
        "statusCode",
        "Lcom/kakao/sdk/common/model/AppsErrorCause;",
        "reason",
        "Lcom/kakao/sdk/common/model/AppsErrorResponse;",
        "response",
        "<init>",
        "(ILcom/kakao/sdk/common/model/AppsErrorCause;Lcom/kakao/sdk/common/model/AppsErrorResponse;)V",
        "I",
        "getStatusCode",
        "()I",
        "Lcom/kakao/sdk/common/model/AppsErrorCause;",
        "getReason",
        "()Lcom/kakao/sdk/common/model/AppsErrorCause;",
        "Lcom/kakao/sdk/common/model/AppsErrorResponse;",
        "getResponse",
        "()Lcom/kakao/sdk/common/model/AppsErrorResponse;",
        "Companion",
        "common_release"
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
            "Lcom/kakao/sdk/common/model/AppsError;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/common/model/AppsError$Companion;


# instance fields
.field private final reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

.field private final response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/model/AppsError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/AppsError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsError;->Companion:Lcom/kakao/sdk/common/model/AppsError$Companion;

    new-instance v0, Lcom/kakao/sdk/common/model/AppsError$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/common/model/AppsError$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/kakao/sdk/common/model/AppsErrorCause;Lcom/kakao/sdk/common/model/AppsErrorResponse;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/kakao/sdk/common/model/AppsErrorResponse;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kakao/sdk/common/model/KakaoSdkError;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/kakao/sdk/common/model/AppsError;->statusCode:I

    iput-object p2, p0, Lcom/kakao/sdk/common/model/AppsError;->reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

    iput-object p3, p0, Lcom/kakao/sdk/common/model/AppsError;->response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

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
    instance-of v1, p1, Lcom/kakao/sdk/common/model/AppsError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/common/model/AppsError;

    iget v1, p0, Lcom/kakao/sdk/common/model/AppsError;->statusCode:I

    iget v3, p1, Lcom/kakao/sdk/common/model/AppsError;->statusCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/common/model/AppsError;->reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

    iget-object v3, p1, Lcom/kakao/sdk/common/model/AppsError;->reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/kakao/sdk/common/model/AppsError;->response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

    iget-object p1, p1, Lcom/kakao/sdk/common/model/AppsError;->response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/kakao/sdk/common/model/AppsError;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/common/model/AppsError;->reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/kakao/sdk/common/model/AppsError;->response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/AppsErrorResponse;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppsError(statusCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kakao/sdk/common/model/AppsError;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kakao/sdk/common/model/AppsError;->reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/kakao/sdk/common/model/AppsError;->response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/kakao/sdk/common/model/AppsError;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/kakao/sdk/common/model/AppsError;->reason:Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/kakao/sdk/common/model/AppsError;->response:Lcom/kakao/sdk/common/model/AppsErrorResponse;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/common/model/AppsErrorResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

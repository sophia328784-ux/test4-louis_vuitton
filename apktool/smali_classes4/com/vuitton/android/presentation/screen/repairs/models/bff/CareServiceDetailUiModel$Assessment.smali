.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Assessment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;",
        "Landroid/os/Parcelable;",
        "",
        "title",
        "careExpertNote",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;",
        "price",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;",
        "shippingAddress",
        "billingAddress",
        "",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;",
        "items",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Ljava/util/List;)V",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->g:Ljava/util/List;

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
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", careExpertNote="

    const-string v1, ", price="

    const-string v2, "Assessment(title="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", billingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$AssessmentItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B;\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "",
        "isBackOrder",
        "isPreOrder",
        "inStock",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;",
        "disclaimer",
        "<init>",
        "(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    const/4 p7, 0x0

    if-eqz p1, :cond_1

    move v2, p7

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move v3, p7

    goto :goto_1

    :cond_2
    move v3, p3

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move v4, p7

    goto :goto_2

    :cond_3
    move v4, p4

    :goto_2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;-><init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->b:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->c:Z

    .line 38
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    .line 39
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    .line 40
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->c:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->c:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    :goto_0
    const-string v1, ", isBackOrder="

    const-string v2, ", isPreOrder="

    const-string v3, "SkuAvailabilityUiModel(sku="

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->c:Z

    invoke-static {v3, v0, v1, v2, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inStock="

    const-string v2, ", disclaimer="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->c:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-nez p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "",
        "absolutePositionOnLine",
        "displayedPositionOnLine",
        "Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;",
        "deliveryStateTitle",
        "",
        "milestone",
        "Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;",
        "state",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;)V",
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
            "Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/Integer;

.field public final e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

.field public final f:Z

.field public final g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->d:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->f:Z

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 25
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_0
    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_1

    const/4 p3, 0x0

    :cond_1
    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    .line 26
    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;)V

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
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->c:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->f:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->d:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->f:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", absolutePositionOnLine="

    const-string v1, ", displayedPositionOnLine="

    iget v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->c:I

    const-string v3, "DeliveryStateUiModel(id="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryStateTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", milestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

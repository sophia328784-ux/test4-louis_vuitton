.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0014BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;",
        "transactionId",
        "",
        "imageUrl",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;",
        "header",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;",
        "shippingInformation",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;",
        "appointmentInformation",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;",
        "assessment",
        "description",
        "",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;",
        "trackingSteps",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Step",
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
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

.field public final g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    const-string v0, ", imageUrl="

    const-string v1, ", header="

    const-string v2, "RepairDetailUiModel(transactionId="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assessment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingSteps="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, p0}, Lo60;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    if-nez p0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    return-void
.end method

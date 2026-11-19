.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    move-object v5, p0

    check-cast v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    move-object v6, p0

    check-cast v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    move-object v8, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_3
    if-eq v8, p0, :cond_3

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel$Step;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v10, 0x1

    invoke-static {v9, p1, v0, v8, v10}, Lpq0;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v8

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    return-object p0
.end method

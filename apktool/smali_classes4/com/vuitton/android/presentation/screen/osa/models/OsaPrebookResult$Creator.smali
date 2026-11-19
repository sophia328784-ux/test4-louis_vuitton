.class public final Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;",
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
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/vuitton/android/presentation/screen/osa/models/OsaPrebookResult;

    return-object p0
.end method

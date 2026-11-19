.class public final Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;",
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
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move-object p0, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;

    return-object p0
.end method

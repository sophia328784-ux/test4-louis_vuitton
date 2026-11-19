.class public final Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "address",
        "",
        "centerLatitude",
        "centerLongitude",
        "northEastLatitude",
        "northEastLongitude",
        "southWestLatitude",
        "southWestLongitude",
        "<init>",
        "(Ljava/lang/String;DDDDDD)V",
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
            "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D

.field public final h:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDDDD)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    iput-wide p4, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    iput-wide p6, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    iput-wide p8, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    iput-wide p10, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    iput-wide p12, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    iget-wide v5, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    iget-wide v5, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    iget-wide v5, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    iget-wide v5, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    iget-wide v5, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    iget-wide p0, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaceGeocodingUiModel(address="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", centerLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", northEastLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", northEastLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", southWestLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", southWestLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

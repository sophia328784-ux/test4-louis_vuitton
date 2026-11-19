.class public final Lcom/google/android/gms/maps/model/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->z(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v0

    move v7, v5

    move v6, v1

    move-object v4, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, p0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    invoke-static {v8, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->y(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v8, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->q(ILandroid/os/Parcel;)F

    move-result v7

    goto :goto_0

    :cond_1
    invoke-static {v8, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->m(ILandroid/os/Parcel;)Z

    move-result v6

    goto :goto_0

    :cond_2
    invoke-static {v8, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->q(ILandroid/os/Parcel;)F

    move-result v5

    goto :goto_0

    :cond_3
    invoke-static {v8, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->m(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {v8, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->s(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    sget p1, Lcom/google/android/gms/internal/maps/zzay;->a:I

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"

    invoke-interface {v4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/maps/zzaz;

    if-eqz v0, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/maps/zzaz;

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/maps/zzax;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/maps/zza;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/internal/maps/zzaz;

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput v5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:F

    iput-boolean v6, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    iput v7, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/maps/model/TileOverlayOptions;

    return-object p0
.end method

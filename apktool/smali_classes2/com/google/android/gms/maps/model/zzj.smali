.class public final Lcom/google/android/gms/maps/model/zzj;
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
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->z(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, p0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    invoke-static {v5, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->y(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v5, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->t(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v5, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->t(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v5, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->s(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-static {v5, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const p1, -0x4cebee

    iput p1, p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;->d:I

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;->e:I

    iput-object v3, p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;->b:Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->F2(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;->c:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput v0, p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;->d:I

    iput v2, p0, Lcom/google/android/gms/maps/model/PinConfig$Glyph;->e:I

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/maps/model/PinConfig$Glyph;

    return-object p0
.end method

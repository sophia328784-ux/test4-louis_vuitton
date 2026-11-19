.class public final Lcom/google/android/gms/internal/location/zzg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzg;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/location/DeviceOrientationRequest;


# instance fields
.field public final b:Lcom/google/android/gms/location/DeviceOrientationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/location/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;

    const-wide/16 v1, 0x4e20

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;-><init>(J)V

    new-instance v1, Lcom/google/android/gms/location/DeviceOrientationRequest;

    iget-wide v2, v0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->a:J

    iget-boolean v0, v0, Lcom/google/android/gms/location/DeviceOrientationRequest$Builder;->b:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/location/DeviceOrientationRequest;-><init>(JZ)V

    sput-object v1, Lcom/google/android/gms/internal/location/zzg;->c:Lcom/google/android/gms/location/DeviceOrientationRequest;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/DeviceOrientationRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzg;->b:Lcom/google/android/gms/location/DeviceOrientationRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzg;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/location/zzg;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzg;->b:Lcom/google/android/gms/location/DeviceOrientationRequest;

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzg;->b:Lcom/google/android/gms/location/DeviceOrientationRequest;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzg;->b:Lcom/google/android/gms/location/DeviceOrientationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientationRequest;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzg;->b:Lcom/google/android/gms/location/DeviceOrientationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/DeviceOrientationRequest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzg;->b:Lcom/google/android/gms/location/DeviceOrientationRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, p0, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method

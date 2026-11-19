.class public abstract Lcom/google/android/gms/tagmanager/zzp;
.super Lcom/google/android/gms/internal/gtm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_6

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementEventListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/tagmanager/zzk;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/gms/tagmanager/zzk;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/tagmanager/zzi;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    check-cast p0, Lcom/google/android/gms/tagmanager/zzc;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzc;->k2(Lcom/google/android/gms/tagmanager/zzk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementInterceptor"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/tagmanager/zzn;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/google/android/gms/tagmanager/zzn;

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/google/android/gms/tagmanager/zzl;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    check-cast p0, Lcom/google/android/gms/tagmanager/zzc;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzc;->K1(Lcom/google/android/gms/tagmanager/zzn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_6
    check-cast p0, Lcom/google/android/gms/tagmanager/zzc;

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzc;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zze;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzc;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzc;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

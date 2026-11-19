.class public final Lcom/google/android/gms/tagmanager/zzo;
.super Lcom/google/android/gms/internal/gtm/zzc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzq;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/gtm/zze;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final K1(Lcom/google/android/gms/tagmanager/zzn;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e0()Ljava/util/Map;
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzc;->F2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zze;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final k2(Lcom/google/android/gms/tagmanager/zzk;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

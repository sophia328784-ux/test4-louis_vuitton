.class public final Lcom/google/android/gms/internal/location/zzt;
.super Lcom/google/android/gms/internal/location/zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/location/zzu;


# virtual methods
.method public final C(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    check-cast p3, Lcom/google/android/gms/internal/base/zab;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p1, 0x58

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/location/zza;->F2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final G1(Lcom/google/android/gms/internal/location/zzed;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    check-cast p2, Lcom/google/android/gms/internal/base/zab;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p1, 0x59

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/location/zza;->F2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final I0(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzed;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    const/16 p1, 0x5a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/location/zza;->F2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final V0(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    check-cast p2, Lcom/google/android/gms/internal/location/zzb;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p1, 0x52

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/location/zza;->F2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/location/zzeh;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/location/zza;->F2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j()Landroid/location/Location;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/location/zza;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object p0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/location/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final n2(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/location/zzaa;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zza;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/location/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)V

    check-cast p2, Lcom/google/android/gms/internal/location/zzb;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x3f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/location/zza;->F2(ILandroid/os/Parcel;)V

    return-void
.end method

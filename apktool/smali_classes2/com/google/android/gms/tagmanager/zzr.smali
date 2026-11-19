.class public final Lcom/google/android/gms/tagmanager/zzr;
.super Lcom/google/android/gms/internal/gtm/zzc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzt;


# virtual methods
.method public final initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zze;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p5}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

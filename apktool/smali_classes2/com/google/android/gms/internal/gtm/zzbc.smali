.class public final Lcom/google/android/gms/internal/gtm/zzbc;
.super Lcom/google/android/gms/internal/gtm/zzc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbe;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/gtm/zze;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbb;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final h0()V
    .locals 2

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc;->E2()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzc;->G2(ILandroid/os/Parcel;)V

    return-void
.end method

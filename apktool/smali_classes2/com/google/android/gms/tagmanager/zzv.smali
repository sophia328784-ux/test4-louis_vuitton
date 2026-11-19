.class public abstract Lcom/google/android/gms/tagmanager/zzv;
.super Lcom/google/android/gms/internal/gtm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzw;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/tagmanager/zzw;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzw;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/tagmanager/zzu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->F2(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/tagmanager/zzq;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/gms/tagmanager/zzq;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v3, v1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/tagmanager/zzh;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/google/android/gms/tagmanager/zzh;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, v3, v2}, Lcom/google/android/gms/tagmanager/zzw;->getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)Lcom/google/android/gms/internal/gtm/zzbe;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/gtm/zze;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

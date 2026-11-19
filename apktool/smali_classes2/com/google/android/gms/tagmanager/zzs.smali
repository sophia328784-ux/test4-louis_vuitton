.class public abstract Lcom/google/android/gms/tagmanager/zzs;
.super Lcom/google/android/gms/internal/gtm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzt;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerApi"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzt;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/tagmanager/zzt;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzt;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/tagmanager/zzr;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10

    const-string v0, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    const-string v1, "com.google.android.gms.tagmanager.IMeasurementProxy"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zze;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->F2(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->F2(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v4, v1, Lcom/google/android/gms/tagmanager/zzq;

    if-eqz v4, :cond_2

    check-cast v1, Lcom/google/android/gms/tagmanager/zzq;

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/tagmanager/zzh;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/tagmanager/zzh;

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {v2, p1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/tagmanager/zzt;->previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V

    goto :goto_6

    :cond_5
    move-object v4, p0

    sget-object p0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/gtm/zze;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->F2(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    invoke-interface {v4, p0, p1}, Lcom/google/android/gms/tagmanager/zzt;->preview(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_6

    :cond_6
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->F2(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7

    move-object v1, v2

    goto :goto_4

    :cond_7
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v5, v1, Lcom/google/android/gms/tagmanager/zzq;

    if-eqz v5, :cond_8

    check-cast v1, Lcom/google/android/gms/tagmanager/zzq;

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/tagmanager/zzh;

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/tagmanager/zzh;

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {v2, p1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    invoke-interface {v4, p0, v1, v2}, Lcom/google/android/gms/tagmanager/zzt;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V

    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3
.end method

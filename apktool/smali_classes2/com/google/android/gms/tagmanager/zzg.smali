.class public abstract Lcom/google/android/gms/tagmanager/zzg;
.super Lcom/google/android/gms/internal/gtm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzh;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zze;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    check-cast p0, Lcom/google/android/gms/tagmanager/zzd;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzd;->f2(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zze;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    check-cast p0, Lcom/google/android/gms/tagmanager/zzd;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzd;->N(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

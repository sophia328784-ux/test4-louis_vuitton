.class public abstract Lcom/google/android/gms/internal/gtm/zzbd;
.super Lcom/google/android/gms/internal/gtm/zzd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbe;


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 p2, 0x66

    if-eq p1, p2, :cond_0

    return v2

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzcz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcz;->h0()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zze;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v8, v1

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzcz;

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/gtm/zzcz;->S(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_3
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzcz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcz;->c()V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/gtm/zzbb;

    if-eqz v6, :cond_6

    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbb;

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/gtm/zzaz;

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/gtm/zzc;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    move-object v0, v5

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzcz;

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/google/android/gms/internal/gtm/zzcz;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbb;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zze;->b(Landroid/os/Parcel;)V

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzcz;

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/google/android/gms/internal/gtm/zzcz;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbb;)V

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

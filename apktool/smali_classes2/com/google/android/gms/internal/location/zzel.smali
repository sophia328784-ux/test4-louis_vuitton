.class public final Lcom/google/android/gms/internal/location/zzel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/internal/location/zzeu;

.field public final c:Landroid/app/PendingIntent;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzem;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/location/zzeu;->c:Lcom/google/android/gms/internal/location/zzex;

    sget-object p1, Lcom/google/android/gms/internal/location/zzev;->f:Lcom/google/android/gms/internal/location/zzeu;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzeu;->p(Ljava/util/Collection;)Lcom/google/android/gms/internal/location/zzeu;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzel;->b:Lcom/google/android/gms/internal/location/zzeu;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzel;->c:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzel;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzel;->b:Lcom/google/android/gms/internal/location/zzeu;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->m(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzel;->c:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzel;->d:Ljava/lang/String;

    invoke-static {p1, p2, p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method

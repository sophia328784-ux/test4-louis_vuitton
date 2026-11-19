.class public final Lcom/google/android/gms/internal/location/zzef;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzeg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZZZJ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/ClientIdentity;

    iget v2, v1, Lcom/google/android/gms/common/internal/ClientIdentity;->b:I

    iget-object v1, v1, Lcom/google/android/gms/common/internal/ClientIdentity;->c:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->m:Landroid/os/WorkSource;

    :cond_2
    const/4 p1, 0x1

    if-eqz p3, :cond_3

    iput p1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->j:I

    :cond_3
    if-eqz p4, :cond_4

    const/4 p2, 0x2

    iput p2, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->k:I

    :cond_4
    if-eqz p5, :cond_5

    iput-boolean p1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->l:Z

    :cond_5
    if-eqz p6, :cond_6

    iput-boolean p1, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->h:Z

    :cond_6
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p7, p2

    if-eqz p2, :cond_9

    const-wide/16 p2, -0x1

    cmp-long p2, p7, p2

    if-eqz p2, :cond_8

    const-wide/16 p2, 0x0

    cmp-long p2, p7, p2

    if-ltz p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :cond_8
    :goto_2
    const-string p2, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/String;)V

    iput-wide p7, v0, Lcom/google/android/gms/location/LocationRequest$Builder;->i:J

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzef;->b:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzef;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/location/zzef;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzef;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzef;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzef;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzef;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzef;->b:Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, p0, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method

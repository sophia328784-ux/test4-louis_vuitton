.class public final Lcom/google/android/gms/internal/vision/zzah;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:[Lcom/google/android/gms/internal/vision/zzao;

.field public final c:Lcom/google/android/gms/internal/vision/zzab;

.field public final d:Lcom/google/android/gms/internal/vision/zzab;

.field public final e:Lcom/google/android/gms/internal/vision/zzab;

.field public final f:Ljava/lang/String;

.field public final g:F

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Z

.field public final k:I

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzao;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzah;->b:[Lcom/google/android/gms/internal/vision/zzao;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzah;->c:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzah;->d:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzah;->e:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzah;->f:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/vision/zzah;->g:F

    iput-object p7, p0, Lcom/google/android/gms/internal/vision/zzah;->h:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/vision/zzah;->i:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/vision/zzah;->j:Z

    iput p10, p0, Lcom/google/android/gms/internal/vision/zzah;->k:I

    iput p11, p0, Lcom/google/android/gms/internal/vision/zzah;->l:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->b:[Lcom/google/android/gms/internal/vision/zzao;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->c:Lcom/google/android/gms/internal/vision/zzab;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzah;->d:Lcom/google/android/gms/internal/vision/zzab;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzah;->e:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzah;->f:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzah;->g:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzah;->h:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzah;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzah;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xb

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzah;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xc

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzah;->l:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method

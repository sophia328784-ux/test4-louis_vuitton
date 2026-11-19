.class public final Lcom/google/android/gms/phenotype/zzi;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/phenotype/zzi;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/phenotype/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Z

.field public final e:D

.field public final f:Ljava/lang/String;

.field public final g:[B

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/phenotype/zzi;->c:J

    iput-boolean p4, p0, Lcom/google/android/gms/phenotype/zzi;->d:Z

    iput-wide p5, p0, Lcom/google/android/gms/phenotype/zzi;->e:D

    iput-object p7, p0, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/phenotype/zzi;->g:[B

    iput p9, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    iput p10, p0, Lcom/google/android/gms/phenotype/zzi;->i:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/google/android/gms/phenotype/zzi;

    iget-object v0, p1, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/zzi;->g:[B

    iget-object v2, p0, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p1, Lcom/google/android/gms/phenotype/zzi;->h:I

    iget v2, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    if-eqz v0, :cond_3

    return v0

    :cond_3
    if-eq v2, v5, :cond_13

    const/4 v0, 0x2

    if-eq v2, v0, :cond_11

    const/4 v0, 0x3

    if-eq v2, v0, :cond_10

    const/4 v0, 0x4

    if-eq v2, v0, :cond_c

    const/4 p1, 0x5

    if-ne v2, p1, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/phenotype/zzi;->g:[B

    if-ne p0, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move p1, v4

    :goto_1
    array-length v0, p0

    array-length v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p1, v0, :cond_8

    aget-byte v0, p0, p1

    aget-byte v2, v1, p1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_7

    return v0

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    array-length p0, p0

    array-length p1, v1

    if-ge p0, p1, :cond_9

    return v3

    :cond_9
    if-ne p0, p1, :cond_a

    return v4

    :cond_a
    return v5

    :cond_b
    const/16 p0, 0x1f

    const-string p1, "Invalid enum value: "

    invoke-static {p0, v2, p1}, Lz81;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return v4

    :cond_c
    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    if-ne p0, p1, :cond_d

    goto :goto_3

    :cond_d
    if-nez p0, :cond_e

    goto :goto_2

    :cond_e
    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_10
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/zzi;->e:D

    iget-wide p0, p1, Lcom/google/android/gms/phenotype/zzi;->e:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    :cond_11
    iget-boolean p1, p1, Lcom/google/android/gms/phenotype/zzi;->d:Z

    iget-boolean p0, p0, Lcom/google/android/gms/phenotype/zzi;->d:Z

    if-ne p0, p1, :cond_12

    goto :goto_3

    :cond_12
    if-eqz p0, :cond_14

    goto :goto_4

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/zzi;->c:J

    iget-wide p0, p1, Lcom/google/android/gms/phenotype/zzi;->c:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_15

    :cond_14
    :goto_2
    return v3

    :cond_15
    if-nez p0, :cond_16

    :goto_3
    return v4

    :cond_16
    :goto_4
    return v5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/phenotype/zzi;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/google/android/gms/phenotype/zzi;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/phenotype/zzn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p1, Lcom/google/android/gms/phenotype/zzi;->h:I

    iget v2, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    if-ne v2, v0, :cond_8

    iget v0, p0, Lcom/google/android/gms/phenotype/zzi;->i:I

    iget v3, p1, Lcom/google/android/gms/phenotype/zzi;->i:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 v0, 0x5

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/phenotype/zzi;->g:[B

    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->g:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x1f

    const-string p1, "Invalid enum value: "

    invoke-static {p0, v2, p1}, Lz81;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/gms/phenotype/zzn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/zzi;->e:D

    iget-wide p0, p1, Lcom/google/android/gms/phenotype/zzi;->e:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    iget-boolean p0, p0, Lcom/google/android/gms/phenotype/zzi;->d:Z

    iget-boolean p1, p1, Lcom/google/android/gms/phenotype/zzi;->d:Z

    if-ne p0, p1, :cond_6

    return v0

    :cond_6
    return v1

    :cond_7
    iget-wide v2, p0, Lcom/google/android/gms/phenotype/zzi;->c:J

    iget-wide p0, p1, Lcom/google/android/gms/phenotype/zzi;->c:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_8

    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flag("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    if-eq v4, v3, :cond_5

    const/4 v3, 0x2

    if-eq v4, v3, :cond_4

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    const/4 v5, 0x4

    const-string v6, "\'"

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->g:[B

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid type: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-wide v5, p0, Lcom/google/android/gms/phenotype/zzi;->e:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/phenotype/zzi;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-wide v5, p0, Lcom/google/android/gms/phenotype/zzi;->c:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/phenotype/zzi;->i:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/zzi;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-wide v3, p0, Lcom/google/android/gms/phenotype/zzi;->c:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x4

    invoke-static {p1, v0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-boolean v3, p0, Lcom/google/android/gms/phenotype/zzi;->d:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-wide v3, p0, Lcom/google/android/gms/phenotype/zzi;->e:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/gms/phenotype/zzi;->f:Ljava/lang/String;

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/gms/phenotype/zzi;->g:[B

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/phenotype/zzi;->h:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget p0, p0, Lcom/google/android/gms/phenotype/zzi;->i:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method

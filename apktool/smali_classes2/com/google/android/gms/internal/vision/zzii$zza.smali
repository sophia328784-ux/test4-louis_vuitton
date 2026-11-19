.class final Lcom/google/android/gms/internal/vision/zzii$zza;
.super Lcom/google/android/gms/internal/vision/zzii;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzhq;-><init>()V

    array-length v0, p1

    sub-int/2addr v0, p2

    or-int/2addr v0, p2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    return-void

    :cond_0
    array-length p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, p0}, Ld20;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final b(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    return-void
.end method

.method public final c(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    return-void
.end method

.method public final d(J)V
    .locals 10

    sget-boolean v0, Lcom/google/android/gms/internal/vision/zzii;->c:Z

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x80

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int v0, v1, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    :goto_0
    and-long v0, p1, v6

    cmp-long v0, v0, v4

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v0, v1

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v3, p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v0, v1

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v3, v8, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    ushr-long/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v6

    cmp-long v0, v8, v4

    iget v8, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    if-nez v0, :cond_2

    add-int/lit8 v0, v8, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v3, v8

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v2

    goto :goto_1

    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final f(I)V
    .locals 5

    sget-boolean v0, Lcom/google/android/gms/internal/vision/zzii;->c:Z

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhi;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int v3, v1, v0

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v0, v0

    int-to-byte p0, p1

    invoke-static {v2, p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v0, v0

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    ushr-int/lit8 v0, p1, 0x7

    and-int/lit8 v1, v0, -0x80

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    if-nez v1, :cond_1

    add-int/lit8 p1, v3, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long p0, v3

    int-to-byte v0, v0

    invoke-static {v2, v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    return-void

    :cond_1
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v3, v3

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    ushr-int/lit8 v0, p1, 0xe

    and-int/lit8 v1, v0, -0x80

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    if-nez v1, :cond_2

    add-int/lit8 p1, v3, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long p0, v3

    int-to-byte v0, v0

    invoke-static {v2, v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    return-void

    :cond_2
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v3, v3

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    ushr-int/lit8 v0, p1, 0x15

    and-int/lit8 v1, v0, -0x80

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    if-nez v1, :cond_3

    add-int/lit8 p1, v3, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long p0, v3

    int-to-byte v0, v0

    invoke-static {v2, v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    return-void

    :cond_3
    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v3, v3

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    ushr-int/lit8 p1, p1, 0x1c

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-long v0, v0

    int-to-byte p0, p1

    invoke-static {v2, p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->f([BBJ)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    if-nez v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final i(J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final j(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final u(II[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Pos: %d, limit: %d, len: %d"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p3
.end method

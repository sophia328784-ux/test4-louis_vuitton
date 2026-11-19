.class final Lcom/google/android/gms/internal/vision/zzil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzmr;


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/zzii;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzii;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    iput-object p0, p1, Lcom/google/android/gms/internal/vision/zzii;->a:Lcom/google/android/gms/internal/vision/zzil;

    return-void

    :cond_0
    const-string p0, "output"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final A(ILcom/google/android/gms/internal/vision/zzht;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzht;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    check-cast p2, Lcom/google/android/gms/internal/vision/zzid;

    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzid;->e:[B

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzid;->m()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzid;->f()I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V

    return-void
.end method

.method public final B(Ljava/util/List;IZ)V
    .locals 7

    const/16 v0, 0x3f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v2

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v5, v3, v1

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v3

    add-int/2addr p3, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    shl-long v3, p2, v1

    shr-long/2addr p2, v0

    xor-long/2addr p2, v3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->d(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-long v5, v3, v1

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    move-object v5, p0

    check-cast v5, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v5, p2, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final C(ILjava/lang/String;)V
    .locals 8

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    iget p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    add-int v2, v1, v3

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int/2addr p1, v2

    sget-object v4, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v4, p2, v0, v2, p1}, Lcom/google/android/gms/internal/vision/zzme;->b(Ljava/lang/String;[BII)I

    move-result p1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int v0, p1, v1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v7, p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzmd;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int/2addr p1, v2

    sget-object v3, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v3, p2, v0, v2, p1}, Lcom/google/android/gms/internal/vision/zzme;->b(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzmg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sget-object v2, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "inefficientWriteStringNoTag"

    const-string v6, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v4, "com.google.protobuf.CodedOutputStream"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_1
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/vision/zzii$zzb; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public final D(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shl-int/lit8 p3, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final E(FI)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->j(I)V

    return-void
.end method

.method public final F(Ljava/util/List;IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->i(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object p3, p0

    check-cast p3, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v3, 0x1

    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->i(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final G(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v2, 0x5

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzil;->L(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzkk;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzhf;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/vision/zzlc;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhf;->f(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzii;->a:Lcom/google/android/gms/internal/vision/zzil;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/vision/zzlc;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    return-void
.end method

.method public final J(DI)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->i(J)V

    return-void
.end method

.method public final K(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final L(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/vision/zzkk;

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii;->a:Lcom/google/android/gms/internal/vision/zzil;

    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/vision/zzlc;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    return-void
.end method

.method public final M(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzil;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->a(B)V

    return-void
.end method

.method public final b(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->a(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->a(B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final c(IJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->i(J)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->b(I)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    return-void
.end method

.method public final f(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->b(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    return-void
.end method

.method public final h(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->b(I)V

    return-void
.end method

.method public final i(IJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    return-void
.end method

.method public final j(ILjava/lang/Object;)V
    .locals 6

    instance-of v0, p2, Lcom/google/android/gms/internal/vision/zzht;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/vision/zzht;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzht;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    check-cast p2, Lcom/google/android/gms/internal/vision/zzid;

    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzid;->e:[B

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzid;->m()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/zzid;->f()I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V

    invoke-virtual {p0, v5, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/vision/zzkk;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzkk;->L()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/zzkk;->c(Lcom/google/android/gms/internal/vision/zzii;)V

    invoke-virtual {p0, v5, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    return-void
.end method

.method public final k(Ljava/util/List;IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->i(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    move-object p3, p0

    check-cast p3, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v3, 0x1

    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->i(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final l(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->j(I)V

    return-void
.end method

.method public final m(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v2, 0x5

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final n(IJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    return-void
.end method

.method public final o(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    return-void
.end method

.method public final p(Ljava/util/List;IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->i(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object p3, p0

    check-cast p3, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v3, 0x1

    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->i(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final q(Ljava/util/List;IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->d(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v3, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final r(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v2, 0x5

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->j(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final s(ILjava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzht;

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast v2, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzht;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    check-cast v1, Lcom/google/android/gms/internal/vision/zzid;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zzid;->e:[B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzid;->m()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzid;->f()I

    move-result v1

    invoke-virtual {v2, v4, v1, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->j(I)V

    return-void
.end method

.method public final u(Ljava/util/List;IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->d(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v3, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final v(IJ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->i(J)V

    return-void
.end method

.method public final w(Ljava/util/List;IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->c(II)V

    move p2, v0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->f(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->b(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final x(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    return-void
.end method

.method public final y(IJ)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    shl-long v0, p2, v0

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->d(J)V

    return-void
.end method

.method public final z(ILjava/util/List;)V
    .locals 18

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v0, v2, Lcom/google/android/gms/internal/vision/zzjv;

    const/4 v3, 0x2

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/google/android/gms/internal/vision/zzil;->a:Lcom/google/android/gms/internal/vision/zzii;

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/vision/zzjv;

    move v7, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/vision/zzjv;->g(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_1

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object v9, v4

    check-cast v9, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v9, v1, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    iget v0, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    iget-object v10, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v11, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v13

    if-ne v13, v12, :cond_0

    add-int v12, v11, v13

    iput v12, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int/2addr v0, v12

    sget-object v14, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v14, v8, v10, v12, v0}, Lcom/google/android/gms/internal/vision/zzme;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput v11, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int v10, v0, v11

    sub-int/2addr v10, v13

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iput v0, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_1

    :cond_0
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzmd;->a(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iget v12, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int/2addr v0, v12

    sget-object v13, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v13, v8, v10, v12, v0}, Lcom/google/android/gms/internal/vision/zzme;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzmg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :goto_1
    iput v11, v9, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sget-object v12, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "inefficientWriteStringNoTag"

    const-string v16, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v14, "com.google.protobuf.CodedOutputStream"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_1
    array-length v8, v0

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    array-length v8, v0

    invoke-virtual {v9, v5, v8, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/vision/zzii$zzb; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :cond_1
    check-cast v0, Lcom/google/android/gms/internal/vision/zzht;

    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzht;->f()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    check-cast v0, Lcom/google/android/gms/internal/vision/zzid;

    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzid;->e:[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzid;->m()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzid;->f()I

    move-result v0

    invoke-virtual {v8, v10, v0, v9}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    move v6, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/internal/vision/zzii$zza;

    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/vision/zzii$zza;->c(II)V

    iget v0, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->e:I

    iget-object v9, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->d:[B

    iget v10, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v12

    if-ne v12, v11, :cond_3

    add-int v11, v10, v12

    iput v11, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int/2addr v0, v11

    sget-object v13, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v13, v7, v9, v11, v0}, Lcom/google/android/gms/internal/vision/zzme;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput v10, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int v9, v0, v10

    sub-int/2addr v9, v12

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iput v0, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_3
    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzmd;->a(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    iget v11, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sub-int/2addr v0, v11

    sget-object v12, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v12, v7, v9, v11, v0}, Lcom/google/android/gms/internal/vision/zzme;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/vision/zzmg; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :goto_4
    iput v10, v8, Lcom/google/android/gms/internal/vision/zzii$zza;->f:I

    sget-object v11, Lcom/google/android/gms/internal/vision/zzii;->b:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "inefficientWriteStringNoTag"

    const-string v15, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v13, "com.google.protobuf.CodedOutputStream"

    invoke-virtual/range {v11 .. v16}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_3
    array-length v7, v0

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/vision/zzii$zza;->f(I)V

    array-length v7, v0

    invoke-virtual {v8, v5, v7, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;->u(II[B)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/android/gms/internal/vision/zzii$zzb; {:try_start_3 .. :try_end_3} :catch_6

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :catch_6
    move-exception v0

    throw v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :cond_4
    return-void
.end method

.class public final Lcom/google/android/gms/internal/clearcut/zzha;
.super Lcom/google/android/gms/internal/clearcut/zzfu;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzfu<",
        "Lcom/google/android/gms/internal/clearcut/zzha;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public c:J

.field public d:J

.field public final e:Ljava/lang/String;

.field public f:I

.field public final g:Ljava/lang/String;

.field public h:[Lcom/google/android/gms/internal/clearcut/zzhb;

.field public final i:[B

.field public j:[B

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public m:Lcom/google/android/gms/internal/clearcut/zzgy;

.field public final n:Ljava/lang/String;

.field public o:J

.field public p:Lcom/google/android/gms/internal/clearcut/zzgz;

.field public final q:[B

.field public final r:Ljava/lang/String;

.field public s:[I

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->g:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzhb;->e:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzfy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzhb;->e:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-nez v2, :cond_0

    new-array v2, v0, [Lcom/google/android/gms/internal/clearcut/zzhb;

    sput-object v2, Lcom/google/android/gms/internal/clearcut/zzhb;->e:[Lcom/google/android/gms/internal/clearcut/zzhb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzhb;->e:[Lcom/google/android/gms/internal/clearcut/zzhb;

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzgb;->e:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->i:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->k:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->l:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    const-string v3, ""

    iput-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->n:Ljava/lang/String;

    const-wide/32 v3, 0x2bf20

    iput-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    iput-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->r:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzgb;->a:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzfz;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/zzfs;)V
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->e:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v6

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v7, v4

    if-ge v0, v7, :cond_3

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    const/4 v7, 0x3

    invoke-virtual {p1, v7, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->b(ILcom/google/android/gms/internal/clearcut/zzfz;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->i:[B

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzgb;->e:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x4

    invoke-virtual {p1, v7, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->d(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    invoke-virtual {p1, v0, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->d(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v0, :cond_6

    const/4 v7, 0x7

    invoke-virtual {p1, v7, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->b(ILcom/google/android/gms/internal/clearcut/zzfz;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x8

    invoke-virtual {p1, v7, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    if-eqz v0, :cond_9

    const/16 v7, 0xb

    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    if-ltz v0, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->f(I)V

    goto :goto_1

    :cond_8
    int-to-long v7, v0

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const/16 v7, 0xd

    invoke-virtual {p1, v7, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v7, 0xe

    invoke-virtual {p1, v7, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_b
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    const-wide/32 v9, 0x2bf20

    cmp-long v0, v7, v9

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    shl-long v9, v7, v5

    const/16 v0, 0x3f

    shr-long/2addr v7, v0

    xor-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v0, :cond_d

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->b(ILcom/google/android/gms/internal/clearcut/zzfz;)V

    :cond_d
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    cmp-long v0, v7, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->d(I[B)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v6

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    array-length v3, v2

    if-ge v0, v3, :cond_11

    aget v2, v2, v0

    const/16 v3, 0x14

    invoke-virtual {p1, v3, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    if-ltz v2, :cond_10

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->f(I)V

    goto :goto_3

    :cond_10
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->r:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    if-eqz v0, :cond_14

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v6}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    int-to-byte v0, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/clearcut/zzfs;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_13
    new-instance p0, Lcom/google/android/gms/internal/clearcut/zzft;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result p1

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/zzft;-><init>(II)V

    throw p0

    :cond_14
    :goto_4
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->g:Ljava/lang/String;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x1a

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final c()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/zzha;->r:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzha;->l:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/zzha;->k:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzha;->i:[B

    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/zzha;->e:Ljava/lang/String;

    iget-wide v8, v0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_0

    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v12

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/clearcut/zzfs;->k(J)I

    move-result v8

    add-int/2addr v8, v12

    goto :goto_0

    :cond_0
    move v8, v14

    :goto_0
    const/4 v9, 0x2

    const-string v12, ""

    if-eqz v7, :cond_1

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v8, v7

    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-eqz v7, :cond_4

    array-length v7, v7

    if-lez v7, :cond_4

    move v7, v14

    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    move/from16 v16, v9

    array-length v9, v15

    if-ge v7, v9, :cond_3

    aget-object v9, v15, v7

    if-eqz v9, :cond_2

    const/4 v15, 0x3

    invoke-static {v15}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v15

    move-wide/from16 v17, v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/clearcut/zzhb;->c()I

    move-result v10

    iput v10, v9, Lcom/google/android/gms/internal/clearcut/zzfz;->b:I

    invoke-static {v10}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v9

    add-int/2addr v9, v10

    add-int/2addr v9, v15

    add-int/2addr v9, v8

    move v8, v9

    goto :goto_2

    :cond_2
    move-wide/from16 v17, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v16

    move-wide/from16 v10, v17

    goto :goto_1

    :cond_3
    :goto_3
    move-wide/from16 v17, v10

    goto :goto_4

    :cond_4
    move/from16 v16, v9

    goto :goto_3

    :goto_4
    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzgb;->e:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v9

    array-length v10, v6

    invoke-static {v10}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v10

    array-length v6, v6

    invoke-static {v10, v6, v9, v8}, Lpq0;->D(IIII)I

    move-result v8

    :cond_5
    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    const/4 v9, 0x6

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v9

    array-length v10, v6

    invoke-static {v10}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v10

    array-length v6, v6

    invoke-static {v10, v6, v9, v8}, Lpq0;->D(IIII)I

    move-result v8

    :cond_6
    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v6, :cond_7

    const/4 v9, 0x7

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/zzgy;->c()I

    move-result v10

    iput v10, v6, Lcom/google/android/gms/internal/clearcut/zzfz;->b:I

    invoke-static {v10}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v6

    add-int/2addr v6, v10

    add-int/2addr v6, v9

    add-int/2addr v8, v6

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const/16 v6, 0x8

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v8, v5

    :cond_8
    iget v5, v0, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    const/16 v6, 0xa

    if-eqz v5, :cond_a

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v9

    if-ltz v5, :cond_9

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v5

    goto :goto_5

    :cond_9
    move v5, v6

    :goto_5
    add-int/2addr v5, v9

    add-int/2addr v8, v5

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v5, 0xd

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v8, v4

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v4, 0xe

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v8, v3

    :cond_c
    iget-wide v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    const-wide/32 v9, 0x2bf20

    cmp-long v5, v3, v9

    if-eqz v5, :cond_d

    const/16 v5, 0xf

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v5

    shl-long v9, v3, v13

    const/16 v11, 0x3f

    shr-long/2addr v3, v11

    xor-long/2addr v3, v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->k(J)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v8, v3

    :cond_d
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v3, :cond_e

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzgz;->c()I

    move-result v5

    iput v5, v3, Lcom/google/android/gms/internal/clearcut/zzfz;->b:I

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v8, v3

    :cond_e
    iget-wide v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    cmp-long v5, v3, v17

    if-eqz v5, :cond_f

    const/16 v5, 0x11

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->k(J)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v8, v3

    :cond_f
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    const/16 v4, 0x12

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v4

    array-length v5, v3

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v5

    array-length v3, v3

    invoke-static {v5, v3, v4, v8}, Lpq0;->D(IIII)I

    move-result v8

    :cond_10
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    if-eqz v3, :cond_13

    array-length v3, v3

    if-lez v3, :cond_13

    move v3, v14

    :goto_6
    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    array-length v5, v4

    if-ge v14, v5, :cond_12

    aget v4, v4, v14

    if-ltz v4, :cond_11

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v4

    goto :goto_7

    :cond_11
    move v4, v6

    :goto_7
    add-int/2addr v3, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_12
    add-int/2addr v8, v3

    array-length v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const/16 v3, 0x18

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v8, v2

    :cond_14
    iget-boolean v0, v0, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v0

    add-int/2addr v0, v13

    add-int/2addr v8, v0

    :cond_15
    if-eqz v1, :cond_16

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x1a

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    return v0

    :cond_16
    return v8
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->e()Lcom/google/android/gms/internal/clearcut/zzfu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzha;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/zzhb;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzhb;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/clearcut/zzhb;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgy;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzgy;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgz;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzgz;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    if-eqz p0, :cond_4

    array-length v1, p0

    if-lez v1, :cond_4

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/clearcut/zzfz;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzha;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzha;

    return-object p0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/clearcut/zzfu;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzha;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzha;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzha;

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    if-eq v1, v3, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->g:Ljava/lang/String;

    if-nez v3, :cond_7

    if-eqz v1, :cond_8

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_3

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->i:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->i:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_3

    :cond_b
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->k:Ljava/lang/String;

    if-nez v3, :cond_c

    if-eqz v1, :cond_d

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_3

    :cond_d
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->l:Ljava/lang/String;

    if-nez v3, :cond_e

    if-eqz v1, :cond_f

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzgy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_3

    :cond_11
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->n:Ljava/lang/String;

    if-nez v3, :cond_12

    if-eqz v1, :cond_13

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_3

    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_14

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_3

    :cond_15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzgz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_3

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_3

    :cond_17
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->r:Ljava/lang/String;

    if-nez v3, :cond_18

    if-eqz v1, :cond_19

    goto :goto_3

    :cond_18
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    if-eqz v1, :cond_1b

    array-length v4, v1

    if-nez v4, :cond_1a

    goto :goto_0

    :cond_1a
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_2

    :cond_1b
    :goto_0
    if-eqz v3, :cond_1d

    array-length v1, v3

    if-nez v1, :cond_1c

    goto :goto_1

    :cond_1c
    move v1, v2

    goto :goto_2

    :cond_1d
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_1e

    goto :goto_3

    :cond_1e
    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    if-eq p0, p1, :cond_1f

    :goto_3
    return v2

    :cond_1f
    :goto_4
    return v0
.end method

.method public final hashCode()I
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0x20fa9768

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzha;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3c1

    const/16 v3, 0x4d5

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->h:[Lcom/google/android/gms/internal/clearcut/zzhb;

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfy;->b([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->i:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v4, v1

    mul-int/lit16 v4, v4, 0x3c1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->k:Ljava/lang/String;

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->l:Ljava/lang/String;

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->m:Lcom/google/android/gms/internal/clearcut/zzgy;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v4, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/zzgy;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->n:Ljava/lang/String;

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_5
    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->p:Lcom/google/android/gms/internal/clearcut/zzgz;

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/zzgz;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzha;->q:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->r:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3c1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzha;->s:[I

    if-eqz v1, :cond_9

    array-length v4, v1

    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :cond_9
    :goto_8
    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x745f

    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    if-eqz p0, :cond_a

    const/16 v3, 0x4cf

    :cond_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

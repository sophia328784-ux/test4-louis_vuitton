.class final Lcom/google/android/gms/internal/vision/zzko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzlc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzlc<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/vision/zzkk;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/vision/zzks;

.field public final l:Lcom/google/android/gms/internal/vision/zzju;

.field public final m:Lcom/google/android/gms/internal/vision/zzlu;

.field public final n:Lcom/google/android/gms/internal/vision/zziq;

.field public final o:Lcom/google/android/gms/internal/vision/zzkh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/zzko;->p:[I

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzma;->h()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzkk;Z[IIILcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzko;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/vision/zzko;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/vision/zzko;->d:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/zzko;->g:Z

    if-eqz p13, :cond_0

    instance-of p1, p5, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/vision/zzko;->h:[I

    iput p8, p0, Lcom/google/android/gms/internal/vision/zzko;->i:I

    iput p9, p0, Lcom/google/android/gms/internal/vision/zzko;->j:I

    iput-object p10, p0, Lcom/google/android/gms/internal/vision/zzko;->k:Lcom/google/android/gms/internal/vision/zzks;

    iput-object p11, p0, Lcom/google/android/gms/internal/vision/zzko;->l:Lcom/google/android/gms/internal/vision/zzju;

    iput-object p12, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    iput-object p13, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzko;->e:Lcom/google/android/gms/internal/vision/zzkk;

    iput-object p14, p0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    return-void
.end method

.method public static D(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static E(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static F(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzlx;->f:Lcom/google/android/gms/internal/vision/zzlx;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->b()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    :cond_0
    return-object v0
.end method

.method public static l(Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;
    .locals 33

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/zzla;

    if-eqz v1, :cond_33

    check-cast v0, Lcom/google/android/gms/internal/vision/zzla;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzla;->d0()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zzla;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/vision/zzko;->p:[I

    move v9, v3

    move v10, v9

    move v13, v10

    move v14, v13

    move v15, v14

    move-object v12, v7

    move v7, v15

    :goto_3
    const/16 v16, 0x1

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_b

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v12

    move-object v12, v3

    move v3, v5

    move/from16 v5, v16

    goto/16 :goto_3

    :goto_c
    sget-object v4, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    iget-object v8, v0, Lcom/google/android/gms/internal/vision/zzla;->c:[Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/gms/internal/vision/zzla;->a:Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v19, v3

    mul-int/lit8 v3, v7, 0x3

    new-array v3, v3, [I

    shl-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    add-int/2addr v13, v15

    move/from16 v23, v13

    move/from16 v22, v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v5, v2, :cond_32

    add-int/lit8 v24, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v26, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v27, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v5, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    move-object/from16 v3, v27

    goto :goto_e

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v5, v2

    move/from16 v2, v26

    goto :goto_f

    :cond_17
    move-object/from16 v27, v3

    move/from16 v2, v24

    :goto_f
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_10
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v28, v2

    const v2, 0xd800

    if-lt v3, v2, :cond_18

    and-int/lit16 v2, v3, 0x1fff

    shl-int v2, v2, v24

    or-int v2, v28, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    goto :goto_10

    :cond_18
    shl-int v2, v3, v24

    or-int v2, v28, v2

    move/from16 v3, v26

    goto :goto_11

    :cond_19
    move/from16 v3, v24

    :goto_11
    move/from16 v24, v5

    and-int/lit16 v5, v2, 0xff

    move-object/from16 v26, v7

    and-int/lit16 v7, v2, 0x400

    if-eqz v7, :cond_1a

    add-int/lit8 v7, v20, 0x1

    aput v21, v12, v20

    move/from16 v20, v7

    :cond_1a
    const/16 v7, 0x33

    move-object/from16 v30, v8

    if-lt v5, v7, :cond_22

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v8, 0xd800

    if-lt v3, v8, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v31, 0xd

    :goto_12
    add-int/lit8 v32, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_1b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v31

    or-int/2addr v3, v7

    add-int/lit8 v31, v31, 0xd

    move/from16 v7, v32

    const v8, 0xd800

    goto :goto_12

    :cond_1b
    shl-int v7, v7, v31

    or-int/2addr v3, v7

    move/from16 v7, v32

    :cond_1c
    add-int/lit8 v8, v5, -0x33

    move/from16 v31, v3

    const/16 v3, 0x9

    if-eq v8, v3, :cond_1e

    const/16 v3, 0x11

    if-ne v8, v3, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v3, 0xc

    if-ne v8, v3, :cond_1f

    if-nez v11, :cond_1f

    div-int/lit8 v3, v21, 0x3

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v14, 0x1

    aget-object v14, v30, v14

    aput-object v14, v26, v3

    :goto_13
    move v14, v8

    goto :goto_15

    :cond_1e
    :goto_14
    div-int/lit8 v3, v21, 0x3

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v14, 0x1

    aget-object v14, v30, v14

    aput-object v14, v26, v3

    goto :goto_13

    :cond_1f
    :goto_15
    shl-int/lit8 v3, v31, 0x1

    aget-object v8, v30, v3

    move/from16 v28, v3

    instance-of v3, v8, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_20

    check-cast v8, Ljava/lang/reflect/Field;

    :goto_16
    move v3, v7

    goto :goto_17

    :cond_20
    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/vision/zzko;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v30, v28

    goto :goto_16

    :goto_17
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    add-int/lit8 v8, v28, 0x1

    move/from16 v28, v3

    aget-object v3, v30, v8

    move/from16 v29, v7

    instance-of v7, v3, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_18

    :cond_21
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/vision/zzko;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v30, v8

    :goto_18
    invoke-virtual {v4, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v3, v7

    move/from16 v7, v29

    move/from16 v29, v28

    move/from16 v28, v7

    move v7, v3

    const/4 v3, 0x0

    goto/16 :goto_22

    :cond_22
    add-int/lit8 v7, v14, 0x1

    aget-object v8, v30, v14

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/vision/zzko;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move/from16 v31, v7

    const/16 v7, 0x9

    if-eq v5, v7, :cond_29

    const/16 v7, 0x11

    if-ne v5, v7, :cond_23

    goto :goto_1c

    :cond_23
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_28

    const/16 v7, 0x31

    if-ne v5, v7, :cond_24

    goto :goto_1b

    :cond_24
    const/16 v7, 0xc

    if-eq v5, v7, :cond_27

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_27

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_25

    goto :goto_1a

    :cond_25
    const/16 v7, 0x32

    if-ne v5, v7, :cond_2a

    add-int/lit8 v7, v22, 0x1

    aput v21, v12, v22

    div-int/lit8 v22, v21, 0x3

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v28, v14, 0x2

    aget-object v29, v30, v31

    aput-object v29, v26, v22

    move/from16 v29, v7

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v7, v14, 0x3

    aget-object v14, v30, v28

    aput-object v14, v26, v22

    move v14, v7

    :goto_19
    move/from16 v22, v29

    goto :goto_1d

    :cond_26
    move/from16 v14, v28

    goto :goto_19

    :cond_27
    :goto_1a
    if-nez v11, :cond_2a

    div-int/lit8 v7, v21, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v28, v30, v31

    aput-object v28, v26, v7

    goto :goto_1d

    :cond_28
    :goto_1b
    div-int/lit8 v7, v21, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v28, v30, v31

    aput-object v28, v26, v7

    goto :goto_1d

    :cond_29
    :goto_1c
    div-int/lit8 v7, v21, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v26, v7

    :cond_2a
    move/from16 v14, v31

    :goto_1d
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    and-int/lit16 v8, v2, 0x1000

    move/from16 v28, v7

    const/16 v7, 0x1000

    if-ne v8, v7, :cond_2e

    const/16 v7, 0x11

    if-gt v5, v7, :cond_2e

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v8, 0xd800

    if-lt v3, v8, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v18, 0xd

    :goto_1e
    add-int/lit8 v29, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v18

    or-int/2addr v3, v7

    add-int/lit8 v18, v18, 0xd

    move/from16 v7, v29

    goto :goto_1e

    :cond_2b
    shl-int v7, v7, v18

    or-int/2addr v3, v7

    goto :goto_1f

    :cond_2c
    move/from16 v29, v7

    :goto_1f
    shl-int/lit8 v7, v19, 0x1

    div-int/lit8 v18, v3, 0x20

    add-int v18, v18, v7

    aget-object v7, v30, v18

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2d

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_20

    :cond_2d
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/vision/zzko;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v30, v18

    :goto_20
    invoke-virtual {v4, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    rem-int/lit8 v3, v3, 0x20

    goto :goto_21

    :cond_2e
    const v7, 0xfffff

    move/from16 v29, v3

    const/4 v3, 0x0

    :goto_21
    const/16 v8, 0x12

    if-lt v5, v8, :cond_2f

    const/16 v8, 0x31

    if-gt v5, v8, :cond_2f

    add-int/lit8 v8, v23, 0x1

    aput v28, v12, v23

    move/from16 v23, v8

    :cond_2f
    :goto_22
    add-int/lit8 v8, v21, 0x1

    aput v24, v27, v21

    add-int/lit8 v18, v21, 0x2

    move-object/from16 v24, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_30

    const/high16 v1, 0x20000000

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_31

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_31
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x14

    or-int/2addr v1, v2

    or-int v1, v1, v28

    aput v1, v27, v8

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v1, v7

    aput v1, v27, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v7, v26

    move-object/from16 v3, v27

    move/from16 v5, v29

    move-object/from16 v8, v30

    goto/16 :goto_d

    :cond_32
    move-object/from16 v27, v3

    move-object/from16 v26, v7

    new-instance v5, Lcom/google/android/gms/internal/vision/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzla;->a:Lcom/google/android/gms/internal/vision/zzkk;

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move v8, v9

    move v9, v10

    move v14, v13

    move v13, v15

    move-object/from16 v6, v27

    move-object/from16 v15, p1

    move-object v10, v0

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/internal/vision/zzko;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzkk;Z[IIILcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)V

    return-object v5

    :cond_33
    invoke-static {}, Lr81;->h()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Field "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-static {p0, v0, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzmr;->C(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzmr;->A(ILcom/google/android/gms/internal/vision/zzht;)V

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/google/android/gms/internal/vision/zzjg;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjg;

    return-object p0
.end method

.method public final B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->i:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->h:[I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzko;->j:I

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/zzkh;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-long v3, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzko;->l:Lcom/google/android/gms/internal/vision/zzju;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/vision/zzju;->b(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/vision/zzlx;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zziu;->f()V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/vision/zzko;->i:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_e

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzko;->h:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-nez v10, :cond_4

    goto/16 :goto_5

    :cond_4
    const/high16 v10, 0xff00000

    and-int/2addr v10, v9

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_8

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_7

    const/16 v6, 0x44

    if-eq v10, v6, :cond_7

    const/16 v6, 0x31

    if-eq v10, v6, :cond_8

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/vision/zzkh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/zzko;->v(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v7, p0}, Lcom/google/android/gms/internal/vision/zzkh;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/zzlc;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    :cond_8
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v5

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/vision/zzlc;->b(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-ne v3, v0, :cond_b

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_b
    and-int/2addr v7, v4

    if-eqz v7, :cond_c

    goto :goto_3

    :cond_c
    move v6, v1

    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/zzlc;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zziu;->l()Z

    move-result p0

    if-nez p0, :cond_f

    :goto_5
    return v1

    :cond_f
    return v6
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzko;->g:Z

    const/4 v3, 0x4

    const/16 v4, 0x8

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    iget-object v6, v0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    const/high16 v7, 0xff00000

    const v8, 0xfffff

    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    const/4 v10, 0x1

    if-eqz v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    array-length v14, v9

    if-ge v12, v14, :cond_e

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v14

    and-int v15, v14, v7

    ushr-int/lit8 v15, v15, 0x14

    move/from16 v16, v7

    aget v7, v9, v12

    and-int/2addr v14, v8

    move/from16 v17, v8

    move-object/from16 v18, v9

    int-to-long v8, v14

    sget-object v14, Lcom/google/android/gms/internal/vision/zziv;->zza:Lcom/google/android/gms/internal/vision/zziv;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/zziv;->d0()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/vision/zziv;->zzb:Lcom/google/android/gms/internal/vision/zziv;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/zziv;->d0()I

    move-result v14

    if-gt v15, v14, :cond_0

    add-int/lit8 v14, v12, 0x2

    aget v14, v18, v14

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->h(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v7

    :goto_1
    add-int/2addr v13, v7

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->o(IJ)I

    move-result v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->s(II)I

    move-result v7

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v4, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v3, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v8

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v8

    :goto_2
    add-int/2addr v8, v7

    add-int/2addr v13, v8

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->q(II)I

    move-result v7

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v7

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzle;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v7

    :goto_3
    add-int/2addr v13, v7

    goto/16 :goto_7

    :pswitch_9
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v7

    goto/16 :goto_1

    :cond_1
    check-cast v8, Ljava/lang/String;

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzii;->e(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :pswitch_a
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v10, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_b
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->t(I)I

    move-result v7

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->p(I)I

    move-result v7

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v8

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v8

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->l(IJ)I

    move-result v7

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v8

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v8

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v3, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_11
    invoke-virtual {v0, v7, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v4, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_12
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->v(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/google/android/gms/internal/vision/zzkh;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_13
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    sget-object v14, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2

    const/16 v19, 0x0

    goto :goto_5

    :cond_2
    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_4
    if-ge v15, v14, :cond_3

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-static {v7, v11, v9}, Lcom/google/android/gms/internal/vision/zzii;->h(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v11

    add-int v19, v11, v19

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    add-int v13, v13, v19

    goto/16 :goto_7

    :pswitch_14
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->n(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_15
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->v(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_16
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->B(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_17
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->y(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_18
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->p(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_19
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->t(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_1a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_1b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->y(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_1c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->B(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_1d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->r(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_1e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->k(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_1f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->c(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_20
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->y(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_21
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->B(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v7

    invoke-static {v8, v7, v8, v13}, Lz81;->n(IIII)I

    move-result v13

    goto/16 :goto_7

    :pswitch_22
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_4
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->n(Ljava/util/List;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_23
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->v(Ljava/util/List;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_24
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->A(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_25
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->x(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_26
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->p(Ljava/util/List;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_27
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->t(Ljava/util/List;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_28
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->m(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_29
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzle;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_2a
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->j(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_2b
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_6

    :cond_8
    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    add-int/2addr v7, v10

    mul-int/2addr v7, v8

    goto/16 :goto_3

    :pswitch_2c
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->x(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_2d
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->A(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_2e
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->r(Ljava/util/List;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_2f
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->k(Ljava/util/List;)I

    move-result v8

    invoke-static {v7, v9, v8}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_30
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzle;->c(Ljava/util/List;)I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8, v9}, Lz81;->o(III)I

    move-result v7

    goto/16 :goto_3

    :pswitch_31
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->x(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_32
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzle;->A(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->h(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v7

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->o(IJ)I

    move-result v7

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->s(II)I

    move-result v7

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v4, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_37
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v3, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_38
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v8

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v8

    goto/16 :goto_2

    :pswitch_39
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->q(II)I

    move-result v7

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v7

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzle;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v9, :cond_c

    check-cast v8, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v7

    goto/16 :goto_1

    :cond_c
    check-cast v8, Ljava/lang/String;

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzii;->e(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_2

    :pswitch_3d
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v10, v13}, Lz81;->m(III)I

    move-result v13

    goto/16 :goto_7

    :pswitch_3e
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->t(I)I

    move-result v7

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->p(I)I

    move-result v7

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v8

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v8

    goto/16 :goto_2

    :pswitch_41
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->l(IJ)I

    move-result v7

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v11, v8, v9, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v8

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v7

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v8

    goto/16 :goto_2

    :pswitch_43
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v3, v13}, Lz81;->m(III)I

    move-result v13

    goto :goto_7

    :pswitch_44
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7, v4, v13}, Lz81;->m(III)I

    move-result v13

    :cond_d
    :goto_7
    add-int/lit8 v12, v12, 0x3

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    goto/16 :goto_0

    :cond_e
    check-cast v5, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzlx;->d()I

    move-result v0

    add-int/2addr v0, v13

    return v0

    :cond_f
    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v18, v9

    sget-object v2, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    move/from16 v9, v17

    move-object/from16 v12, v18

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_8
    array-length v13, v12

    if-ge v7, v13, :cond_23

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v13

    aget v14, v12, v7

    and-int v15, v13, v16

    ushr-int/lit8 v15, v15, 0x14

    move/from16 v18, v10

    const/16 v10, 0x11

    if-gt v15, v10, :cond_10

    add-int/lit8 v10, v7, 0x2

    aget v10, v12, v10

    and-int v3, v10, v17

    ushr-int/lit8 v10, v10, 0x14

    shl-int v10, v18, v10

    move-object/from16 v22, v5

    if-eq v3, v9, :cond_11

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v9, v3

    goto :goto_9

    :cond_10
    move-object/from16 v22, v5

    const/4 v10, 0x0

    :cond_11
    :goto_9
    and-int v3, v13, v17

    int-to-long v3, v3

    packed-switch v15, :pswitch_data_1

    goto :goto_b

    :pswitch_45
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->h(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    :goto_a
    add-int/2addr v8, v3

    :cond_12
    :goto_b
    move/from16 v5, v18

    :cond_13
    :goto_c
    const/4 v4, 0x4

    :cond_14
    :goto_d
    const/16 v10, 0x8

    goto/16 :goto_1a

    :pswitch_46
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->o(IJ)I

    move-result v3

    goto :goto_a

    :pswitch_47
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->s(II)I

    move-result v3

    goto :goto_a

    :pswitch_48
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    shl-int/lit8 v3, v14, 0x3

    const/16 v4, 0x8

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    move v10, v4

    move/from16 v5, v18

    const/4 v4, 0x4

    goto/16 :goto_1a

    :pswitch_49
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    shl-int/lit8 v3, v14, 0x3

    const/4 v4, 0x4

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    move/from16 v5, v18

    goto :goto_d

    :pswitch_4a
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v3

    :goto_e
    add-int/2addr v3, v4

    goto :goto_a

    :pswitch_4b
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->q(II)I

    move-result v3

    goto :goto_a

    :pswitch_4c
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    goto :goto_a

    :pswitch_4d
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzle;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v8, v3

    goto/16 :goto_b

    :pswitch_4e
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v4, :cond_15

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    goto/16 :goto_a

    :cond_15
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->e(Ljava/lang/String;)I

    move-result v3

    goto :goto_e

    :pswitch_4f
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    shl-int/lit8 v3, v14, 0x3

    move/from16 v4, v18

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    move v5, v4

    goto/16 :goto_c

    :pswitch_50
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->t(I)I

    move-result v3

    :goto_f
    add-int/2addr v8, v3

    :cond_16
    :goto_10
    const/4 v4, 0x4

    :goto_11
    const/4 v5, 0x1

    goto/16 :goto_d

    :pswitch_51
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->p(I)I

    move-result v3

    goto :goto_f

    :pswitch_52
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v3

    :goto_12
    add-int/2addr v3, v4

    goto :goto_f

    :pswitch_53
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->l(IJ)I

    move-result v3

    goto :goto_f

    :pswitch_54
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v5, v14, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_f

    :pswitch_55
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    shl-int/lit8 v3, v14, 0x3

    const/4 v4, 0x4

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    goto :goto_11

    :pswitch_56
    invoke-virtual {v0, v14, v7, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    shl-int/lit8 v3, v14, 0x3

    const/16 v4, 0x8

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    :goto_13
    move v10, v4

    const/4 v4, 0x4

    const/4 v5, 0x1

    goto/16 :goto_1a

    :pswitch_57
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->v(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Lcom/google/android/gms/internal/vision/zzkh;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :pswitch_58
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    const/4 v13, 0x0

    goto :goto_15

    :cond_17
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_14
    if-ge v10, v5, :cond_18

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-static {v14, v15, v4}, Lcom/google/android/gms/internal/vision/zzii;->h(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v15

    add-int/2addr v13, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_18
    :goto_15
    add-int/2addr v8, v13

    goto/16 :goto_10

    :pswitch_59
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_5a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_5b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->B(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_5c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_5d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->p(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_5e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_5f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_60
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_61
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->B(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_62
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->r(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_63
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_64
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_65
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_66
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->B(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_16

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->k(I)I

    move-result v4

    invoke-static {v3, v4, v3, v8}, Lz81;->n(IIII)I

    move-result v8

    goto/16 :goto_10

    :pswitch_67
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_19

    :goto_16
    const/4 v3, 0x0

    goto :goto_17

    :cond_19
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->n(Ljava/util/List;)I

    move-result v3

    invoke-static {v14, v4, v3}, Lz81;->o(III)I

    move-result v3

    :goto_17
    add-int/2addr v8, v3

    goto/16 :goto_10

    :pswitch_68
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_16

    :cond_1a
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->v(Ljava/util/List;)I

    move-result v3

    invoke-static {v14, v4, v3}, Lz81;->o(III)I

    move-result v3

    goto :goto_17

    :pswitch_69
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->A(ILjava/util/List;)I

    move-result v3

    goto :goto_17

    :pswitch_6a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->x(ILjava/util/List;)I

    move-result v3

    goto :goto_17

    :pswitch_6b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_16

    :cond_1b
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->p(Ljava/util/List;)I

    move-result v3

    invoke-static {v14, v4, v3}, Lz81;->o(III)I

    move-result v3

    goto :goto_17

    :pswitch_6c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_16

    :cond_1c
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->t(Ljava/util/List;)I

    move-result v3

    invoke-static {v14, v4, v3}, Lz81;->o(III)I

    move-result v3

    goto :goto_17

    :pswitch_6d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->m(ILjava/util/List;)I

    move-result v3

    goto :goto_17

    :pswitch_6e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzle;->b(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    goto :goto_17

    :pswitch_6f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->j(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_17

    :pswitch_70
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1d

    const/4 v4, 0x0

    goto :goto_18

    :cond_1d
    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v3

    :goto_18
    add-int/2addr v8, v4

    goto/16 :goto_10

    :pswitch_71
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->x(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_17

    :pswitch_72
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->A(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_17

    :pswitch_73
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_16

    :cond_1e
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->r(Ljava/util/List;)I

    move-result v3

    invoke-static {v14, v4, v3}, Lz81;->o(III)I

    move-result v3

    goto/16 :goto_17

    :pswitch_74
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_16

    :cond_1f
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->k(Ljava/util/List;)I

    move-result v3

    invoke-static {v14, v4, v3}, Lz81;->o(III)I

    move-result v3

    goto/16 :goto_17

    :pswitch_75
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_16

    :cond_20
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzle;->c(Ljava/util/List;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v14, v3, v4}, Lz81;->o(III)I

    move-result v3

    goto/16 :goto_17

    :pswitch_76
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->x(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_17

    :pswitch_77
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzle;->A(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_17

    :pswitch_78
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->h(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    goto/16 :goto_f

    :pswitch_79
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->o(IJ)I

    move-result v3

    goto/16 :goto_f

    :pswitch_7a
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->s(II)I

    move-result v3

    goto/16 :goto_f

    :pswitch_7b
    and-int v3, v11, v10

    if-eqz v3, :cond_16

    shl-int/lit8 v3, v14, 0x3

    const/16 v4, 0x8

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    goto/16 :goto_13

    :pswitch_7c
    and-int v3, v11, v10

    if-eqz v3, :cond_16

    shl-int/lit8 v3, v14, 0x3

    const/4 v4, 0x4

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    goto/16 :goto_11

    :pswitch_7d
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v3

    goto/16 :goto_12

    :pswitch_7e
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->q(II)I

    move-result v3

    goto/16 :goto_f

    :pswitch_7f
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    goto/16 :goto_f

    :pswitch_80
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzle;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    goto/16 :goto_17

    :pswitch_81
    and-int v5, v11, v10

    if-eqz v5, :cond_16

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v4, :cond_21

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/vision/zzii;->g(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    goto/16 :goto_f

    :cond_21
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->e(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_12

    :pswitch_82
    and-int v3, v11, v10

    if-eqz v3, :cond_22

    shl-int/lit8 v3, v14, 0x3

    const/4 v5, 0x1

    invoke-static {v3, v5, v8}, Lz81;->m(III)I

    move-result v8

    goto/16 :goto_c

    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_c

    :pswitch_83
    move/from16 v5, v18

    and-int v3, v11, v10

    if-eqz v3, :cond_13

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->t(I)I

    move-result v3

    :goto_19
    add-int/2addr v8, v3

    goto/16 :goto_c

    :pswitch_84
    move/from16 v5, v18

    and-int v3, v11, v10

    if-eqz v3, :cond_13

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->p(I)I

    move-result v3

    goto :goto_19

    :pswitch_85
    move/from16 v5, v18

    and-int/2addr v10, v11

    if-eqz v10, :cond_13

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v14, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->n(I)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_19

    :pswitch_86
    move/from16 v5, v18

    and-int/2addr v10, v11

    if-eqz v10, :cond_13

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->l(IJ)I

    move-result v3

    goto :goto_19

    :pswitch_87
    move/from16 v5, v18

    and-int/2addr v10, v11

    if-eqz v10, :cond_13

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v14, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/zzii;->r(I)I

    move-result v10

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->m(J)I

    move-result v3

    add-int/2addr v3, v10

    goto :goto_19

    :pswitch_88
    move/from16 v5, v18

    and-int v3, v11, v10

    if-eqz v3, :cond_13

    shl-int/lit8 v3, v14, 0x3

    const/4 v4, 0x4

    invoke-static {v3, v4, v8}, Lz81;->m(III)I

    move-result v8

    goto/16 :goto_d

    :pswitch_89
    move/from16 v5, v18

    const/4 v4, 0x4

    and-int v3, v11, v10

    if-eqz v3, :cond_14

    shl-int/lit8 v3, v14, 0x3

    const/16 v10, 0x8

    invoke-static {v3, v10, v8}, Lz81;->m(III)I

    move-result v8

    :goto_1a
    add-int/lit8 v7, v7, 0x3

    move v3, v4

    move v4, v10

    move v10, v5

    move-object/from16 v5, v22

    goto/16 :goto_8

    :cond_23
    move-object/from16 v22, v5

    move-object/from16 v5, v22

    check-cast v5, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v2, v2, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzlx;->d()I

    move-result v2

    add-int/2addr v2, v8

    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz v3, :cond_26

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    const/4 v11, 0x0

    const/16 v21, 0x0

    :goto_1b
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zziu;->a:Lcom/google/android/gms/internal/vision/zzlg;

    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzlh;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zziu;->a:Lcom/google/android/gms/internal/vision/zzlg;

    if-ge v11, v1, :cond_24

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/vision/zzlh;->d(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zziw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->h(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)I

    move-result v1

    add-int v21, v21, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzlh;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zziw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zziu;->h(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)I

    move-result v1

    add-int v21, v21, v1

    goto :goto_1c

    :cond_25
    add-int v2, v2, v21

    :cond_26
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->g:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zziu;->a:Lcom/google/android/gms/internal/vision/zzlg;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zziu;->j()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v7

    aget v8, v3, v6

    if-nez v0, :cond_2

    const/high16 v9, 0xff00000

    and-int/2addr v9, v7

    ushr-int/lit8 v9, v9, 0x14

    const/4 v10, 0x1

    const v11, 0xfffff

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-interface {p2, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzmr;->L(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->y(IJ)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->o(II)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->c(IJ)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->l(II)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->d(II)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->x(II)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->A(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-interface {p2, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzmr;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, p2}, Lcom/google/android/gms/internal/vision/zzko;->o(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->a(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->t(II)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->v(IJ)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->h(II)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->i(IJ)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->n(IJ)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {p2, v7, v8}, Lcom/google/android/gms/internal/vision/zzmr;->E(FI)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, v8, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-interface {p2, v9, v10, v8}, Lcom/google/android/gms/internal/vision/zzmr;->J(DI)V

    goto/16 :goto_2

    :pswitch_12
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p2, v8, v7, v6}, Lcom/google/android/gms/internal/vision/zzko;->p(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_13
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {p2, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzmr;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_2

    :pswitch_14
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->s(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_15
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->D(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_16
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_17
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->F(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_18
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_19
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_1a
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_1b
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_1c
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->u(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_1d
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->z(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_1e
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_1f
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->o(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_20
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_21
    and-int/2addr v7, v11

    int-to-long v11, v7

    invoke-static {v11, v12, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_22
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->s(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_23
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->D(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_24
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_25
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->F(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_26
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_27
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_28
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->s(ILjava/util/List;)V

    goto/16 :goto_2

    :pswitch_29
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {p2, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzmr;->M(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_2

    :pswitch_2a
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->z(ILjava/util/List;)V

    goto/16 :goto_2

    :pswitch_2b
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_2c
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_2d
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->u(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_2e
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->z(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_2f
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_30
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->o(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_31
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_32
    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_2

    :pswitch_33
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-interface {p2, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzmr;->L(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_2

    :pswitch_34
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->y(IJ)V

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->o(II)V

    goto/16 :goto_2

    :pswitch_36
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->c(IJ)V

    goto/16 :goto_2

    :pswitch_37
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->l(II)V

    goto/16 :goto_2

    :pswitch_38
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->d(II)V

    goto/16 :goto_2

    :pswitch_39
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->x(II)V

    goto/16 :goto_2

    :pswitch_3a
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->A(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_2

    :pswitch_3b
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    invoke-interface {p2, v8, v7, v9}, Lcom/google/android/gms/internal/vision/zzmr;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_2

    :pswitch_3c
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, p2}, Lcom/google/android/gms/internal/vision/zzko;->o(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_2

    :pswitch_3d
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->a(IZ)V

    goto/16 :goto_2

    :pswitch_3e
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->t(II)V

    goto :goto_2

    :pswitch_3f
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->v(IJ)V

    goto :goto_2

    :pswitch_40
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {p2, v8, v7}, Lcom/google/android/gms/internal/vision/zzmr;->h(II)V

    goto :goto_2

    :pswitch_41
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->i(IJ)V

    goto :goto_2

    :pswitch_42
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {p2, v8, v9, v10}, Lcom/google/android/gms/internal/vision/zzmr;->n(IJ)V

    goto :goto_2

    :pswitch_43
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result v7

    invoke-interface {p2, v7, v8}, Lcom/google/android/gms/internal/vision/zzmr;->E(FI)V

    goto :goto_2

    :pswitch_44
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v7, v11

    int-to-long v9, v7

    sget-object v7, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v7, v9, v10, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-interface {p2, v9, v10, v8}, Lcom/google/android/gms/internal/vision/zzmr;->J(DI)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    :cond_2
    check-cast v1, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltr;->x(Ljava/lang/Object;)V

    throw v2

    :cond_3
    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzlx;->c(Lcom/google/android/gms/internal/vision/zzmr;)V

    return-void

    :cond_4
    check-cast v1, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltr;->x(Ljava/lang/Object;)V

    throw v2

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzko;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->k:Lcom/google/android/gms/internal/vision/zzks;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->e:Lcom/google/android/gms/internal/vision/zzkk;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzks;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/vision/zzjb;)I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_3
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_4
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_5

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzjf;->a(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzlx;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zziu;->a:Lcom/google/android/gms/internal/vision/zzlg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzlh;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    const/high16 v3, 0xff00000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->w(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->w(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzkh;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->l:Lcom/google/android/gms/internal/vision/zzju;

    invoke-virtual {v1, v6, v7, p1, p2}, Lcom/google/android/gms/internal/vision/zzju;->a(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->c(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->c(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->g(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->c(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->c(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->c(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->e(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/vision/zzma$zzd;->d(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {p1, v5, p2}, Lcom/google/android/gms/internal/vision/zzle;->h(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    invoke-static {p0, v5, p2}, Lcom/google/android/gms/internal/vision/zzle;->g(Lcom/google/android/gms/internal/vision/zziq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    const/high16 v9, 0xff00000

    and-int/2addr v5, v9

    ushr-int/lit8 v5, v5, 0x14

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    move v4, v2

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_2
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/zzko;->B(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzlx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object p0, p2, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zziu;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzhn;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzko;->g:Z

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_0
    if-ge v3, v8, :cond_17

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v7, v3

    if-gez v3, :cond_0

    invoke-static {v3, v7, v6, v13}, Lcom/google/android/gms/internal/vision/zzhl;->e(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v6

    iget v3, v13, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    :cond_0
    move v14, v6

    ushr-int/lit8 v6, v3, 0x3

    const v16, 0xfffff

    and-int/lit8 v10, v3, 0x7

    iget v15, v0, Lcom/google/android/gms/internal/vision/zzko;->d:I

    iget v9, v0, Lcom/google/android/gms/internal/vision/zzko;->c:I

    if-le v6, v4, :cond_2

    div-int/lit8 v5, v5, 0x3

    if-lt v6, v9, :cond_1

    if-gt v6, v15, :cond_1

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/vision/zzko;->u(II)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    const/4 v9, 0x0

    :goto_2
    move v15, v4

    const/4 v4, -0x1

    goto :goto_3

    :cond_2
    if-lt v6, v9, :cond_3

    if-gt v6, v15, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Lcom/google/android/gms/internal/vision/zzko;->u(II)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    const/4 v4, -0x1

    goto :goto_2

    :goto_3
    if-ne v15, v4, :cond_4

    move-object/from16 v25, v2

    move v2, v3

    move/from16 v20, v4

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v24, v12

    move-object v6, v1

    move/from16 v12, v18

    goto/16 :goto_f

    :cond_4
    add-int/lit8 v5, v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget v5, v4, v5

    const/high16 v18, 0xff00000

    and-int v18, v5, v18

    ushr-int/lit8 v9, v18, 0x14

    move/from16 v18, v3

    and-int v3, v5, v16

    move-object/from16 v19, v4

    int-to-long v3, v3

    move-wide/from16 v20, v3

    const/16 v3, 0x11

    if-gt v9, v3, :cond_d

    add-int/lit8 v3, v15, 0x2

    aget v3, v19, v3

    ushr-int/lit8 v19, v3, 0x14

    const/4 v4, 0x1

    shl-int v19, v4, v19

    and-int v3, v3, v16

    move/from16 v23, v9

    move/from16 v9, v16

    move/from16 v16, v5

    if-eq v3, v11, :cond_7

    if-eq v11, v9, :cond_5

    int-to-long v4, v11

    invoke-virtual {v2, v1, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    if-eq v3, v9, :cond_6

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    :cond_6
    move v11, v3

    :cond_7
    const/4 v3, 0x5

    packed-switch v23, :pswitch_data_0

    move-object v9, v2

    move/from16 v17, v6

    const/16 v20, -0x1

    goto/16 :goto_9

    :pswitch_0
    if-nez v10, :cond_8

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v10

    iget-wide v3, v13, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzif;->a(J)J

    move-result-wide v3

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v17, v6

    move-wide v5, v3

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    or-int v12, v12, v19

    move v3, v10

    :goto_4
    move v5, v15

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_8
    move/from16 v17, v6

    const/16 v20, -0x1

    :cond_9
    move-object v9, v2

    goto/16 :goto_9

    :pswitch_1
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-nez v10, :cond_9

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v6, v13, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/zzif;->b(I)I

    move-result v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_5
    or-int v12, v12, v19

    goto :goto_4

    :pswitch_2
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-nez v10, :cond_9

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v6, v13, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_3
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->n([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget-object v6, v13, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v3

    invoke-static {v3, v7, v14, v8, v13}, Lcom/google/android/gms/internal/vision/zzhl;->h(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    iget-object v10, v13, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    if-nez v6, :cond_a

    invoke-virtual {v2, v1, v4, v5, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    const/high16 v3, 0x20000000

    and-int v3, v16, v3

    if-nez v3, :cond_b

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->l([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    goto :goto_6

    :cond_b
    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->m([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    :goto_6
    iget-object v6, v13, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-nez v10, :cond_9

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget-wide v9, v13, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    const-wide/16 v22, 0x0

    cmp-long v6, v9, v22

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    sget-object v9, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v9, v1, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma$zzd;->g(Ljava/lang/Object;JZ)V

    goto/16 :goto_5

    :pswitch_7
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v3

    invoke-virtual {v2, v1, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    add-int/lit8 v3, v14, 0x4

    goto/16 :goto_5

    :pswitch_8
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x1

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    move-wide v3, v4

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide v5

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    add-int/lit8 v3, v14, 0x8

    goto/16 :goto_5

    :pswitch_9
    move/from16 v17, v6

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    if-nez v10, :cond_9

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v5

    iget v6, v13, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v12, v12, v19

    move v3, v5

    goto/16 :goto_4

    :pswitch_a
    move/from16 v17, v6

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    if-nez v10, :cond_9

    invoke-static {v7, v14, v13}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v9

    iget-wide v5, v13, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    or-int v12, v12, v19

    move v3, v9

    goto/16 :goto_4

    :pswitch_b
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v6, v1, v4, v5, v3}, Lcom/google/android/gms/internal/vision/zzma$zzd;->e(Ljava/lang/Object;JF)V

    goto :goto_8

    :pswitch_c
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x1

    const/16 v20, -0x1

    if-ne v10, v3, :cond_9

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    move-wide v3, v4

    move-wide v5, v9

    move-object v9, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzma$zzd;->d(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v3, v14, 0x8

    or-int v12, v12, v19

    move-object v2, v9

    goto/16 :goto_4

    :goto_9
    move-object v6, v1

    move-object/from16 v25, v9

    move/from16 v24, v12

    move v12, v15

    move/from16 v2, v18

    const/16 v18, 0x0

    goto/16 :goto_f

    :cond_d
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v23, v9

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    move-object v9, v2

    const/16 v2, 0x1b

    move/from16 v5, v23

    if-ne v5, v2, :cond_11

    const/4 v2, 0x2

    if-ne v10, v2, :cond_10

    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/zzjl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/zzjl;->d0()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_e

    const/16 v5, 0xa

    goto :goto_a

    :cond_e
    shl-int/lit8 v5, v5, 0x1

    :goto_a
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/vision/zzjl;->e(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v2

    invoke-virtual {v9, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v6, v2

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    move-object v3, v7

    move v5, v8

    move-object v7, v13

    move v4, v14

    move/from16 v2, v18

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzhl;->f(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v3, v1

    move-object v2, v9

    move v5, v15

    move/from16 v4, v17

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v25, v9

    move/from16 v24, v12

    move v3, v14

    move v12, v15

    move/from16 v9, v18

    const/16 v18, 0x0

    move v15, v11

    goto/16 :goto_e

    :cond_11
    move v6, v14

    move/from16 v2, v18

    const/16 v1, 0x31

    if-gt v5, v1, :cond_13

    move-object v1, v9

    move v7, v10

    move/from16 v8, v16

    int-to-long v9, v8

    move-object/from16 v14, p5

    move-object/from16 v25, v1

    move/from16 v24, v12

    move v8, v15

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-wide v12, v3

    move v3, v6

    move v15, v11

    move/from16 v6, v17

    move/from16 v4, p4

    move v11, v5

    move v5, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzko;->j(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    move v9, v5

    move v12, v8

    if-ne v7, v3, :cond_12

    move-object/from16 v6, p1

    move v14, v7

    :goto_b
    move v2, v9

    :goto_c
    move v11, v15

    goto/16 :goto_f

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p4

    move-object/from16 v13, p5

    :goto_d
    move v3, v7

    move v5, v12

    move v11, v15

    move/from16 v4, v17

    move/from16 v12, v24

    move-object/from16 v2, v25

    move-object/from16 v7, p2

    goto/16 :goto_0

    :cond_13
    move-object/from16 v25, v9

    move v7, v10

    move/from16 v24, v12

    move v12, v15

    move/from16 v8, v16

    const/16 v18, 0x0

    move v9, v2

    move v15, v11

    move v11, v5

    move-wide v4, v3

    move v3, v6

    const/16 v0, 0x32

    if-ne v11, v0, :cond_15

    const/4 v2, 0x2

    if-eq v7, v2, :cond_14

    :goto_e
    move-object/from16 v6, p1

    move v14, v3

    goto :goto_b

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p5

    move-wide v6, v4

    move v5, v12

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->r(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzhn;)V

    const/4 v0, 0x0

    throw v0

    :cond_15
    move-wide v0, v4

    move v5, v9

    move v9, v11

    move-wide v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v13, p5

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzko;->i(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    move v2, v5

    move-object v6, v1

    if-ne v7, v3, :cond_16

    move v14, v7

    goto :goto_c

    :goto_f
    invoke-static {v6}, Lcom/google/android/gms/internal/vision/zzko;->F(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    move v0, v2

    move v2, v14

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->d(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v8, v3

    move-object v1, v6

    move v5, v12

    move/from16 v4, v17

    move/from16 v12, v24

    move-object/from16 v2, v25

    move v3, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    move/from16 v8, p4

    move-object/from16 v13, p5

    move-object v1, v6

    goto :goto_d

    :cond_17
    move-object v6, v1

    move-object/from16 v25, v2

    move v4, v8

    move v15, v11

    move/from16 v24, v12

    const v9, 0xfffff

    if-eq v15, v9, :cond_18

    int-to-long v0, v15

    move/from16 v12, v24

    move-object/from16 v2, v25

    invoke-virtual {v2, v6, v0, v1, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    if-ne v3, v4, :cond_19

    return-void

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->d()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    :cond_1a
    move-object v6, v1

    move v4, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzko;->k(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v3, p7

    move-wide/from16 v9, p10

    move/from16 v4, p12

    sget-object v11, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    add-int/lit8 v5, v4, 0x2

    iget-object v6, v0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget v5, v6, v5

    const v6, 0xfffff

    and-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v5, 0x5

    const/4 v14, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    packed-switch p9, :pswitch_data_0

    :cond_0
    move/from16 v15, p3

    goto/16 :goto_8

    :pswitch_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzhl;->g(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    move-object v5, v7

    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_1

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_1
    iget-object v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    if-nez v14, :cond_2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_b

    invoke-static {v6, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/zzif;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_b

    invoke-static {v6, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzif;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_b

    invoke-static {v6, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v5, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/vision/zzko;->A(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/vision/zzjg;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzko;->F(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v0

    int-to-long v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/vision/zzlx;->a(ILjava/lang/Object;)V

    return v3

    :cond_4
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_7

    :pswitch_4
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_b

    invoke-static {v6, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->n([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget-object v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_b

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v6, v15, v2, v5}, Lcom/google/android/gms/internal/vision/zzhl;->h(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_5

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_5
    iget-object v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    if-nez v14, :cond_6

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_6
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_b

    invoke-static {v6, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-nez v2, :cond_7

    const-string v2, ""

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_7
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_9

    add-int v3, v0, v2

    sget-object v4, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v4, v0, v3, v6}, Lcom/google/android/gms/internal/vision/zzme;->c(II[B)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->e()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    :cond_9
    :goto_2
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v6, v0, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_3
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_7
    move-object/from16 v0, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_b

    invoke-static {v0, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v0, p2

    move/from16 v15, p3

    if-ne v3, v5, :cond_b

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    add-int/lit8 v0, v15, 0x4

    goto/16 :goto_7

    :pswitch_9
    move-object/from16 v0, p2

    move/from16 v15, p3

    if-ne v3, v6, :cond_b

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    add-int/lit8 v0, v15, 0x8

    goto :goto_7

    :pswitch_a
    move-object/from16 v0, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_b

    invoke-static {v0, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_b
    move-object/from16 v0, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_b

    invoke-static {v0, v15, v5}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_c
    move-object/from16 v0, p2

    move/from16 v15, p3

    if-ne v3, v5, :cond_b

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_d
    move-object/from16 v0, p2

    move/from16 v15, p3

    if-ne v3, v6, :cond_b

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :goto_7
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_b
    :goto_8
    return v15

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzhn;)I
    .locals 10

    move v0, p5

    move/from16 v6, p6

    move/from16 v1, p7

    move/from16 v7, p8

    move-wide/from16 v2, p12

    sget-object v4, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzjl;

    invoke-interface {v5}, Lcom/google/android/gms/internal/vision/zzjl;->d0()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v8, v9

    :goto_0
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/vision/zzjl;->e(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    move-object v4, v5

    const/4 v2, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    const/4 p1, 0x3

    if-ne v1, p1, :cond_45

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p0

    and-int/lit8 p1, v0, -0x8

    or-int/lit8 p1, p1, 0x4

    move-object/from16 p6, p0

    move/from16 p10, p1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhl;->g(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    move-object/from16 p1, p6

    move/from16 v2, p10

    move-object/from16 v5, p11

    iget-object v6, v5, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge p0, p4, :cond_2

    invoke-static {p2, p0, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v6

    iget v7, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ne v0, v7, :cond_2

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move/from16 p9, p4

    move/from16 p10, v2

    move-object/from16 p11, v5

    move/from16 p8, v6

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhl;->g(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    move/from16 v1, p10

    move-object/from16 v9, p11

    iget-object v3, v9, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    move-object v5, v9

    goto :goto_1

    :cond_2
    return p0

    :pswitch_1
    move-object/from16 v9, p14

    if-ne v1, v3, :cond_5

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjy;

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget p1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr p1, p0

    if-lt p0, p1, :cond_4

    if-ne p0, p1, :cond_3

    return p0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p2, p0, v9}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    throw v8

    :cond_5
    if-eqz v1, :cond_6

    goto/16 :goto_14

    :cond_6
    check-cast v4, Lcom/google/android/gms/internal/vision/zzjy;

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    throw v8

    :pswitch_2
    move-object/from16 v9, p14

    if-ne v1, v3, :cond_9

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjd;

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget p1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr p1, p0

    :goto_2
    if-ge p0, p1, :cond_7

    invoke-static {p2, p0, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget v0, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzif;->b(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    goto :goto_2

    :cond_7
    if-ne p0, p1, :cond_8

    return p0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_9
    if-nez v1, :cond_45

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjd;

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget p1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzif;->b(I)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    :goto_3
    if-ge p0, p4, :cond_a

    invoke-static {p2, p0, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    iget v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ne v0, v1, :cond_a

    invoke-static {p2, p1, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget p1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzif;->b(I)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    goto :goto_3

    :cond_a
    return p0

    :pswitch_3
    move-object/from16 v9, p14

    if-ne v1, v3, :cond_d

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjd;

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v3, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr v3, v1

    :goto_4
    if-ge v1, v3, :cond_b

    invoke-static {p2, v1, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v5, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    goto :goto_4

    :cond_b
    if-ne v1, v3, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_d
    if-nez v1, :cond_45

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->c(I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    :goto_5
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object p2, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    sget-object v0, Lcom/google/android/gms/internal/vision/zzlx;->f:Lcom/google/android/gms/internal/vision/zzlx;

    if-ne p2, v0, :cond_e

    goto :goto_6

    :cond_e
    move-object v8, p2

    :goto_6
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->A(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-nez p2, :cond_f

    goto :goto_a

    :cond_f
    instance-of v0, v4, Ljava/util/RandomAccess;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_12

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p2, v7}, Lcom/google/android/gms/internal/vision/zzjg;->e(I)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eq v2, v3, :cond_10

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    invoke-static {v6, v7, v8, p0}, Lcom/google/android/gms/internal/vision/zzle;->e(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    if-eq v3, v0, :cond_15

    invoke-interface {v4, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_a

    :cond_13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/vision/zzjg;->e(I)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v6, v2, v8, p0}, Lcom/google/android/gms/internal/vision/zzle;->e(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v8, v2

    goto :goto_9

    :cond_15
    :goto_a
    check-cast v8, Lcom/google/android/gms/internal/vision/zzlx;

    if-eqz v8, :cond_16

    iput-object v8, p1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    :cond_16
    return v1

    :pswitch_4
    move-object/from16 v9, p14

    if-ne v1, v3, :cond_45

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ltz v1, :cond_1d

    array-length v2, p2

    sub-int/2addr v2, p0

    if-gt v1, v2, :cond_1c

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/gms/internal/vision/zzht;->c:Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/vision/zzht;->h(II[B)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr p0, v1

    :goto_c
    if-ge p0, p4, :cond_1b

    invoke-static {p2, p0, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ne v0, v2, :cond_1b

    invoke-static {p2, v1, v9}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ltz v1, :cond_1a

    array-length v2, p2

    sub-int/2addr v2, p0

    if-gt v1, v2, :cond_19

    if-nez v1, :cond_18

    sget-object v1, Lcom/google/android/gms/internal/vision/zzht;->c:Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/vision/zzht;->h(II[B)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->b()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_1b
    return p0

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->b()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :pswitch_5
    move-object/from16 v9, p14

    if-ne v1, v3, :cond_45

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p0

    move-object/from16 p6, p0

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move/from16 p7, v0

    move-object/from16 p11, v4

    move-object/from16 p12, v9

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/zzhl;->f(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    return p0

    :pswitch_6
    move-object/from16 p0, p14

    if-ne v1, v3, :cond_45

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    const-string v2, ""

    if-nez v1, :cond_23

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ltz v3, :cond_22

    if-nez v3, :cond_1e

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, p2, v1, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/2addr v1, v3

    :goto_e
    if-ge v1, p4, :cond_21

    invoke-static {p2, v1, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v6, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ne v0, v6, :cond_21

    invoke-static {p2, v3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ltz v3, :cond_20

    if-nez v3, :cond_1f

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1f
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, p2, v1, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->b()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_21
    return v1

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->b()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_23
    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ltz v3, :cond_2a

    if-nez v3, :cond_24

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    add-int v6, v1, v3

    sget-object v7, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v7, v1, v6, p2}, Lcom/google/android/gms/internal/vision/zzme;->c(II[B)Z

    move-result v7

    if-eqz v7, :cond_29

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, p2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    move v1, v6

    :goto_10
    if-ge v1, p4, :cond_28

    invoke-static {p2, v1, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v6, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ne v0, v6, :cond_28

    invoke-static {p2, v3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ltz v3, :cond_27

    if-nez v3, :cond_25

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_25
    add-int v6, v1, v3

    sget-object v7, Lcom/google/android/gms/internal/vision/zzmd;->a:Lcom/google/android/gms/internal/vision/zzme;

    invoke-virtual {v7, v1, v6, p2}, Lcom/google/android/gms/internal/vision/zzme;->c(II[B)Z

    move-result v7

    if-eqz v7, :cond_26

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/vision/zzjf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, p2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->e()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->b()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_28
    return v1

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->e()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->b()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :pswitch_7
    move-object/from16 p0, p14

    if-ne v1, v3, :cond_2d

    check-cast v4, Lcom/google/android/gms/internal/vision/zzhr;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2c

    if-ne v0, v1, :cond_2b

    return v0

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_2c
    invoke-static {p2, v0, p0}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    throw v8

    :cond_2d
    if-eqz v1, :cond_2e

    goto/16 :goto_14

    :cond_2e
    check-cast v4, Lcom/google/android/gms/internal/vision/zzhr;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    throw v8

    :pswitch_8
    move-object/from16 p0, p14

    if-ne v1, v3, :cond_31

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjd;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr p0, v0

    :goto_11
    if-ge v0, p0, :cond_2f

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_11

    :cond_2f
    if-ne v0, p0, :cond_30

    return v0

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_31
    if-ne v1, v2, :cond_45

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjd;

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    add-int/lit8 v1, p3, 0x4

    :goto_12
    if-ge v1, p4, :cond_32

    invoke-static {p2, v1, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    if-ne v0, v3, :cond_32

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_12

    :cond_32
    return v1

    :pswitch_9
    move-object/from16 p0, p14

    if-ne v1, v3, :cond_35

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjy;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr p0, v0

    if-lt v0, p0, :cond_34

    if-ne v0, p0, :cond_33

    return v0

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_34
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    throw v8

    :cond_35
    if-eq v1, v9, :cond_36

    goto/16 :goto_14

    :cond_36
    check-cast v4, Lcom/google/android/gms/internal/vision/zzjy;

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    throw v8

    :pswitch_a
    move-object/from16 p0, p14

    if-ne v1, v3, :cond_39

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjd;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr v1, v0

    :goto_13
    if-ge v0, v1, :cond_37

    invoke-static {p2, v0, p0}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/vision/zzjd;->h(I)V

    goto :goto_13

    :cond_37
    if-ne v0, v1, :cond_38

    return v0

    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_39
    if-nez v1, :cond_45

    move-object/from16 p11, p0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p6, v0

    move-object/from16 p10, v4

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhl;->c(I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    return p0

    :pswitch_b
    move-object/from16 v5, p14

    if-ne v1, v3, :cond_3c

    check-cast v4, Lcom/google/android/gms/internal/vision/zzjy;

    invoke-static {p2, p3, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget v0, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr v0, p0

    if-lt p0, v0, :cond_3b

    if-ne p0, v0, :cond_3a

    return p0

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_3b
    invoke-static {p2, p0, v5}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    throw v8

    :cond_3c
    if-eqz v1, :cond_3d

    goto :goto_14

    :cond_3d
    check-cast v4, Lcom/google/android/gms/internal/vision/zzjy;

    invoke-static {p2, p3, v5}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    throw v8

    :pswitch_c
    move-object/from16 v5, p14

    if-ne v1, v3, :cond_40

    check-cast v4, Lcom/google/android/gms/internal/vision/zzja;

    invoke-static {p2, p3, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget v0, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr v0, p0

    if-lt p0, v0, :cond_3f

    if-ne p0, v0, :cond_3e

    return p0

    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_3f
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :cond_40
    if-eq v1, v2, :cond_41

    goto :goto_14

    :cond_41
    check-cast v4, Lcom/google/android/gms/internal/vision/zzja;

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :pswitch_d
    move-object/from16 v5, p14

    if-ne v1, v3, :cond_44

    check-cast v4, Lcom/google/android/gms/internal/vision/zzin;

    invoke-static {p2, p3, v5}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    iget v0, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    add-int/2addr v0, p0

    if-lt p0, v0, :cond_43

    if-ne p0, v0, :cond_42

    return p0

    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :cond_43
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    :cond_44
    if-eq v1, v9, :cond_46

    :cond_45
    :goto_14
    return p3

    :cond_46
    check-cast v4, Lcom/google/android/gms/internal/vision/zzin;

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v4, p4

    move/from16 v15, p5

    move-object/from16 v5, p6

    iget-object v9, v5, Lcom/google/android/gms/internal/vision/zzhn;->d:Lcom/google/android/gms/internal/vision/zzio;

    sget-object v10, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_0
    const/16 v17, 0x0

    const v18, 0xfffff

    iget-object v11, v0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    if-ge v3, v4, :cond_21

    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {v3, v1, v13, v5}, Lcom/google/android/gms/internal/vision/zzhl;->e(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v13

    iget v3, v5, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    :cond_0
    move/from16 v28, v13

    move v13, v3

    move/from16 v3, v28

    ushr-int/lit8 v12, v13, 0x3

    move/from16 v16, v7

    and-int/lit8 v7, v13, 0x7

    iget v1, v0, Lcom/google/android/gms/internal/vision/zzko;->d:I

    move/from16 p3, v3

    const/16 v21, 0x3

    iget v3, v0, Lcom/google/android/gms/internal/vision/zzko;->c:I

    if-le v12, v6, :cond_2

    div-int/lit8 v6, v16, 0x3

    if-lt v12, v3, :cond_1

    if-gt v12, v1, :cond_1

    invoke-virtual {v0, v12, v6}, Lcom/google/android/gms/internal/vision/zzko;->u(II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    move v3, v1

    const/4 v1, 0x0

    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :cond_2
    if-lt v12, v3, :cond_3

    if-gt v12, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/vision/zzko;->u(II)I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/4 v3, -0x1

    goto :goto_2

    :goto_3
    if-ne v3, v6, :cond_4

    move v7, v1

    move/from16 v20, v7

    move/from16 v19, v6

    move/from16 v18, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v22, v11

    move v6, v12

    move v5, v13

    move-object v8, v0

    move-object v9, v2

    move/from16 v2, p3

    goto/16 :goto_1a

    :cond_4
    add-int/lit8 v16, v3, 0x1

    aget v1, v11, v16

    const/high16 v16, 0xff00000

    and-int v16, v1, v16

    ushr-int/lit8 v6, v16, 0x14

    and-int v4, v1, v18

    move-object/from16 v22, v11

    move/from16 v16, v12

    int-to-long v11, v4

    const/16 v4, 0x11

    if-gt v6, v4, :cond_13

    add-int/lit8 v4, v3, 0x2

    aget v4, v22, v4

    ushr-int/lit8 v23, v4, 0x14

    const/4 v5, 0x1

    shl-int v23, v5, v23

    and-int v4, v4, v18

    move-object/from16 v24, v9

    move/from16 v9, v18

    move/from16 v18, v6

    if-eq v4, v8, :cond_6

    if-eq v8, v9, :cond_5

    int-to-long v5, v8

    invoke-virtual {v10, v2, v5, v6, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v5, v4

    invoke-virtual {v10, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v14, v4

    move/from16 v25, v5

    goto :goto_4

    :cond_6
    move/from16 v25, v14

    move v14, v8

    :goto_4
    const/4 v4, 0x5

    packed-switch v18, :pswitch_data_0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p6

    move v12, v3

    const/16 v19, -0x1

    :goto_5
    const/16 v20, 0x0

    goto/16 :goto_14

    :pswitch_0
    move/from16 v1, v21

    if-ne v7, v1, :cond_8

    shl-int/lit8 v1, v16, 0x3

    or-int/lit8 v7, v1, 0x4

    move v5, v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p6

    move v1, v5

    const/16 v19, -0x1

    move/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzhl;->g(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    move-object/from16 v28, v8

    move-object v8, v4

    move-object/from16 v4, v28

    and-int v5, v25, v23

    if-nez v5, :cond_7

    iget-object v5, v4, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v10, v2, v11, v12, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v10, v2, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v5

    invoke-virtual {v10, v2, v11, v12, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v5, v25, v23

    move v7, v1

    move-object v1, v8

    move v8, v14

    move/from16 v6, v16

    move-object/from16 v9, v24

    move v14, v5

    move/from16 v16, v13

    move-object v5, v4

    :goto_7
    move/from16 v4, p4

    goto/16 :goto_0

    :cond_8
    move-object/from16 v8, p2

    const/16 v19, -0x1

    move/from16 v9, p3

    move-object/from16 v11, p6

    move v12, v3

    goto :goto_5

    :pswitch_1
    move-object/from16 v8, p2

    move-object/from16 v4, p6

    move v1, v3

    const/16 v19, -0x1

    move/from16 v3, p3

    if-nez v7, :cond_9

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    iget-wide v5, v4, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzif;->a(J)J

    move-result-wide v5

    move-wide/from16 v28, v11

    move-object v11, v4

    move-wide/from16 v3, v28

    move v12, v1

    move-object v1, v10

    const/16 v20, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v5, v1

    or-int v1, v25, v23

    move v3, v14

    move v14, v1

    move-object v1, v8

    move v8, v3

    move/from16 v4, p4

    move-object v10, v5

    :goto_8
    move v3, v7

    :goto_9
    move-object v5, v11

    move v7, v12

    move/from16 v6, v16

    move-object/from16 v9, v24

    :goto_a
    move/from16 v16, v13

    goto/16 :goto_0

    :cond_9
    move v12, v1

    move-object v11, v4

    const/16 v20, 0x0

    move v9, v3

    goto/16 :goto_14

    :pswitch_2
    move-object/from16 v8, p2

    move-object v5, v10

    move-wide v9, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-nez v7, :cond_a

    invoke-static {v8, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzif;->b(I)I

    move-result v1

    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v1, v25, v23

    move v4, v14

    move v14, v1

    move-object v1, v8

    move v8, v4

    move/from16 v4, p4

    move-object v10, v5

    goto :goto_9

    :cond_a
    :goto_c
    move v9, v3

    move-object v10, v5

    goto/16 :goto_14

    :pswitch_3
    move-object/from16 v8, p2

    move-object v5, v10

    move-wide v9, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-nez v7, :cond_a

    invoke-static {v8, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->A(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzjg;->e(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_d

    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzko;->F(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Lcom/google/android/gms/internal/vision/zzlx;->a(ILjava/lang/Object;)V

    move/from16 v4, p4

    move-object v10, v5

    move-object v1, v8

    move-object v5, v11

    move v7, v12

    move v8, v14

    move/from16 v6, v16

    move-object/from16 v9, v24

    move/from16 v14, v25

    goto :goto_a

    :cond_c
    :goto_d
    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_4
    move-object/from16 v8, p2

    move-object v5, v10

    move-wide v9, v11

    const/4 v1, 0x2

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-ne v7, v1, :cond_a

    invoke-static {v8, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->n([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_5
    move-object/from16 v8, p2

    move-object v5, v10

    move-wide v9, v11

    const/4 v1, 0x2

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-ne v7, v1, :cond_e

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    move/from16 v6, p4

    invoke-static {v1, v8, v3, v6, v11}, Lcom/google/android/gms/internal/vision/zzhl;->h(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    and-int v1, v25, v23

    if-nez v1, :cond_d

    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_e

    :cond_d
    invoke-virtual {v5, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v11, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v1

    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_e
    or-int v1, v25, v23

    move v4, v14

    move v14, v1

    move-object v1, v8

    move v8, v4

    :goto_f
    move-object v10, v5

    move v4, v6

    goto/16 :goto_9

    :cond_e
    move/from16 v6, p4

    goto/16 :goto_c

    :pswitch_6
    move-object/from16 v8, p2

    move/from16 v6, p4

    move-object v5, v10

    move-wide v9, v11

    const/4 v4, 0x2

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-ne v7, v4, :cond_a

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-nez v1, :cond_f

    invoke-static {v8, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->l([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    :goto_10
    move v3, v1

    goto :goto_11

    :cond_f
    invoke-static {v8, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->m([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    goto :goto_10

    :goto_11
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->c:Ljava/lang/Object;

    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_e

    :pswitch_7
    move-object/from16 v8, p2

    move/from16 v6, p4

    move-object v5, v10

    move-wide v9, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-nez v7, :cond_a

    invoke-static {v8, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    move/from16 p3, v3

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    const-wide/16 v17, 0x0

    cmp-long v1, v3, v17

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_12

    :cond_10
    move/from16 v1, v20

    :goto_12
    sget-object v3, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v3, v2, v9, v10, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->g(Ljava/lang/Object;JZ)V

    or-int v1, v25, v23

    move v3, v14

    move v14, v1

    move-object v1, v8

    move v8, v3

    move/from16 v3, p3

    goto :goto_f

    :pswitch_8
    move-object/from16 v8, p2

    move/from16 v6, p4

    move-object v5, v10

    move-wide v9, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-ne v7, v4, :cond_a

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v1

    invoke-virtual {v5, v2, v9, v10, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_e

    :pswitch_9
    move-object/from16 v8, p2

    move/from16 v6, p4

    move-object v5, v10

    move-wide v9, v11

    const/4 v1, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    move/from16 v3, p3

    if-ne v7, v1, :cond_a

    move-object v1, v5

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide v5

    move-wide/from16 v28, v9

    move v9, v3

    move-wide/from16 v3, v28

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v9, 0x8

    or-int v4, v25, v23

    move-object v10, v1

    move-object v1, v8

    move-object v5, v11

    move v7, v12

    move v8, v14

    move/from16 v6, v16

    move-object/from16 v9, v24

    move v14, v4

    move/from16 v16, v13

    goto/16 :goto_7

    :pswitch_a
    move-wide v8, v11

    move v12, v3

    move-wide v3, v8

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p6

    move-object v1, v10

    const/16 v19, -0x1

    const/16 v20, 0x0

    if-nez v7, :cond_11

    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/vision/zzhl;->i([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v5

    iget v6, v11, Lcom/google/android/gms/internal/vision/zzhn;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v3, v25, v23

    move/from16 v4, p4

    move-object v10, v1

    move-object v1, v8

    move v7, v12

    move v8, v14

    move/from16 v6, v16

    move-object/from16 v9, v24

    move v14, v3

    move v3, v5

    move-object v5, v11

    goto/16 :goto_a

    :cond_11
    move-object v10, v1

    goto/16 :goto_14

    :pswitch_b
    move-wide v8, v11

    move v12, v3

    move-wide v3, v8

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p6

    move-object v1, v10

    const/16 v19, -0x1

    const/16 v20, 0x0

    if-nez v7, :cond_11

    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/vision/zzhl;->j([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    iget-wide v5, v11, Lcom/google/android/gms/internal/vision/zzhn;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v10, v1

    or-int v1, v25, v23

    move v3, v14

    move v14, v1

    move-object v1, v8

    move v8, v3

    move/from16 v4, p4

    goto/16 :goto_8

    :pswitch_c
    move-object/from16 v8, p2

    move/from16 v9, p3

    move-wide v5, v11

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    if-ne v7, v4, :cond_12

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/vision/zzhl;->a(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v3, v2, v5, v6, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->e(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v9, 0x4

    :goto_13
    or-int v1, v25, v23

    move v4, v14

    move v14, v1

    move-object v1, v8

    move v8, v4

    move/from16 v4, p4

    goto/16 :goto_9

    :pswitch_d
    move-object/from16 v8, p2

    move/from16 v9, p3

    move-wide v5, v11

    const/4 v1, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v11, p6

    move v12, v3

    if-ne v7, v1, :cond_12

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/vision/zzhl;->k(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    move-wide/from16 v28, v5

    move-wide v5, v3

    move-wide/from16 v3, v28

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzma$zzd;->d(Ljava/lang/Object;JD)V

    add-int/lit8 v3, v9, 0x8

    goto :goto_13

    :cond_12
    :goto_14
    move v5, v9

    move-object v9, v2

    move v2, v5

    move-object v8, v0

    move-object/from16 v27, v10

    move v7, v12

    move v5, v13

    move/from16 v18, v14

    move/from16 v6, v16

    move-object/from16 v26, v24

    :goto_15
    move/from16 v14, v25

    goto/16 :goto_1a

    :cond_13
    move-wide/from16 v18, v11

    move v12, v3

    move-wide/from16 v3, v18

    move-object/from16 v11, p6

    move/from16 v18, v6

    move-object/from16 v24, v9

    const/16 v19, -0x1

    const/16 v20, 0x0

    move/from16 v9, p3

    const/16 v5, 0x1b

    if-ne v6, v5, :cond_17

    const/4 v5, 0x2

    if-ne v7, v5, :cond_16

    invoke-virtual {v10, v2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzjl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/zzjl;->d0()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_14

    const/16 v5, 0xa

    goto :goto_16

    :cond_14
    shl-int/lit8 v5, v5, 0x1

    :goto_16
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/vision/zzjl;->e(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v1

    invoke-virtual {v10, v2, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object v6, v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v4, v9

    move-object v7, v11

    move v2, v13

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzhl;->f(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    move v5, v2

    move-object/from16 v2, p1

    move/from16 v4, p4

    move v3, v1

    move v7, v12

    move/from16 v6, v16

    move-object/from16 v9, v24

    move-object/from16 v1, p2

    move/from16 v16, v5

    :goto_17
    move-object/from16 v5, p6

    goto/16 :goto_0

    :cond_16
    move/from16 v18, v8

    move v3, v9

    move-object/from16 v27, v10

    move v9, v13

    move/from16 v25, v14

    move-object/from16 v26, v24

    goto/16 :goto_19

    :cond_17
    move v5, v13

    const/16 v2, 0x31

    if-gt v6, v2, :cond_19

    move v11, v8

    move-object v2, v10

    move v8, v12

    move-wide v12, v3

    move v3, v9

    int-to-long v9, v1

    move-object/from16 v1, p1

    move/from16 v4, p4

    move-object/from16 v27, v2

    move/from16 v18, v11

    move/from16 v25, v14

    move-object/from16 v26, v24

    move-object/from16 v2, p2

    move-object/from16 v14, p6

    move v11, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzko;->j(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    move v9, v5

    move v12, v8

    if-ne v7, v3, :cond_18

    move-object/from16 v8, p0

    move v2, v7

    :goto_18
    move v5, v9

    move v7, v12

    move/from16 v6, v16

    move/from16 v14, v25

    move-object/from16 v9, p1

    goto/16 :goto_1a

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    move v3, v7

    move v7, v12

    move/from16 v6, v16

    move/from16 v8, v18

    move/from16 v14, v25

    move-object/from16 v10, v27

    move/from16 v16, v9

    move-object/from16 v9, v26

    goto/16 :goto_0

    :cond_19
    move v11, v6

    move/from16 v18, v8

    move-object/from16 v27, v10

    move/from16 v25, v14

    move-object/from16 v26, v24

    move/from16 v28, v9

    move v9, v5

    move-wide v5, v3

    move/from16 v3, v28

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1b

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1a

    :goto_19
    move-object/from16 v8, p0

    move v2, v3

    goto :goto_18

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v8, p6

    move-wide v6, v5

    move v5, v12

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->r(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzhn;)V

    throw v17

    :cond_1b
    move-wide/from16 v28, v5

    move v5, v9

    move v9, v11

    move-wide/from16 v10, v28

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move v8, v1

    move/from16 v6, v16

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzko;->i(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    move-object v8, v0

    move-object v9, v1

    if-ne v7, v3, :cond_20

    move v2, v7

    move v7, v12

    goto/16 :goto_15

    :goto_1a
    if-ne v5, v15, :cond_1d

    if-nez v15, :cond_1c

    goto :goto_1c

    :cond_1c
    move/from16 v4, p4

    move v3, v2

    :goto_1b
    move/from16 v0, v18

    const v1, 0xfffff

    goto/16 :goto_1e

    :cond_1d
    :goto_1c
    iget-boolean v0, v8, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzio;->b()Lcom/google/android/gms/internal/vision/zzio;

    move-result-object v0

    move-object/from16 v10, v26

    if-eq v10, v0, :cond_1f

    iget-object v0, v8, Lcom/google/android/gms/internal/vision/zzko;->e:Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v10, v0, v6}, Lcom/google/android/gms/internal/vision/zzio;->a(Lcom/google/android/gms/internal/vision/zzkk;I)V

    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzko;->F(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->d(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    move v5, v0

    move/from16 v4, p4

    move v3, v2

    move/from16 v16, v5

    move-object v0, v8

    move-object v2, v9

    move-object v9, v10

    move/from16 v8, v18

    :goto_1d
    move-object/from16 v10, v27

    goto/16 :goto_17

    :cond_1e
    move-object/from16 v10, v26

    :cond_1f
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzko;->F(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->d(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    move v5, v0

    move v4, v3

    move/from16 v16, v5

    move-object v0, v8

    move/from16 v8, v18

    move-object/from16 v5, p6

    move v3, v2

    move-object v2, v9

    move-object v9, v10

    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_20
    move-object/from16 v1, p2

    move/from16 v4, p4

    move/from16 v16, v5

    move v3, v7

    move-object v0, v8

    move-object v2, v9

    move v7, v12

    move/from16 v8, v18

    move/from16 v14, v25

    move-object/from16 v9, v26

    goto :goto_1d

    :cond_21
    move-object v9, v2

    move/from16 v18, v8

    move-object/from16 v27, v10

    move-object/from16 v22, v11

    move/from16 v25, v14

    move-object v8, v0

    move/from16 v5, v16

    goto :goto_1b

    :goto_1e
    if-eq v0, v1, :cond_22

    int-to-long v6, v0

    move-object/from16 v10, v27

    invoke-virtual {v10, v9, v6, v7, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    iget v0, v8, Lcom/google/android/gms/internal/vision/zzko;->i:I

    :goto_1f
    iget v2, v8, Lcom/google/android/gms/internal/vision/zzko;->j:I

    if-ge v0, v2, :cond_25

    iget-object v2, v8, Lcom/google/android/gms/internal/vision/zzko;->h:[I

    aget v2, v2, v0

    aget v6, v22, v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v6

    and-int/2addr v6, v1

    int-to-long v6, v6

    invoke-static {v6, v7, v9}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_23

    goto :goto_20

    :cond_23
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/vision/zzko;->A(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v7

    if-nez v7, :cond_24

    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_24
    iget-object v0, v8, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/vision/zzkh;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/vision/zzko;->v(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzkh;->c(Ljava/lang/Object;)V

    throw v17

    :cond_25
    if-nez v15, :cond_27

    if-ne v3, v4, :cond_26

    goto :goto_21

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->d()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    :cond_27
    if-gt v3, v4, :cond_28

    if-ne v5, v15, :cond_28

    :goto_21
    return v3

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->d()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(I)Lcom/google/android/gms/internal/vision/zzlc;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzlc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzky;->c:Lcom/google/android/gms/internal/vision/zzky;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzky;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final p(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/vision/zzko;->v(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/vision/zzkh;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/vision/zzko;->t(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/vision/zzko;->x(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzhn;)V
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/vision/zzko;->v(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->o:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/vision/zzkh;->b(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzkh;->I()Lcom/google/android/gms/internal/vision/zzke;

    move-result-object p5

    invoke-interface {p0, p5, p4}, Lcom/google/android/gms/internal/vision/zzkh;->e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;

    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/vision/zzkh;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    const/high16 p1, 0xff00000

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzht;->c:Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzht;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/vision/zzht;->c:Lcom/google/android/gms/internal/vision/zzht;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzht;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    sget-object p1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    return v6

    :cond_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final v(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final w(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final x(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    sget-object p1, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma$zzd;->k(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p2, v0, v1, p0}, Lcom/google/android/gms/internal/vision/zzma;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final y(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/zzko;->f:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->n:Lcom/google/android/gms/internal/vision/zziq;

    if-eqz v3, :cond_0

    move-object v3, v4

    check-cast v3, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object v3, v3, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    iget-object v6, v3, Lcom/google/android/gms/internal/vision/zziu;->a:Lcom/google/android/gms/internal/vision/zzlg;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zziu;->j()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    array-length v7, v6

    sget-object v8, Lcom/google/android/gms/internal/vision/zzko;->q:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    const v12, 0xfffff

    const/4 v13, 0x0

    :goto_1
    if-ge v11, v7, :cond_6

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v14

    aget v15, v6, v11

    const/high16 v16, 0xff00000

    and-int v16, v14, v16

    const/16 v17, 0x0

    ushr-int/lit8 v5, v16, 0x14

    const v16, 0xfffff

    const/16 v9, 0x11

    if-gt v5, v9, :cond_2

    add-int/lit8 v9, v11, 0x2

    aget v9, v6, v9

    const/16 v18, 0x1

    and-int v10, v9, v16

    if-eq v10, v12, :cond_1

    int-to-long v12, v10

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    move v12, v10

    :cond_1
    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v18, v9

    goto :goto_2

    :cond_2
    const/16 v18, 0x1

    const/4 v9, 0x0

    :goto_2
    if-nez v3, :cond_5

    and-int v10, v14, v16

    move-object/from16 v19, v3

    move-object v14, v4

    int-to-long v3, v10

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->L(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->y(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->o(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->c(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->l(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->d(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->x(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->A(ILcom/google/android/gms/internal/vision/zzht;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3, v2}, Lcom/google/android/gms/internal/vision/zzko;->o(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->a(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->t(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->v(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->h(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->i(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->n(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v2, v3, v15}, Lcom/google/android/gms/internal/vision/zzmr;->E(FI)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v2, v3, v4, v15}, Lcom/google/android/gms/internal/vision/zzmr;->J(DI)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v15, v3, v11}, Lcom/google/android/gms/internal/vision/zzko;->p(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v2, v5, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_3

    :pswitch_14
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v9, v18

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->s(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_15
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->D(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_16
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_17
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->F(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_18
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_19
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_1a
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_1b
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_1c
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->u(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_1d
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->z(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_1e
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_1f
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->o(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_20
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_21
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->s(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    :goto_4
    move v10, v9

    goto/16 :goto_5

    :pswitch_23
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->D(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->F(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto :goto_4

    :pswitch_28
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v5, v3}, Lcom/google/android/gms/internal/vision/zzmr;->s(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_29
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    sget-object v9, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v2, v5, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->M(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/vision/zzle;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v5, v3}, Lcom/google/android/gms/internal/vision/zzmr;->z(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->u(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->z(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->o(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/android/gms/internal/vision/zzle;->f(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->L(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->y(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->o(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->c(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->l(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->d(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->x(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->A(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/zzko;->m(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->I(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3, v2}, Lcom/google/android/gms/internal/vision/zzko;->o(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_5

    :pswitch_3d
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->h(JLjava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->a(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->t(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->v(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/android/gms/internal/vision/zzmr;->h(II)V

    goto :goto_5

    :pswitch_41
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->i(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/zzmr;->n(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->i(JLjava/lang/Object;)F

    move-result v3

    invoke-interface {v2, v3, v15}, Lcom/google/android/gms/internal/vision/zzmr;->E(FI)V

    goto :goto_5

    :pswitch_44
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/vision/zzma;->c:Lcom/google/android/gms/internal/vision/zzma$zzd;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma$zzd;->j(JLjava/lang/Object;)D

    move-result-wide v3

    invoke-interface {v2, v3, v4, v15}, Lcom/google/android/gms/internal/vision/zzmr;->J(DI)V

    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x3

    move-object v4, v14

    move-object/from16 v3, v19

    goto/16 :goto_1

    :cond_5
    move-object/from16 v19, v3

    move-object v14, v4

    move-object v4, v14

    check-cast v4, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v17

    :cond_6
    move-object/from16 v19, v3

    move-object v14, v4

    const/16 v17, 0x0

    if-nez v19, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzko;->m:Lcom/google/android/gms/internal/vision/zzlu;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzlw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/vision/zzlx;->c(Lcom/google/android/gms/internal/vision/zzmr;)V

    return-void

    :cond_7
    move-object v4, v14

    check-cast v4, Lcom/google/android/gms/internal/vision/zzip;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzko;->C(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p3, p2}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/android/gms/internal/vision/zzko;->s(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/vision/zzma;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzjf;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p2

    invoke-static {v2, v3, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/android/gms/internal/vision/zzko;->w(IILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v2, v3, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/android/gms/internal/vision/zzko;->w(IILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

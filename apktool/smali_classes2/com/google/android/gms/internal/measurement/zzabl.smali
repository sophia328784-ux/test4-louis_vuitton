.class public final Lcom/google/android/gms/internal/measurement/zzabl;
.super Lcom/google/android/gms/internal/measurement/zzabp;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/zzabl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzabp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabl;->b:Lcom/google/android/gms/internal/measurement/zzabl;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/measurement/zzyy;ILjava/lang/String;III)I
    .locals 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v6, v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzza;->e:Lcom/google/android/gms/internal/measurement/zzza;

    const/16 v10, 0x20

    move/from16 v11, p5

    if-ne v11, v4, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzza;->e:Lcom/google/android/gms/internal/measurement/zzza;

    move/from16 p0, v8

    goto/16 :goto_6

    :cond_2
    :goto_1
    if-eq v8, v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    const/4 v12, -0x1

    if-ne v11, v4, :cond_4

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-direct {v11, v6, v12, v12}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    move/from16 p0, v8

    move-object v6, v11

    goto/16 :goto_6

    :cond_4
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const-string v15, "invalid flag"

    move/from16 p0, v8

    const/16 v8, 0x2e

    if-lt v14, v10, :cond_9

    const/16 v10, 0x30

    if-le v14, v10, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v14, -0x20

    sget-wide v16, Lcom/google/android/gms/internal/measurement/zzza;->d:J

    mul-int/lit8 v10, v10, 0x3

    ushr-long v16, v16, v10

    const-wide/16 v18, 0x7

    and-long v9, v16, v18

    long-to-int v9, v9

    add-int/2addr v9, v12

    if-gez v9, :cond_7

    if-ne v14, v8, :cond_6

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-static {v13, v4, v2}, Lcom/google/android/gms/internal/measurement/zzza;->e(IILjava/lang/String;)I

    move-result v9

    invoke-direct {v8, v6, v12, v9}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    :goto_3
    move-object v6, v8

    goto :goto_6

    :cond_6
    invoke-static {v11, v15, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_7
    shl-int v8, p0, v9

    and-int v9, v6, v8

    if-nez v9, :cond_8

    or-int/2addr v6, v8

    const/16 v10, 0x20

    move/from16 v8, p0

    move v11, v13

    goto :goto_2

    :cond_8
    const-string v0, "repeated flag"

    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_9
    :goto_4
    const/16 v9, 0x39

    if-gt v14, v9, :cond_1c

    add-int/lit8 v14, v14, -0x30

    :goto_5
    if-ne v13, v4, :cond_a

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-direct {v8, v6, v14, v12}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    goto :goto_3

    :cond_a
    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_19

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzza;

    invoke-static {v9, v4, v2}, Lcom/google/android/gms/internal/measurement/zzza;->e(IILjava/lang/String;)I

    move-result v9

    invoke-direct {v8, v6, v14, v9}, Lcom/google/android/gms/internal/measurement/zzza;-><init>(III)V

    goto :goto_3

    :goto_6
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzyz;->a(C)Lcom/google/android/gms/internal/measurement/zzyz;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzyz;->d()I

    move-result v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzyz;->c()Lcom/google/android/gms/internal/measurement/zzzb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzzb;->a()Z

    move-result v5

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzza;->b(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0xa

    if-ge v1, v4, :cond_b

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabj;->d:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzza;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabj;->d:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzabj;

    const-string v4, "default parameter"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzabr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v1, v2, v1

    goto :goto_a

    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzabj;

    invoke-direct {v2, v1, v8, v6}, Lcom/google/android/gms/internal/measurement/zzabj;-><init>(ILcom/google/android/gms/internal/measurement/zzyz;Lcom/google/android/gms/internal/measurement/zzza;)V

    goto :goto_8

    :cond_c
    const-string v0, "invalid format specifier"

    invoke-static {v3, v9, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_d
    const/16 v8, 0x74

    const/16 v10, 0xa0

    const-string v11, "invalid format specification"

    if-eq v5, v8, :cond_12

    const/16 v8, 0x54

    if-ne v5, v8, :cond_e

    goto :goto_9

    :cond_e
    const/16 v4, 0x68

    if-eq v5, v4, :cond_10

    const/16 v4, 0x48

    if-ne v5, v4, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v3, v9, v11, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_10
    :goto_7
    invoke-virtual {v6, v10, v7}, Lcom/google/android/gms/internal/measurement/zzza;->b(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzabk;

    invoke-direct {v2, v6, v1}, Lcom/google/android/gms/internal/measurement/zzabh;-><init>(Lcom/google/android/gms/internal/measurement/zzza;I)V

    :goto_8
    move-object v1, v2

    goto :goto_a

    :cond_11
    invoke-static {v3, v9, v11, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_12
    :goto_9
    invoke-virtual {v6, v10, v7}, Lcom/google/android/gms/internal/measurement/zzza;->b(IZ)Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_17

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzabf;->a(C)Lcom/google/android/gms/internal/measurement/zzabf;

    move-result-object v5

    if-eqz v5, :cond_16

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzabg;

    invoke-direct {v2, v6, v1, v5}, Lcom/google/android/gms/internal/measurement/zzabg;-><init>(Lcom/google/android/gms/internal/measurement/zzza;ILcom/google/android/gms/internal/measurement/zzabf;)V

    move-object v1, v2

    move v9, v4

    :goto_a
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzabh;->a:I

    const/16 v15, 0x20

    if-ge v2, v15, :cond_13

    iget v4, v0, Lcom/google/android/gms/internal/measurement/zzabm;->b:I

    shl-int v5, p0, v2

    or-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/measurement/zzabm;->b:I

    :cond_13
    iget v4, v0, Lcom/google/android/gms/internal/measurement/zzabm;->c:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzabm;->c:I

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzabm;->a:Lcom/google/android/gms/internal/measurement/zzaaf;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzaaf;->a:Lcom/google/android/gms/internal/measurement/zzabn;

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzyy;->e:Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzaaf;->b:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/measurement/zzyy;->f:I

    invoke-virtual {v4, v6, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzabn;->b(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzyy;->d:[Ljava/lang/Object;

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzabh;->a:I

    array-length v4, v2

    if-ge v3, v4, :cond_15

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabh;->a(Lcom/google/android/gms/internal/measurement/zzyy;Ljava/lang/Object;)V

    goto :goto_b

    :cond_14
    const-string v1, "null"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_15
    const-string v1, "[ERROR: MISSING LOG ARGUMENT]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    iput v9, v0, Lcom/google/android/gms/internal/measurement/zzyy;->f:I

    return v9

    :cond_16
    const-string v0, "illegal date/time conversion"

    invoke-static {v9, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_17
    const-string v0, "truncated format specifier"

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {v3, v9, v11, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_19
    const/16 v15, 0x20

    add-int/lit8 v10, v10, -0x30

    int-to-char v10, v10

    const/16 v7, 0xa

    if-ge v10, v7, :cond_1b

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v10

    const v10, 0xf423f

    if-gt v14, v10, :cond_1a

    move v13, v9

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_1a
    const-string v0, "width too large"

    invoke-static {v11, v4, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_1b
    const-string v0, "invalid width character"

    invoke-static {v13, v0, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {v11, v15, v2}, Lcom/google/android/gms/internal/measurement/zzabo;->b(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0
.end method

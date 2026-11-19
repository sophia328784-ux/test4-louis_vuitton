.class final Lcom/google/android/gms/internal/clearcut/zzds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/clearcut/zzef<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/clearcut/zzdo;

.field public final g:Z

.field public final h:Z

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:Lcom/google/android/gms/internal/clearcut/zzdw;

.field public final m:Lcom/google/android/gms/internal/clearcut/zzcy;

.field public final n:Lcom/google/android/gms/internal/clearcut/zzex;

.field public final o:Lcom/google/android/gms/internal/clearcut/zzbu;

.field public final p:Lcom/google/android/gms/internal/clearcut/zzdj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzfd;->f()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/zzdo;Z[I[I[ILcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/zzds;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/clearcut/zzds;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/clearcut/zzds;->e:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/clearcut/zzds;->h:Z

    if-eqz p14, :cond_0

    instance-of p1, p6, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->g:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/clearcut/zzds;->i:[I

    iput-object p9, p0, Lcom/google/android/gms/internal/clearcut/zzds;->j:[I

    iput-object p10, p0, Lcom/google/android/gms/internal/clearcut/zzds;->k:[I

    iput-object p11, p0, Lcom/google/android/gms/internal/clearcut/zzds;->l:Lcom/google/android/gms/internal/clearcut/zzdw;

    iput-object p12, p0, Lcom/google/android/gms/internal/clearcut/zzds;->m:Lcom/google/android/gms/internal/clearcut/zzcy;

    iput-object p13, p0, Lcom/google/android/gms/internal/clearcut/zzds;->n:Lcom/google/android/gms/internal/clearcut/zzex;

    iput-object p14, p0, Lcom/google/android/gms/internal/clearcut/zzds;->o:Lcom/google/android/gms/internal/clearcut/zzbu;

    iput-object p6, p0, Lcom/google/android/gms/internal/clearcut/zzds;->f:Lcom/google/android/gms/internal/clearcut/zzdo;

    move-object p1, p15

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->p:Lcom/google/android/gms/internal/clearcut/zzdj;

    return-void
.end method

.method public static A(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static B(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static h(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/clearcut/zzds;->j(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/clearcut/zzds;->j(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static i(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I
    .locals 7

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzds;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->a(Ljava/lang/Object;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    return p0
.end method

.method public static j(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/clearcut/zzax;->c(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/zzef;->b()Ljava/lang/Object;

    move-result-object v1

    add-int v4, v3, p2

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzef;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/zzay;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzef;->a(Ljava/lang/Object;)V

    iput-object v1, v5, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    return v4

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->a()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0
.end method

.method public static n(Lcom/google/android/gms/internal/clearcut/zzdm;Lcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)Lcom/google/android/gms/internal/clearcut/zzds;
    .locals 24

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/clearcut/zzec;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzec;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzec;->b:Lcom/google/android/gms/internal/clearcut/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzec;->a()I

    move-result v3

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v14, v6

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget v3, v1, Lcom/google/android/gms/internal/clearcut/zzed;->e:I

    if-nez v3, :cond_1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    iget v3, v1, Lcom/google/android/gms/internal/clearcut/zzed;->g:I

    iget v7, v1, Lcom/google/android/gms/internal/clearcut/zzed;->h:I

    iget v8, v1, Lcom/google/android/gms/internal/clearcut/zzed;->k:I

    move v10, v3

    move v11, v7

    :goto_1
    shl-int/lit8 v3, v8, 0x2

    new-array v3, v3, [I

    shl-int/lit8 v7, v8, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    iget v7, v1, Lcom/google/android/gms/internal/clearcut/zzed;->i:I

    if-lez v7, :cond_2

    new-array v7, v7, [I

    move-object/from16 v16, v7

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    :goto_2
    iget v7, v1, Lcom/google/android/gms/internal/clearcut/zzed;->l:I

    if-lez v7, :cond_3

    new-array v2, v7, [I

    :cond_3
    move-object/from16 v17, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->a()Z

    move-result v2

    iget-object v7, v1, Lcom/google/android/gms/internal/clearcut/zzed;->c:Ljava/lang/Class;

    iget-object v8, v1, Lcom/google/android/gms/internal/clearcut/zzed;->b:[Ljava/lang/Object;

    if-eqz v2, :cond_14

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->s:I

    move/from16 p0, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_3
    iget v4, v1, Lcom/google/android/gms/internal/clearcut/zzed;->j:I

    if-ge v2, v4, :cond_5

    sub-int v4, v2, v10

    shl-int/lit8 v4, v4, 0x2

    if-ge v12, v4, :cond_5

    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    add-int v5, v12, v4

    const/16 v19, -0x1

    aput v19, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v20, v3

    move/from16 v19, v6

    goto/16 :goto_f

    :cond_5
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->u:I

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzcb;->zziw:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/zzcb;->a()I

    move-result v5

    if-le v2, v5, :cond_8

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->v:I

    shl-int/2addr v2, v6

    aget-object v5, v8, v2

    move/from16 v19, v6

    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_5

    :cond_6
    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/clearcut/zzed;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v8, v2

    :goto_5
    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    iget v6, v1, Lcom/google/android/gms/internal/clearcut/zzed;->v:I

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v20, v3

    aget-object v3, v8, v6

    move-object/from16 v21, v4

    instance-of v4, v3, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_6

    :cond_7
    check-cast v3, Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/clearcut/zzed;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v8, v6

    :goto_6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    :goto_7
    const/4 v3, 0x0

    goto :goto_9

    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v19, v6

    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->x:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->d:I

    and-int/lit8 v2, v2, 0x1

    move/from16 v4, v19

    if-ne v2, v4, :cond_a

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->u:I

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzcb;->zzhp:Lcom/google/android/gms/internal/clearcut/zzcb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/zzcb;->a()I

    move-result v6

    if-gt v2, v6, :cond_a

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->f:I

    shl-int/2addr v2, v4

    iget v4, v1, Lcom/google/android/gms/internal/clearcut/zzed;->w:I

    div-int/lit8 v4, v4, 0x20

    add-int/2addr v4, v2

    aget-object v2, v8, v4

    instance-of v6, v2, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_9

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_8

    :cond_9
    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/clearcut/zzed;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v8, v4

    :goto_8
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, v1, Lcom/google/android/gms/internal/clearcut/zzed;->w:I

    rem-int/lit8 v3, v3, 0x20

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    :goto_9
    iget v4, v1, Lcom/google/android/gms/internal/clearcut/zzed;->s:I

    aput v4, v20, v12

    add-int/lit8 v4, v12, 0x1

    iget v6, v1, Lcom/google/android/gms/internal/clearcut/zzed;->t:I

    move/from16 v22, v2

    and-int/lit16 v2, v6, 0x200

    if-eqz v2, :cond_b

    const/high16 v2, 0x20000000

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_c

    const/high16 v6, 0x10000000

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    or-int/2addr v2, v6

    iget v6, v1, Lcom/google/android/gms/internal/clearcut/zzed;->u:I

    shl-int/lit8 v23, v6, 0x14

    or-int v2, v2, v23

    or-int/2addr v2, v5

    aput v2, v20, v4

    add-int/lit8 v2, v12, 0x2

    shl-int/lit8 v3, v3, 0x14

    or-int v3, v3, v22

    aput v3, v20, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->A:Ljava/lang/Object;

    if-eqz v2, :cond_f

    div-int/lit8 v3, v12, 0x4

    const/16 v19, 0x1

    shl-int/lit8 v3, v3, 0x1

    aput-object v2, v9, v3

    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->y:Ljava/lang/Object;

    if-eqz v2, :cond_e

    add-int/lit8 v3, v3, 0x1

    aput-object v2, v9, v3

    :cond_d
    :goto_c
    const/16 v19, 0x1

    goto :goto_d

    :cond_e
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->z:Ljava/lang/Object;

    if-eqz v2, :cond_d

    add-int/lit8 v3, v3, 0x1

    aput-object v2, v9, v3

    goto :goto_c

    :cond_f
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->y:Ljava/lang/Object;

    if-eqz v2, :cond_10

    div-int/lit8 v3, v12, 0x4

    const/16 v19, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    aput-object v2, v9, v3

    goto :goto_d

    :cond_10
    const/16 v19, 0x1

    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->z:Ljava/lang/Object;

    if-eqz v2, :cond_11

    div-int/lit8 v3, v12, 0x4

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    aput-object v2, v9, v3

    :cond_11
    :goto_d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v6, v2, :cond_12

    add-int/lit8 v2, v13, 0x1

    aput v12, v16, v13

    move v13, v2

    goto :goto_e

    :cond_12
    const/16 v2, 0x12

    if-lt v6, v2, :cond_13

    const/16 v2, 0x31

    if-gt v6, v2, :cond_13

    add-int/lit8 v2, v15, 0x1

    aget v3, v20, v4

    const v4, 0xfffff

    and-int/2addr v3, v4

    aput v3, v17, v15

    move v15, v2

    :cond_13
    :goto_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzed;->a()Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/zzed;->s:I

    :goto_f
    add-int/lit8 v12, v12, 0x4

    move/from16 v6, v19

    move-object/from16 v3, v20

    goto/16 :goto_3

    :cond_14
    move-object/from16 v20, v3

    :cond_15
    new-instance v7, Lcom/google/android/gms/internal/clearcut/zzds;

    iget v12, v1, Lcom/google/android/gms/internal/clearcut/zzed;->j:I

    iget-object v13, v0, Lcom/google/android/gms/internal/clearcut/zzec;->a:Lcom/google/android/gms/internal/clearcut/zzdo;

    iget-object v15, v1, Lcom/google/android/gms/internal/clearcut/zzed;->m:[I

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v8, v20

    move-object/from16 v20, p3

    invoke-direct/range {v7 .. v22}, Lcom/google/android/gms/internal/clearcut/zzds;-><init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/zzdo;Z[I[I[ILcom/google/android/gms/internal/clearcut/zzdw;Lcom/google/android/gms/internal/clearcut/zzcy;Lcom/google/android/gms/internal/clearcut/zzex;Lcom/google/android/gms/internal/clearcut/zzbu;Lcom/google/android/gms/internal/clearcut/zzdj;)V

    return-object v7

    :cond_16
    invoke-static {}, Lr81;->h()V

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->j:[I

    if-eqz v1, :cond_1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/zzds;->p:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/clearcut/zzdj;->L(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, p1, v6}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->k:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzds;->m:Lcom/google/android/gms/internal/clearcut/zzcy;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzcy;->a(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->n:Lcom/google/android/gms/internal/clearcut/zzex;

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzez;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v1, v1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/clearcut/zzey;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->g:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->o:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzby;->g()V

    :cond_3
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->l:Lcom/google/android/gms/internal/clearcut/zzdw;

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->f:Lcom/google/android/gms/internal/clearcut/zzdo;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzdw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/clearcut/zzcg;Lcom/google/android/gms/internal/clearcut/zzcg;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

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

    sget-object v9, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    move v4, v2

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzeh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzeh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->i(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->i(JLjava/lang/Object;)Z

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/zzds;->z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->n:Lcom/google/android/gms/internal/clearcut/zzex;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzez;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/zzey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->g:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->o:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p2, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzby;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v4

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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

.method public final d(Lcom/google/android/gms/internal/clearcut/zzcg;)I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

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

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_4
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->B(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzci;->b(J)I

    move-result v4

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_6
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->A(JLjava/lang/Object;)I

    move-result v4

    :goto_7
    add-int/2addr v3, v4

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :pswitch_8
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_8
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_b

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    goto/16 :goto_5

    :pswitch_13
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_9
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto :goto_b

    :pswitch_14
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_a
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzci;->b(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_7

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_17
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_9

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->i(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->j(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->k(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    goto :goto_a

    :cond_2
    :goto_b
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->n:Lcom/google/android/gms/internal/clearcut/zzex;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzez;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzey;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->g:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->o:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzby;->a:Lcom/google/android/gms/internal/clearcut/zzej;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzei;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
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

.method public final e(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->i:[I

    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    :cond_0
    move/from16 v16, v2

    goto/16 :goto_7

    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_10

    aget v9, v3, v7

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/clearcut/zzds;->w(I)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result v11

    iget-boolean v12, v0, Lcom/google/android/gms/internal/clearcut/zzds;->h:Z

    const v13, 0xfffff

    if-nez v12, :cond_3

    add-int/lit8 v14, v10, 0x2

    iget-object v15, v0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget v14, v15, v14

    and-int v15, v14, v13

    ushr-int/lit8 v14, v14, 0x14

    shl-int v14, v2, v14

    if-eq v15, v6, :cond_2

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    move/from16 v16, v2

    move-object/from16 v17, v3

    int-to-long v2, v15

    invoke-virtual {v6, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v6, v15

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_1

    :cond_3
    move/from16 v16, v2

    move-object/from16 v17, v3

    move v14, v5

    :goto_1
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_6

    if-eqz v12, :cond_4

    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_4
    and-int v2, v8, v14

    if-eqz v2, :cond_5

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    if-nez v2, :cond_6

    goto/16 :goto_6

    :cond_6
    const/high16 v2, 0xff00000

    and-int/2addr v2, v11

    ushr-int/lit8 v2, v2, 0x14

    const/16 v3, 0x9

    if-eq v2, v3, :cond_c

    const/16 v3, 0x11

    if-eq v2, v3, :cond_c

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_a

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_9

    const/16 v3, 0x44

    if-eq v2, v3, :cond_9

    const/16 v3, 0x31

    if-eq v2, v3, :cond_a

    const/16 v3, 0x32

    if-eq v2, v3, :cond_7

    goto/16 :goto_5

    :cond_7
    and-int v2, v11, v13

    int-to-long v2, v2

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzds;->p:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/clearcut/zzdj;->K(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdi;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->t(I)Ljava/lang/Object;

    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/zzdj;->J()V

    const/4 v0, 0x0

    throw v0

    :cond_9
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    and-int v3, v11, v13

    int-to-long v9, v3

    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzef;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_6

    :cond_a
    and-int v2, v11, v13

    int-to-long v2, v2

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v3

    move v9, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_f

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Lcom/google/android/gms/internal/clearcut/zzef;->e(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_c
    if-eqz v12, :cond_d

    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_d
    and-int v2, v8, v14

    if-eqz v2, :cond_e

    move/from16 v2, v16

    goto :goto_4

    :cond_e
    move v2, v5

    :goto_4
    if-eqz v2, :cond_f

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    and-int v3, v11, v13

    int-to-long v9, v3

    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/clearcut/zzef;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_10
    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/clearcut/zzds;->g:Z

    if-eqz v2, :cond_11

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzds;->o:Lcom/google/android/gms/internal/clearcut/zzbu;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzbv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzcg$zzd;->zzjv:Lcom/google/android/gms/internal/clearcut/zzby;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzby;->a()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_6
    return v5

    :cond_11
    :goto_7
    return v16
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/zzcg;Lcom/google/android/gms/internal/clearcut/zzcg;)V
    .locals 13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    int-to-long v6, v4

    aget v4, v1, v0

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v8, p1

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->y(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    :goto_2
    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/clearcut/zzfd;->d(Ljava/lang/Object;JI)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    goto :goto_2

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzeh;->a:Ljava/lang/Class;

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzds;->p:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/clearcut/zzdj;->O(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdi;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->m:Lcom/google/android/gms/internal/clearcut/zzcy;

    invoke-virtual {v1, v6, v7, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzcy;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->o(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v8, p1

    :goto_3
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->b(JLjava/lang/Object;J)V

    :goto_4
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->x(ILjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_7
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p1, v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v8, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->d(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_8
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_6
    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide v9

    goto :goto_3

    :pswitch_9
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_7
    goto :goto_5

    :pswitch_a
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_7

    :pswitch_b
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_5

    :pswitch_c
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_8
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_d
    move-object v8, p1

    invoke-virtual {p0, v8, p2, v0}, Lcom/google/android/gms/internal/clearcut/zzds;->o(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_e
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_8

    :pswitch_f
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p1, v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->i(JLjava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v8, v6, v7, v1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->f(Ljava/lang/Object;JZ)V

    goto :goto_4

    :pswitch_10
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_7

    :pswitch_11
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_6

    :pswitch_12
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_7

    :pswitch_13
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_6

    :pswitch_14
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_6

    :pswitch_15
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p1, v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->j(JLjava/lang/Object;)F

    move-result v1

    invoke-virtual {p1, v8, v6, v7, v1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->d(Ljava/lang/Object;JF)V

    goto/16 :goto_4

    :pswitch_16
    move-object v8, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v5, v6, v7, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->k(JLjava/lang/Object;)D

    move-result-wide v9

    move-wide v11, v6

    move-object v6, v8

    move-wide v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->c(Ljava/lang/Object;JD)V

    move-object v8, v6

    goto/16 :goto_4

    :cond_1
    :goto_9
    add-int/lit8 v0, v0, 0x4

    move-object p1, v8

    goto/16 :goto_0

    :cond_2
    move-object v8, p1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->h:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->n:Lcom/google/android/gms/internal/clearcut/zzex;

    invoke-static {p1, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->b(Lcom/google/android/gms/internal/clearcut/zzex;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->g:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->o:Lcom/google/android/gms/internal/clearcut/zzbu;

    invoke-static {p0, v8, p2}, Lcom/google/android/gms/internal/clearcut/zzeh;->a(Lcom/google/android/gms/internal/clearcut/zzbu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
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
        :pswitch_0
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

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/zzay;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    iget-boolean v1, v0, Lcom/google/android/gms/internal/clearcut/zzds;->h:Z

    if-eqz v1, :cond_17

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    move/from16 v2, p3

    :goto_0
    if-ge v2, v8, :cond_15

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v7, v2

    if-gez v2, :cond_0

    invoke-static {v2, v7, v3, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->c(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v2, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    :cond_0
    move v5, v2

    move v9, v3

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v2, v5, 0x7

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->w(I)I

    move-result v12

    if-ltz v12, :cond_1

    add-int/lit8 v3, v12, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget v3, v4, v3

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v11, v4, 0x14

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v14, v4

    const/16 v4, 0x11

    const/4 v10, 0x2

    if-gt v11, v4, :cond_b

    const/4 v4, 0x5

    const/4 v6, 0x1

    packed-switch v11, :pswitch_data_0

    :cond_1
    move-object v15, v1

    :cond_2
    :goto_1
    move v3, v9

    goto/16 :goto_9

    :pswitch_0
    if-nez v2, :cond_3

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v9

    iget-wide v2, v13, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    ushr-long v4, v2, v6

    const-wide/16 v10, 0x1

    and-long/2addr v2, v10

    neg-long v2, v2

    xor-long v5, v4, v2

    move-object/from16 v2, p1

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v11, v1

    move-object v1, v2

    move v2, v9

    :goto_2
    move-object v1, v11

    goto :goto_0

    :cond_3
    move-object v11, v1

    move-object/from16 v1, p1

    :cond_4
    move v3, v9

    move-object v15, v11

    goto/16 :goto_9

    :pswitch_1
    move-object v11, v1

    move-object/from16 v1, p1

    if-nez v2, :cond_4

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    ushr-int/lit8 v4, v3, 0x1

    and-int/2addr v3, v6

    neg-int v3, v3

    xor-int/2addr v3, v4

    :goto_3
    invoke-virtual {v11, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2

    :pswitch_2
    move-object v11, v1

    move-object/from16 v1, p1

    if-nez v2, :cond_4

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    goto :goto_3

    :pswitch_3
    move-object v11, v1

    move-object/from16 v1, p1

    if-ne v2, v10, :cond_4

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->i([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    :goto_4
    iget-object v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v11, v1, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    move-object v11, v1

    move-object/from16 v1, p1

    if-ne v2, v10, :cond_4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    invoke-static {v2, v7, v9, v8, v13}, Lcom/google/android/gms/internal/clearcut/zzds;->j(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    invoke-virtual {v11, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    if-nez v3, :cond_5

    invoke-virtual {v11, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v3

    goto :goto_5

    :pswitch_5
    move-object v11, v1

    move-object/from16 v1, p1

    if-ne v2, v10, :cond_4

    const/high16 v2, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez v3, :cond_6

    const-string v3, ""

    iput-object v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v4, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_4

    :cond_7
    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->g([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    goto :goto_4

    :pswitch_6
    move-object v11, v1

    move-object/from16 v1, p1

    if-nez v2, :cond_4

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v3, v1, v14, v15, v6}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->f(Ljava/lang/Object;JZ)V

    goto/16 :goto_2

    :pswitch_7
    move-object v11, v1

    move-object/from16 v1, p1

    if-ne v2, v4, :cond_4

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/clearcut/zzax;->f(I[B)I

    move-result v2

    invoke-virtual {v11, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v9, 0x4

    goto/16 :goto_2

    :pswitch_8
    move-object v11, v1

    move-object/from16 v1, p1

    if-ne v2, v6, :cond_4

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/clearcut/zzax;->h(I[B)J

    move-result-wide v5

    move-object v2, v1

    move-object v1, v11

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v1, v2

    add-int/lit8 v2, v9, 0x8

    goto/16 :goto_2

    :pswitch_9
    move-object v11, v1

    move-wide v3, v14

    move-object/from16 v1, p1

    if-nez v2, :cond_4

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    iget v5, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    invoke-virtual {v11, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_2

    :pswitch_a
    move-object v11, v1

    move-wide v3, v14

    move-object/from16 v1, p1

    if-nez v2, :cond_9

    invoke-static {v7, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v9

    iget-wide v5, v13, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    move-object v2, v1

    move-object v1, v11

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v15, v1

    move-object v1, v2

    move v2, v9

    :goto_7
    move-object v1, v15

    goto/16 :goto_0

    :cond_9
    move-object v15, v11

    goto/16 :goto_1

    :pswitch_b
    move-wide v10, v14

    move-object v15, v1

    move-object/from16 v1, p1

    if-ne v2, v4, :cond_2

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/clearcut/zzax;->f(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v3, v1, v10, v11, v2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->d(Ljava/lang/Object;JF)V

    add-int/lit8 v2, v9, 0x4

    goto :goto_7

    :pswitch_c
    move-wide v10, v14

    move-object v15, v1

    move-object/from16 v1, p1

    if-ne v2, v6, :cond_a

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/clearcut/zzax;->h(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    move-object/from16 v2, p1

    move-wide v3, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->c(Ljava/lang/Object;JD)V

    move-object v14, v2

    add-int/lit8 v2, v9, 0x8

    goto :goto_7

    :cond_a
    move-object v14, v1

    goto/16 :goto_1

    :cond_b
    move/from16 p3, v5

    move-wide v4, v14

    move-object/from16 v14, p1

    move-object v15, v1

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_f

    if-ne v2, v10, :cond_e

    invoke-virtual {v15, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzcn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/clearcut/zzcn;->o0()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xa

    goto :goto_8

    :cond_c
    shl-int/lit8 v2, v2, 0x1

    :goto_8
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/clearcut/zzcn;->v0(I)Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v1

    invoke-virtual {v15, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_d
    move-object v6, v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v1

    move/from16 v2, p3

    move-object v3, v7

    move v5, v8

    move v4, v9

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/clearcut/zzds;->h(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    goto :goto_7

    :cond_e
    move/from16 v5, p3

    goto/16 :goto_1

    :cond_f
    move/from16 v1, p3

    move v7, v9

    const/16 v8, 0x31

    if-gt v11, v8, :cond_11

    int-to-long v9, v3

    move v3, v7

    move v8, v12

    move v7, v2

    move-wide v12, v4

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v1

    move-object v1, v14

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/zzds;->l(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v6

    move v4, v3

    move v9, v5

    if-ne v6, v4, :cond_10

    move v2, v6

    move v5, v9

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v2, v6

    goto/16 :goto_7

    :cond_11
    move v9, v1

    move-wide v0, v4

    move v4, v7

    move v7, v2

    const/16 v2, 0x32

    if-ne v11, v2, :cond_13

    if-eq v7, v10, :cond_12

    move v3, v4

    move v5, v9

    goto :goto_9

    :cond_12
    move-object/from16 v2, p2

    move-object/from16 v8, p5

    move-wide v6, v0

    move v3, v4

    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/clearcut/zzds;->p(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/clearcut/zzay;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    move-object/from16 v2, p2

    move-object/from16 v13, p5

    move v8, v3

    move v3, v4

    move v5, v9

    move v9, v11

    move/from16 v4, p4

    move-wide v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/zzds;->k(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v6

    if-ne v6, v3, :cond_10

    move v2, v6

    goto :goto_a

    :goto_9
    move v2, v3

    :goto_a
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzey;->e:Lcom/google/android/gms/internal/clearcut/zzey;

    if-ne v1, v3, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->b()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_14
    move/from16 v3, p4

    move-object v4, v1

    move v0, v5

    move-object/from16 v1, p2

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzax;->b(I[BIILcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v8, v3

    goto/16 :goto_7

    :cond_15
    move v4, v8

    if-ne v2, v4, :cond_16

    return-void

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->b()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v0

    throw v0

    :cond_17
    move v4, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/zzds;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

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

.method public final k(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/zzay;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v3, p7

    move-wide/from16 v9, p10

    move/from16 v4, p12

    sget-object v11, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    add-int/lit8 v5, v4, 0x2

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

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

    goto/16 :goto_e

    :pswitch_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/zzds;->i(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    move-object v5, v7

    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_1

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_1
    iget-object v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    if-nez v14, :cond_2

    :goto_0
    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :cond_2
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_d

    invoke-static {v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    ushr-long v4, v2, v6

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    neg-long v2, v2

    xor-long/2addr v2, v4

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2
    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_2
    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_d

    invoke-static {v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    ushr-int/lit8 v3, v2, 0x1

    and-int/2addr v2, v6

    neg-int v2, v2

    xor-int/2addr v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :pswitch_3
    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_d

    invoke-static {v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v5, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/clearcut/zzds;->u(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/clearcut/zzck;->g(I)Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzey;->e:Lcom/google/android/gms/internal/clearcut/zzey;

    if-ne v1, v4, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->b()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_4
    int-to-long v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/clearcut/zzey;->a(ILjava/lang/Object;)V

    return v3

    :cond_5
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_d

    :pswitch_4
    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_d

    invoke-static {v14, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzbb;->c:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-static {v0, v2, v14}, Lcom/google/android/gms/internal/clearcut/zzbb;->a(II[B)Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_5
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_d

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    move/from16 v3, p4

    invoke-static {v0, v2, v15, v3, v5}, Lcom/google/android/gms/internal/clearcut/zzds;->j(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_7

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_7
    iget-object v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    if-nez v14, :cond_8

    :goto_6
    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_8
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v2

    goto :goto_6

    :goto_7
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_6
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_d

    invoke-static {v2, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v3, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez v3, :cond_9

    const-string v2, ""

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :cond_9
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_b

    add-int v4, v0, v3

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzff;->a:Lcom/google/android/gms/internal/clearcut/zzfg;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/clearcut/zzfg;->b(II[B)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzco;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzco;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_8
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v0, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v3

    :goto_9
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_7
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_d

    invoke-static {v2, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :goto_a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v5, :cond_d

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->f(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_b
    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v15, 0x4

    goto :goto_d

    :pswitch_9
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v6, :cond_d

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->h(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_c
    invoke-virtual {v11, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v15, 0x8

    goto :goto_d

    :pswitch_a
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_d

    invoke-static {v2, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_d

    invoke-static {v2, v15, v5}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v5, :cond_d

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->f(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_b

    :pswitch_d
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v6, :cond_d

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/clearcut/zzax;->h(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_c

    :goto_d
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_d
    :goto_e
    return v15

    nop

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

.method public final l(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/zzay;)I
    .locals 9

    move/from16 v0, p7

    move/from16 v1, p8

    move-wide/from16 v2, p12

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/clearcut/zzcn;

    invoke-interface {v5}, Lcom/google/android/gms/internal/clearcut/zzcn;->o0()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v6, v7

    :goto_0
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/clearcut/zzcn;->v0(I)Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 p1, 0x3

    if-ne v0, p1, :cond_20

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object p0

    and-int/lit8 p1, p5, -0x8

    or-int/lit8 p1, p1, 0x4

    move-object p6, p0

    move/from16 p10, p1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/clearcut/zzds;->i(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    move-object v1, p6

    move/from16 v2, p10

    move-object/from16 v0, p11

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge p0, p4, :cond_2

    invoke-static {p2, p0, v0}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-ne p5, v4, :cond_2

    move-object/from16 p7, p2

    move/from16 p9, p4

    move-object/from16 p11, v0

    move-object p6, v1

    move/from16 p10, v2

    move/from16 p8, v3

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/clearcut/zzds;->i(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    move/from16 p3, p10

    move-object/from16 v4, p11

    iget-object v0, v4, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, p3

    move-object v0, v4

    goto :goto_1

    :cond_2
    return p0

    :pswitch_1
    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_4
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_2
    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_6
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_3
    if-eq v0, v3, :cond_8

    if-eqz v0, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_8
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_4
    move-object/from16 v4, p14

    if-ne v0, v3, :cond_20

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez p3, :cond_9

    :goto_2
    sget-object p3, Lcom/google/android/gms/internal/clearcut/zzbb;->c:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {p0, p3, p2}, Lcom/google/android/gms/internal/clearcut/zzbb;->a(II[B)Lcom/google/android/gms/internal/clearcut/zzbb;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p0, p3

    :goto_3
    if-ge p0, p4, :cond_a

    invoke-static {p2, p0, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget v0, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-ne p5, v0, :cond_a

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez p3, :cond_9

    goto :goto_2

    :cond_a
    return p0

    :pswitch_5
    move-object/from16 v4, p14

    if-ne v0, v3, :cond_20

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object p0

    move-object p6, p0

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move/from16 p7, p5

    move-object/from16 p12, v4

    move-object/from16 p11, v5

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/clearcut/zzds;->h(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    return p0

    :pswitch_6
    move-object/from16 v4, p14

    if-ne v0, v3, :cond_20

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v7, 0x0

    cmp-long p0, v0, v7

    const-string v0, ""

    if-nez p0, :cond_e

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez p3, :cond_b

    :goto_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, p0, p3, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_5
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p0, p3

    :goto_6
    if-ge p0, p4, :cond_d

    invoke-static {p2, p0, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget v1, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-ne p5, v1, :cond_d

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez p3, :cond_c

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, p0, p3, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_5

    :cond_d
    return p0

    :cond_e
    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    const-string v1, "Protocol message had invalid UTF-8."

    if-nez p3, :cond_f

    :goto_7
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    add-int v3, p0, p3

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzff;->a:Lcom/google/android/gms/internal/clearcut/zzfg;

    invoke-virtual {v6, p0, v3, p2}, Lcom/google/android/gms/internal/clearcut/zzfg;->b(II[B)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, p2, p0, p3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_8
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, v3

    :goto_9
    if-ge p0, p4, :cond_12

    invoke-static {p2, p0, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p3

    iget v3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-ne p5, v3, :cond_12

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result p0

    iget p3, v4, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez p3, :cond_10

    goto :goto_7

    :cond_10
    add-int v3, p0, p3

    sget-object v6, Lcom/google/android/gms/internal/clearcut/zzff;->a:Lcom/google/android/gms/internal/clearcut/zzfg;

    invoke-virtual {v6, p0, v3, p2}, Lcom/google/android/gms/internal/clearcut/zzfg;->b(II[B)Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, p2, p0, p3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_8

    :cond_11
    new-instance p0, Lcom/google/android/gms/internal/clearcut/zzco;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzco;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    return p0

    :cond_13
    new-instance p0, Lcom/google/android/gms/internal/clearcut/zzco;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzco;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    if-eq v0, v3, :cond_15

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_15
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_8
    if-eq v0, v3, :cond_17

    if-eq v0, v2, :cond_16

    goto :goto_a

    :cond_16
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_17
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_9
    if-eq v0, v3, :cond_19

    if-eq v0, v7, :cond_18

    goto :goto_a

    :cond_18
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_19
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_a
    if-eq v0, v3, :cond_1b

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_1a
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_1b
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_b
    if-eq v0, v3, :cond_1d

    if-eqz v0, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_1d
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_c
    if-eq v0, v3, :cond_1f

    if-eq v0, v2, :cond_1e

    goto :goto_a

    :cond_1e
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_1f
    invoke-static {}, Lr81;->h()V

    return p1

    :pswitch_d
    if-eq v0, v3, :cond_22

    if-eq v0, v7, :cond_21

    :cond_20
    :goto_a
    return p3

    :cond_21
    invoke-static {}, Lr81;->h()V

    return p1

    :cond_22
    invoke-static {}, Lr81;->h()V

    return p1

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

.method public final m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v4, p4

    move-object/from16 v8, p6

    sget-object v9, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v3, p3

    move v11, v10

    move/from16 v5, v16

    move v12, v5

    :goto_0
    const/16 v17, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    const v18, 0xfffff

    if-ge v3, v4, :cond_22

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {v3, v1, v5, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->c(I[BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v5

    iget v3, v8, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    :cond_0
    move v13, v3

    move v3, v5

    move-object v5, v6

    ushr-int/lit8 v6, v13, 0x3

    and-int/lit8 v7, v13, 0x7

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/zzds;->w(I)I

    move-result v8

    sget-object v14, Lcom/google/android/gms/internal/clearcut/zzey;->e:Lcom/google/android/gms/internal/clearcut/zzey;

    if-eq v8, v10, :cond_1e

    add-int/lit8 v19, v8, 0x1

    aget v10, v5, v19

    const/high16 v19, 0xff00000

    and-int v19, v10, v19

    ushr-int/lit8 v1, v19, 0x14

    move/from16 p3, v3

    and-int v3, v10, v18

    move/from16 v19, v13

    move-object/from16 v21, v14

    int-to-long v13, v3

    const/16 v3, 0x11

    if-gt v1, v3, :cond_14

    add-int/lit8 v3, v8, 0x2

    aget v3, v5, v3

    ushr-int/lit8 v22, v3, 0x14

    const/4 v4, 0x1

    shl-int v22, v4, v22

    and-int v3, v3, v18

    if-eq v3, v11, :cond_2

    const/4 v15, -0x1

    move/from16 v23, v4

    move-object/from16 v20, v5

    if-eq v11, v15, :cond_1

    int-to-long v4, v11

    invoke-virtual {v9, v2, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    int-to-long v4, v3

    invoke-virtual {v9, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v11, v3

    move v12, v4

    goto :goto_1

    :cond_2
    move/from16 v23, v4

    move-object/from16 v20, v5

    const/4 v15, -0x1

    :goto_1
    const/4 v3, 0x5

    packed-switch v1, :pswitch_data_0

    :cond_3
    move-object/from16 v8, p2

    move-object/from16 v13, p6

    move-object v10, v9

    move-object/from16 v14, v21

    move/from16 v9, p3

    goto/16 :goto_16

    :pswitch_0
    const/4 v1, 0x3

    if-ne v7, v1, :cond_3

    shl-int/lit8 v1, v6, 0x3

    or-int/lit8 v7, v1, 0x4

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/clearcut/zzds;->i(Lcom/google/android/gms/internal/clearcut/zzef;[BIIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    move-object v10, v4

    and-int v1, v12, v22

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v9, v2, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v8, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v1

    goto :goto_2

    :goto_3
    or-int v12, v12, v22

    move/from16 v4, p4

    move-object v1, v10

    :goto_4
    move v10, v15

    move/from16 v5, v19

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v10, p2

    move/from16 v1, p3

    move-object/from16 v8, p6

    if-nez v7, :cond_5

    invoke-static {v10, v1, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v7

    iget-wide v3, v8, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    ushr-long v5, v3, v23

    const-wide/16 v17, 0x1

    and-long v3, v3, v17

    neg-long v3, v3

    xor-long/2addr v5, v3

    move-object v1, v9

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v4, v1

    or-int v12, v12, v22

    move-object v9, v4

    move v3, v7

    :goto_5
    move-object v1, v10

    :goto_6
    move v10, v15

    move/from16 v5, v19

    move/from16 v4, p4

    goto/16 :goto_0

    :cond_5
    move-object v13, v8

    move-object v8, v10

    move-object/from16 v14, v21

    move-object v10, v9

    move v9, v1

    goto/16 :goto_16

    :pswitch_2
    move-object/from16 v10, p2

    move/from16 v1, p3

    move-object/from16 v8, p6

    move-object v4, v9

    move-wide v5, v13

    if-nez v7, :cond_6

    invoke-static {v10, v1, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v1, v8, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    ushr-int/lit8 v7, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    xor-int/2addr v1, v7

    invoke-virtual {v4, v2, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v12, v12, v22

    move-object v9, v4

    goto :goto_5

    :cond_6
    move v9, v1

    move-object v13, v8

    move-object v8, v10

    move-object/from16 v14, v21

    :goto_7
    move-object v10, v4

    goto/16 :goto_16

    :pswitch_3
    move-object/from16 v10, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move/from16 v9, p4

    move-object/from16 v13, p6

    if-nez v7, :cond_a

    invoke-static {v10, v1, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget v1, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->u(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/clearcut/zzck;->g(I)Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    move-result-object v7

    if-eqz v7, :cond_8

    :cond_7
    move/from16 v8, v19

    goto :goto_9

    :cond_8
    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v6, v5, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    move-object/from16 v14, v21

    if-ne v6, v14, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->b()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_9
    int-to-long v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v8, v19

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/clearcut/zzey;->a(ILjava/lang/Object;)V

    :goto_8
    move v1, v9

    move-object v9, v4

    move v4, v1

    move v5, v8

    move-object v1, v10

    move-object v8, v13

    move v10, v15

    goto/16 :goto_0

    :goto_9
    invoke-virtual {v4, v2, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v12, v12, v22

    goto :goto_8

    :cond_a
    move-object/from16 v14, v21

    :cond_b
    move v9, v1

    :goto_b
    move-object v8, v10

    goto :goto_7

    :pswitch_4
    move-object/from16 v10, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move/from16 v8, v19

    move-object/from16 v14, v21

    const/4 v3, 0x2

    move/from16 v9, p4

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_c

    invoke-static {v10, v1, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->i([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget-object v1, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-virtual {v4, v2, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :cond_c
    move v9, v1

    move/from16 v19, v8

    goto :goto_b

    :pswitch_5
    move-object/from16 v10, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    const/4 v3, 0x2

    move/from16 v9, p4

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_b

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v3

    invoke-static {v3, v10, v1, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzds;->j(Lcom/google/android/gms/internal/clearcut/zzef;[BIILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    and-int v1, v12, v22

    if-nez v1, :cond_d

    iget-object v1, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    :goto_c
    invoke-virtual {v4, v2, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :cond_d
    invoke-virtual {v4, v2, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v7, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object v1

    goto :goto_c

    :goto_d
    or-int v12, v12, v22

    move v1, v9

    move-object v9, v4

    move v4, v1

    move-object v1, v10

    :goto_e
    move-object v8, v13

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v8, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    const/4 v3, 0x2

    move/from16 v9, p4

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_10

    const/high16 v3, 0x20000000

    and-int/2addr v3, v10

    if-nez v3, :cond_f

    invoke-static {v8, v1, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    iget v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    if-nez v3, :cond_e

    const-string v3, ""

    iput-object v3, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    goto :goto_f

    :cond_e
    new-instance v7, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/clearcut/zzci;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v1, v3, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v7, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    add-int/2addr v1, v3

    :goto_f
    move v3, v1

    goto :goto_10

    :cond_f
    invoke-static {v8, v1, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->g([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    goto :goto_f

    :goto_10
    iget-object v1, v13, Lcom/google/android/gms/internal/clearcut/zzay;->c:Ljava/lang/Object;

    invoke-virtual {v4, v2, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v12, v12, v22

    move v1, v9

    move-object v9, v4

    move v4, v1

    :goto_11
    move-object v1, v8

    goto :goto_e

    :cond_10
    move v9, v1

    goto/16 :goto_7

    :pswitch_7
    move-object/from16 v8, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    move/from16 v9, p4

    move-object/from16 v13, p6

    if-nez v7, :cond_10

    invoke-static {v8, v1, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v3

    iget-wide v9, v13, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    const-wide/16 v17, 0x0

    cmp-long v1, v9, v17

    if-eqz v1, :cond_11

    move/from16 v1, v23

    goto :goto_12

    :cond_11
    move/from16 v1, v16

    :goto_12
    sget-object v7, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v7, v2, v5, v6, v1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->f(Ljava/lang/Object;JZ)V

    :goto_13
    or-int v12, v12, v22

    move-object v9, v4

    move-object v1, v8

    move-object v8, v13

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v8, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_10

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->f(I[B)I

    move-result v3

    invoke-virtual {v4, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v1, 0x4

    goto :goto_13

    :pswitch_9
    move-object/from16 v8, p2

    move/from16 v1, p3

    move-object v4, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    move/from16 v3, v23

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_10

    move-object v7, v4

    move-wide v3, v5

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->h(I[B)J

    move-result-wide v5

    move v9, v1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v9, 0x8

    or-int v12, v12, v22

    move/from16 v4, p4

    move-object v9, v1

    goto :goto_11

    :pswitch_a
    move-object/from16 v8, p2

    move-object v1, v9

    move-wide v3, v13

    move-object/from16 v14, v21

    move/from16 v9, p3

    move-object/from16 v13, p6

    if-nez v7, :cond_12

    invoke-static {v8, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->d([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v5

    iget v6, v13, Lcom/google/android/gms/internal/clearcut/zzay;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v12, v12, v22

    move/from16 v4, p4

    move-object v9, v1

    move v3, v5

    goto/16 :goto_11

    :cond_12
    move-object v10, v1

    goto/16 :goto_16

    :pswitch_b
    move-object/from16 v8, p2

    move-object v1, v9

    move-wide v3, v13

    move-object/from16 v14, v21

    move/from16 v9, p3

    move-object/from16 v13, p6

    if-nez v7, :cond_12

    invoke-static {v8, v9, v13}, Lcom/google/android/gms/internal/clearcut/zzax;->e([BILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v7

    iget-wide v5, v13, Lcom/google/android/gms/internal/clearcut/zzay;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v10, v1

    or-int v12, v12, v22

    move/from16 v4, p4

    move v3, v7

    :goto_14
    move-object v1, v8

    move-object v9, v10

    goto/16 :goto_e

    :pswitch_c
    move-object/from16 v8, p2

    move-object v10, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    move/from16 v9, p3

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_13

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->f(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {v3, v2, v5, v6, v1}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->d(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v9, 0x4

    :goto_15
    or-int v12, v12, v22

    move/from16 v4, p4

    goto :goto_14

    :pswitch_d
    move-object/from16 v8, p2

    move-object v10, v9

    move-wide v5, v13

    move-object/from16 v14, v21

    move/from16 v3, v23

    move/from16 v9, p3

    move-object/from16 v13, p6

    if-ne v7, v3, :cond_13

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/clearcut/zzax;->h(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    move-wide/from16 v24, v5

    move-wide v5, v3

    move-wide/from16 v3, v24

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->c(Ljava/lang/Object;JD)V

    add-int/lit8 v3, v9, 0x8

    goto :goto_15

    :cond_13
    :goto_16
    move/from16 v6, p5

    move-object v7, v0

    move-object v8, v2

    move v2, v9

    move-object v15, v14

    move/from16 v5, v19

    move-object/from16 v19, v10

    goto/16 :goto_1b

    :cond_14
    move-object/from16 v3, v21

    move/from16 v21, v12

    move-wide v12, v13

    move-object v14, v3

    move-object/from16 v20, v5

    move-object v3, v9

    const/4 v15, -0x1

    move/from16 v9, p3

    const/16 v4, 0x1b

    if-ne v1, v4, :cond_18

    const/4 v4, 0x2

    if-ne v7, v4, :cond_17

    invoke-virtual {v3, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzcn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/clearcut/zzcn;->o0()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_15

    const/16 v4, 0xa

    goto :goto_17

    :cond_15
    shl-int/lit8 v4, v4, 0x1

    :goto_17
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/clearcut/zzcn;->v0(I)Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v1

    invoke-virtual {v3, v2, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_16
    move-object v6, v1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/zzds;->s(I)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v9

    move/from16 v2, v19

    move-object v9, v3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/clearcut/zzds;->h(Lcom/google/android/gms/internal/clearcut/zzef;I[BIILcom/google/android/gms/internal/clearcut/zzcn;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v1

    move-object/from16 v2, p1

    move/from16 v4, p4

    move-object/from16 v8, p6

    move v3, v1

    move v10, v15

    move/from16 v5, v19

    move/from16 v12, v21

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_17
    move/from16 v24, v9

    move-object v9, v3

    move/from16 v3, v24

    move-object/from16 v8, p1

    move-object v7, v0

    move/from16 p3, v11

    move-object v15, v14

    move/from16 v5, v19

    move-object/from16 v19, v9

    goto/16 :goto_1a

    :cond_18
    move/from16 v24, v9

    move-object v9, v3

    move/from16 v3, v24

    const/16 v2, 0x31

    if-gt v1, v2, :cond_1a

    move-object v4, v9

    int-to-long v9, v10

    move-object/from16 v2, p2

    move/from16 p3, v11

    move-object v15, v14

    move/from16 v5, v19

    move-object/from16 v14, p6

    move v11, v1

    move-object/from16 v19, v4

    move-object/from16 v1, p1

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/zzds;->l(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v6

    move v9, v5

    if-ne v6, v3, :cond_19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    move v2, v6

    move v5, v9

    :goto_18
    move/from16 v12, v21

    move/from16 v6, p5

    goto/16 :goto_1b

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v11, p3

    move/from16 v4, p4

    move-object/from16 v8, p6

    move v3, v6

    move v5, v9

    move-object/from16 v9, v19

    move/from16 v12, v21

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_1a
    move/from16 p3, v19

    move-object/from16 v19, v9

    move/from16 v9, p3

    move/from16 p3, v11

    move-object v15, v14

    move v11, v1

    move-wide v0, v12

    move v12, v8

    const/16 v2, 0x32

    if-ne v11, v2, :cond_1c

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1b

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v5, v9

    goto/16 :goto_1a

    :cond_1b
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v8, p6

    move-wide v6, v0

    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/clearcut/zzds;->p(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/clearcut/zzay;)V

    throw v17

    :cond_1c
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move v5, v9

    move v8, v10

    move v9, v11

    move-wide v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/zzds;->k(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v6

    move-object v7, v0

    move-object v8, v1

    if-ne v6, v3, :cond_1d

    move/from16 v11, p3

    move v2, v6

    goto :goto_18

    :cond_1d
    move-object/from16 v1, p2

    move/from16 v11, p3

    move/from16 v4, p4

    move v3, v6

    move-object v0, v7

    move-object v2, v8

    move-object/from16 v9, v19

    move/from16 v12, v21

    const/4 v10, -0x1

    :goto_19
    move-object/from16 v8, p6

    goto/16 :goto_0

    :cond_1e
    move-object v7, v0

    move-object v8, v2

    move-object/from16 v20, v5

    move-object/from16 v19, v9

    move/from16 p3, v11

    move/from16 v21, v12

    move v5, v13

    move-object v15, v14

    :goto_1a
    move/from16 v11, p3

    move/from16 v6, p5

    move v2, v3

    move/from16 v12, v21

    :goto_1b
    if-ne v5, v6, :cond_20

    if-nez v6, :cond_1f

    goto :goto_1c

    :cond_1f
    move/from16 v4, p4

    move v3, v2

    const/4 v15, -0x1

    goto :goto_1d

    :cond_20
    :goto_1c
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzcg;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    if-ne v1, v15, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzey;->b()Lcom/google/android/gms/internal/clearcut/zzey;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzcg;->zzjp:Lcom/google/android/gms/internal/clearcut/zzey;

    :cond_21
    move/from16 v3, p4

    move-object v4, v1

    move v0, v5

    move-object/from16 v1, p2

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/zzax;->b(I[BIILcom/google/android/gms/internal/clearcut/zzey;Lcom/google/android/gms/internal/clearcut/zzay;)I

    move-result v2

    move v5, v0

    move-object/from16 v1, p2

    move v4, v3

    move-object v0, v7

    move-object/from16 v9, v19

    const/4 v10, -0x1

    move v3, v2

    move-object v2, v8

    goto :goto_19

    :cond_22
    move-object v7, v0

    move-object v8, v2

    move-object/from16 v20, v6

    move-object/from16 v19, v9

    move/from16 p3, v11

    move/from16 v21, v12

    move/from16 v6, p5

    move v15, v10

    :goto_1d
    if-eq v11, v15, :cond_23

    int-to-long v0, v11

    move-object/from16 v9, v19

    invoke-virtual {v9, v8, v0, v1, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    iget-object v0, v7, Lcom/google/android/gms/internal/clearcut/zzds;->j:[I

    if-eqz v0, :cond_26

    array-length v1, v0

    move/from16 v2, v16

    :goto_1e
    if-ge v2, v1, :cond_26

    aget v9, v0, v2

    aget v10, v20, v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result v10

    and-int v10, v10, v18

    int-to-long v10, v10

    invoke-static {v10, v11, v8}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_24

    goto :goto_1f

    :cond_24
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/clearcut/zzds;->u(I)Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v11

    if-nez v11, :cond_25

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_25
    iget-object v0, v7, Lcom/google/android/gms/internal/clearcut/zzds;->p:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/clearcut/zzdj;->N(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdi;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/clearcut/zzds;->t(I)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/zzdj;->J()V

    throw v17

    :cond_26
    if-nez v6, :cond_28

    if-ne v3, v4, :cond_27

    goto :goto_20

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->b()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object v0

    throw v0

    :cond_28
    if-gt v3, v4, :cond_29

    if-ne v5, v6, :cond_29

    :goto_20
    return v3

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->b()Lcom/google/android/gms/internal/clearcut/zzco;

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

.method public final o(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object p2

    :goto_0
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->x(ILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final p(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/clearcut/zzay;)V
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/clearcut/zzds;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/clearcut/zzds;->t(I)Ljava/lang/Object;

    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->p:Lcom/google/android/gms/internal/clearcut/zzdj;

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzdj;->M(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/zzdj;->a()Lcom/google/android/gms/internal/clearcut/zzdi;

    move-result-object p4

    invoke-interface {p0, p4, p3}, Lcom/google/android/gms/internal/clearcut/zzdj;->O(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdi;

    invoke-virtual {p2, p1, p6, p7, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/zzdj;->J()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(ILjava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->h:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    const/high16 p1, 0xff00000

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v4, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return v2

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzbb;->c:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzbb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/clearcut/zzbb;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzbb;->c:Lcom/google/android/gms/internal/clearcut/zzbb;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzbb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lct0;->c()V

    return v2

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->i(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->j(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->k(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    shl-int p1, v3, p1

    and-int/2addr p0, v1

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    return v3

    :cond_3
    return v2

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

.method public final s(I)Lcom/google/android/gms/internal/clearcut/zzef;
    .locals 2

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzef;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzea;->c:Lcom/google/android/gms/internal/clearcut/zzea;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzea;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final t(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final u(I)Lcom/google/android/gms/internal/clearcut/zzck;
    .locals 0

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzck;

    return-object p0
.end method

.method public final v(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final w(I)I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->c:I

    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/zzds;->e:I

    if-ge p1, v2, :cond_0

    sub-int p0, p1, v0

    shl-int/lit8 p0, p0, 0x2

    aget v0, v1, p0

    if-ne v0, p1, :cond_3

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->d:I

    if-gt p1, p0, :cond_3

    sub-int/2addr v2, v0

    array-length p0, v1

    div-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-gt v2, p0, :cond_3

    add-int v0, p0, v2

    ushr-int/lit8 v0, v0, 0x1

    shl-int/lit8 v3, v0, 0x2

    aget v4, v1, v3

    if-ne p1, v4, :cond_1

    return v3

    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 p0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final x(ILjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzfd;->d:Lcom/google/android/gms/internal/clearcut/zzfd$zzd;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd$zzd;->g(JLjava/lang/Object;)I

    move-result p0

    or-int/2addr p0, p1

    invoke-static {p2, v0, v1, p0}, Lcom/google/android/gms/internal/clearcut/zzfd;->d(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/clearcut/zzds;->v(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzds;->a:[I

    aget v2, v1, p3

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {p0, v2, p3, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->q(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/clearcut/zzci;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/zzdo;

    move-result-object p0

    invoke-static {v4, v5, p1, p0}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    :goto_0
    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p1, p2, p3, v2}, Lcom/google/android/gms/internal/clearcut/zzfd;->d(Ljava/lang/Object;JI)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v4, v5, p1, p2}, Lcom/google/android/gms/internal/clearcut/zzfd;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/clearcut/zzcg;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/clearcut/zzds;->r(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

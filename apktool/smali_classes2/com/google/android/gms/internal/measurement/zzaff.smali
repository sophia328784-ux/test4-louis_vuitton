.class final Lcom/google/android/gms/internal/measurement/zzaff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzafp<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final m:[I

.field public static final n:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/zzafc;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/measurement/zzafz;

.field public final l:Lcom/google/android/gms/internal/measurement/zzadg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->m:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzagg;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzafc;[IIILcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzaff;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->g:Z

    const/4 p1, 0x0

    if-eqz p10, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/measurement/zzadr;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzaff;->h:[I

    iput p7, p0, Lcom/google/android/gms/internal/measurement/zzaff;->i:I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/zzaff;->j:I

    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/zzaff;->k:Lcom/google/android/gms/internal/measurement/zzafz;

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/zzaff;->l:Lcom/google/android/gms/internal/measurement/zzadg;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    return-void
.end method

.method public static A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v4, v2, p1, v3, p0}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " not found. Known fields are "

    invoke-static {p0, v1, v4}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lr81;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->m()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static m(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mutating immutable message: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static n(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static o(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static final w([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzacg;)I
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagm;->zza:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const-string p0, "unsupported field type."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return v0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzacv;->k(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p0

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzacv;->j(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p0

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzach;->g([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    return p0

    :pswitch_4
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzafl;->c:Lcom/google/android/gms/internal/measurement/zzafl;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zzafl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzach;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzafp;->g(Ljava/lang/Object;)V

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p0

    :pswitch_5
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzach;->f([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    return p0

    :pswitch_6
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget-wide p1, v5, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p0

    :pswitch_7
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p1

    :pswitch_8
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x8

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p1

    :pswitch_9
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget p1, v5, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p0

    :pswitch_a
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result p0

    iget-wide p1, v5, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p0

    :pswitch_b
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p1

    :pswitch_c
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x8

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    return p1

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
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaga;->f:Lcom/google/android/gms/internal/measurement/zzaga;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_0
    return-object v0
.end method

.method public static z(Lcom/google/android/gms/internal/measurement/zzaez;Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadh;)Lcom/google/android/gms/internal/measurement/zzaff;
    .locals 34

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzafn;

    if-eqz v1, :cond_36

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafn;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzafn;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzaff;->m:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    :goto_8
    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    move v14, v13

    goto :goto_8

    :cond_11
    move v14, v13

    :cond_12
    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v16

    goto :goto_9

    :cond_13
    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    move/from16 v13, v16

    :cond_14
    add-int v15, v14, v12

    add-int/2addr v15, v4

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v15, [I

    move v15, v12

    move v12, v9

    move v9, v15

    move-object v15, v7

    move v7, v4

    move v4, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzafn;->c:[Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzafn;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    add-int v9, v16, v9

    add-int v6, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v6, v6, [Ljava/lang/Object;

    move/from16 v21, v9

    move/from16 v22, v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v5, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_15

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v4, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v5, v25

    move/from16 v2, v26

    goto :goto_c

    :cond_15
    shl-int v2, v5, v23

    or-int/2addr v4, v2

    move/from16 v2, v25

    goto :goto_d

    :cond_16
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_d
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v23, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_17

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v25

    or-int/2addr v2, v3

    add-int/lit8 v25, v25, 0xd

    move/from16 v5, v27

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v5, v25

    or-int/2addr v2, v3

    move/from16 v5, v27

    :cond_18
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_19

    add-int/lit8 v3, v19, 0x1

    aput v20, v15, v19

    move/from16 v19, v3

    :cond_19
    and-int/lit16 v3, v2, 0xff

    move/from16 v25, v4

    and-int/lit16 v4, v2, 0x800

    move/from16 v27, v4

    const/16 v4, 0x33

    if-lt v3, v4, :cond_23

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v4

    const v4, 0xd800

    if-lt v5, v4, :cond_1b

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v32, v28

    move/from16 v28, v5

    move/from16 v5, v32

    const/16 v32, 0xd

    :goto_f
    add-int/lit8 v33, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_1a

    and-int/lit16 v4, v5, 0x1fff

    shl-int v4, v4, v32

    or-int v28, v28, v4

    add-int/lit8 v32, v32, 0xd

    move/from16 v5, v33

    const v4, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v5, v32

    or-int v5, v28, v4

    move/from16 v4, v33

    goto :goto_10

    :cond_1b
    move/from16 v4, v28

    :goto_10
    move/from16 v28, v4

    add-int/lit8 v4, v3, -0x33

    move/from16 v32, v5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    goto :goto_13

    :cond_1d
    const/16 v5, 0xc

    if-ne v4, v5, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafn;->f0()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    if-eqz v27, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    goto :goto_14

    :cond_1f
    :goto_11
    add-int/lit8 v4, v10, 0x1

    div-int/lit8 v18, v20, 0x3

    add-int v18, v18, v18

    add-int/lit8 v18, v18, 0x1

    aget-object v10, v23, v10

    aput-object v10, v6, v18

    :goto_12
    move v10, v4

    :cond_20
    move/from16 v4, v27

    goto :goto_14

    :goto_13
    add-int/lit8 v4, v10, 0x1

    div-int/lit8 v18, v20, 0x3

    add-int v18, v18, v18

    add-int/lit8 v29, v18, 0x1

    aget-object v5, v23, v10

    aput-object v5, v6, v29

    goto :goto_12

    :goto_14
    add-int v5, v32, v32

    move/from16 v27, v4

    aget-object v4, v23, v5

    move/from16 v29, v5

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_21

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/measurement/zzaff;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v23, v29

    add-int/lit8 v5, v21, 0x1

    aput v20, v15, v21

    move/from16 v21, v5

    :goto_15
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v5, v29, 0x1

    move/from16 v29, v4

    aget-object v4, v23, v5

    move/from16 v30, v5

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/measurement/zzaff;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v23, v30

    :goto_16
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v31, v1

    move v1, v3

    move/from16 v5, v28

    move/from16 v30, v29

    const/4 v3, 0x0

    const v24, 0xd800

    move-object/from16 v28, v6

    move/from16 v29, v7

    move-object v6, v8

    move v8, v4

    move/from16 v4, v27

    goto/16 :goto_22

    :cond_23
    add-int/lit8 v4, v10, 0x1

    aget-object v28, v23, v10

    move/from16 v32, v4

    move-object/from16 v4, v28

    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/measurement/zzaff;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object/from16 v28, v6

    const/16 v6, 0x9

    if-eq v3, v6, :cond_24

    const/16 v6, 0x11

    if-ne v3, v6, :cond_25

    :cond_24
    move/from16 v29, v7

    const/4 v7, 0x1

    goto/16 :goto_1c

    :cond_25
    const/16 v6, 0x1b

    if-eq v3, v6, :cond_2d

    const/16 v6, 0x31

    if-ne v3, v6, :cond_26

    add-int/lit8 v10, v10, 0x2

    move/from16 v29, v7

    const/4 v7, 0x1

    goto/16 :goto_1b

    :cond_26
    const/16 v6, 0xc

    if-eq v3, v6, :cond_2a

    const/16 v6, 0x1e

    if-eq v3, v6, :cond_2a

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_27

    goto :goto_18

    :cond_27
    const/16 v6, 0x32

    if-ne v3, v6, :cond_29

    add-int/lit8 v6, v10, 0x2

    add-int/lit8 v29, v22, 0x1

    aput v20, v15, v22

    div-int/lit8 v22, v20, 0x3

    aget-object v30, v23, v32

    add-int v22, v22, v22

    aput-object v30, v28, v22

    if-eqz v27, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v10, v10, 0x3

    aget-object v6, v23, v6

    aput-object v6, v28, v22

    move-object v6, v8

    move/from16 v22, v29

    :goto_17
    move/from16 v29, v7

    goto :goto_1e

    :cond_28
    move v10, v6

    move-object v6, v8

    move/from16 v22, v29

    const/16 v27, 0x0

    goto :goto_17

    :cond_29
    move/from16 v29, v7

    const/4 v7, 0x1

    goto :goto_1d

    :cond_2a
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafn;->f0()I

    move-result v6

    move/from16 v29, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2c

    if-eqz v27, :cond_2b

    goto :goto_19

    :cond_2b
    move-object v6, v8

    move/from16 v10, v32

    const/16 v27, 0x0

    goto :goto_1e

    :cond_2c
    :goto_19
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v6, v20, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    aget-object v18, v23, v32

    aput-object v18, v28, v6

    :goto_1a
    move-object v6, v8

    goto :goto_1e

    :cond_2d
    move/from16 v29, v7

    const/4 v7, 0x1

    add-int/lit8 v10, v10, 0x2

    :goto_1b
    div-int/lit8 v6, v20, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    aget-object v18, v23, v32

    aput-object v18, v28, v6

    goto :goto_1a

    :goto_1c
    div-int/lit8 v6, v20, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v28, v6

    :goto_1d
    move-object v6, v8

    move/from16 v10, v32

    :goto_1e
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v4, v7

    and-int/lit16 v7, v2, 0x1000

    const v8, 0xfffff

    if-eqz v7, :cond_31

    const/16 v7, 0x11

    if-gt v3, v7, :cond_31

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v8, 0xd800

    if-lt v5, v8, :cond_2f

    and-int/lit16 v5, v5, 0x1fff

    const/16 v24, 0xd

    :goto_1f
    add-int/lit8 v30, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2e

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v24

    or-int/2addr v5, v7

    add-int/lit8 v24, v24, 0xd

    move/from16 v7, v30

    goto :goto_1f

    :cond_2e
    shl-int v7, v7, v24

    or-int/2addr v5, v7

    move/from16 v7, v30

    :cond_2f
    add-int v24, v29, v29

    div-int/lit8 v30, v5, 0x20

    add-int v30, v30, v24

    aget-object v8, v23, v30

    move-object/from16 v31, v1

    instance-of v1, v8, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v8, Ljava/lang/reflect/Field;

    :goto_20
    move v1, v3

    move/from16 v30, v4

    goto :goto_21

    :cond_30
    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->A(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v23, v30

    goto :goto_20

    :goto_21
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    rem-int/lit8 v5, v5, 0x20

    move v8, v4

    move v3, v5

    move v5, v7

    move/from16 v4, v27

    const v24, 0xd800

    goto :goto_22

    :cond_31
    move-object/from16 v31, v1

    move v1, v3

    move/from16 v30, v4

    const v24, 0xd800

    move/from16 v4, v27

    const/4 v3, 0x0

    :goto_22
    add-int/lit8 v7, v20, 0x1

    aput v25, v11, v20

    add-int/lit8 v25, v20, 0x2

    move/from16 v27, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_23

    :cond_32
    const/4 v1, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_33

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_33
    const/4 v2, 0x0

    :goto_24
    if-eqz v4, :cond_34

    const/high16 v4, -0x80000000

    goto :goto_25

    :cond_34
    const/4 v4, 0x0

    :goto_25
    shl-int/lit8 v27, v27, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    or-int v1, v1, v27

    or-int v1, v1, v30

    aput v1, v11, v7

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v1, v8

    aput v1, v11, v25

    move v4, v5

    move-object v8, v6

    move-object/from16 v3, v23

    move/from16 v5, v24

    move/from16 v2, v26

    move-object/from16 v6, v28

    move/from16 v7, v29

    move-object/from16 v1, v31

    goto/16 :goto_b

    :cond_35
    move-object/from16 v28, v6

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaff;

    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzafn;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v17, v9

    move-object v10, v11

    move-object/from16 v11, v28

    move-object v9, v1

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/measurement/zzaff;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzafc;[IIILcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;)V

    return-object v9

    :cond_36
    invoke-static {}, Lr81;->h()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p2

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget p0, p0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, v1, p3, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    int-to-long v4, v2

    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p2

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v2}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    aget p1, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final D(I)Lcom/google/android/gms/internal/measurement/zzafp;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzafl;->c:Lcom/google/android/gms/internal/measurement/zzafl;

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzafl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final E(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final F(I)Lcom/google/android/gms/internal/measurement/zzadz;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadz;

    return-object p0
.end method

.method public final G(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final H(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    return-void
.end method

.method public final I(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/measurement/zzafp;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final J(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    return-void
.end method

.method public final K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->E(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaew;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/zzadz;->e(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/measurement/zzafz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzaev;->b(Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzacr;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    new-array v3, v2, [B

    sget-boolean v4, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzacx;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/zzacx;-><init>([BI)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, p0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzaev;->a(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzada;->e()V

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzacq;

    invoke-direct {p2, v3}, Lcom/google/android/gms/internal/measurement/zzacq;-><init>([B)V

    move-object v2, p4

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v2, v0, 0x3

    move-object v3, p3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object p3
.end method

.method public final L(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)V
    .locals 3

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    and-int/2addr p1, v1

    int-to-long v1, p1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->H()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p3, p0}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->g:Z

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->G()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p3, p0}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->K()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p0

    invoke-static {v1, v2, p3, p0}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzadb;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/zzadb;->a:Lcom/google/android/gms/internal/measurement/zzada;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzadk;->a:Lcom/google/android/gms/internal/measurement/zzafr;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzadk;->b()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v9, v1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    const v11, 0xfffff

    move v3, v11

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v13, v5

    if-ge v1, v13, :cond_3d

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v14

    aget v15, v5, v1

    const/16 v16, 0x0

    const/16 v8, 0x11

    if-gt v14, v8, :cond_3

    add-int/lit8 v8, v1, 0x2

    aget v8, v5, v8

    and-int v12, v8, v11

    if-eq v12, v3, :cond_2

    if-ne v12, v11, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    int-to-long v3, v12

    invoke-virtual {v10, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_2
    move v3, v12

    :cond_2
    ushr-int/lit8 v8, v8, 0x14

    const/4 v12, 0x1

    shl-int v8, v12, v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-nez v9, :cond_3c

    and-int v12, v13, v11

    int-to-long v12, v12

    const/16 v17, 0x3f

    const/4 v11, 0x2

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_52

    :pswitch_0
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    invoke-virtual {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzadb;->s(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_52

    :pswitch_1
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->q(IJ)V

    goto/16 :goto_52

    :pswitch_2
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->p(II)V

    goto/16 :goto_52

    :pswitch_3
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->e(IJ)V

    goto/16 :goto_52

    :pswitch_4
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->c(II)V

    goto/16 :goto_52

    :pswitch_5
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->h(II)V

    goto/16 :goto_52

    :pswitch_6
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->o(II)V

    goto/16 :goto_52

    :pswitch_7
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_52

    :pswitch_8
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    invoke-virtual {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzadb;->r(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_52

    :pswitch_9
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v15, v5}, Lcom/google/android/gms/internal/measurement/zzada;->m(ILjava/lang/String;)V

    goto/16 :goto_52

    :cond_4
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_52

    :pswitch_a
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->m(IZ)V

    goto/16 :goto_52

    :pswitch_b
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->l(II)V

    goto/16 :goto_52

    :pswitch_c
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->k(IJ)V

    goto/16 :goto_52

    :pswitch_d
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/measurement/zzadb;->j(II)V

    goto/16 :goto_52

    :pswitch_e
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->i(IJ)V

    goto/16 :goto_52

    :pswitch_f
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->d(IJ)V

    goto/16 :goto_52

    :pswitch_10
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6, v5, v15}, Lcom/google/android/gms/internal/measurement/zzadb;->f(FI)V

    goto/16 :goto_52

    :pswitch_11
    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v15}, Lcom/google/android/gms/internal/measurement/zzadb;->g(DI)V

    goto/16 :goto_52

    :pswitch_12
    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->E(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzaew;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-virtual {v7, v15, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzaev;->b(Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v8, v13, v12}, Lcom/google/android/gms/internal/measurement/zzaev;->a(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_13
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    const/4 v12, 0x0

    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3b

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v5, v13, v11}, Lcom/google/android/gms/internal/measurement/zzadb;->s(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :pswitch_14
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v12, :cond_6

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_6
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v12, :cond_5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    add-long v14, v12, v12

    shr-long v12, v12, v17

    xor-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_7
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v11, v11, v17

    xor-long/2addr v11, v13

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->x(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v14, v12, v12

    shr-long v12, v12, v17

    xor-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v11, v11, v17

    xor-long/2addr v11, v13

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->x(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :pswitch_15
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v12, :cond_9

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_a
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v12, :cond_8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    add-int v13, v12, v12

    shr-int/lit8 v12, v12, 0x1f

    xor-int/2addr v12, v13

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_8
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_b
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v11

    add-int v12, v11, v11

    shr-int/lit8 v11, v11, 0x1f

    xor-int/2addr v11, v12

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_9
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_a

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v13, v12, v12

    shr-int/lit8 v12, v12, 0x1f

    xor-int/2addr v12, v13

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_a
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v12, v11, v11

    shr-int/lit8 v11, v11, 0x1f

    xor-int/2addr v11, v12

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :pswitch_16
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v12, :cond_c

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_e
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v12, :cond_b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_b
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_f
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->y(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_c
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_d

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_d
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_11
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->y(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :pswitch_17
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v12, :cond_f

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_12
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v12, :cond_e

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_e
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_13
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->w(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_f
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_10

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_10
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_15
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->w(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :pswitch_18
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v12, :cond_12

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_16
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v12, :cond_11

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_11
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_17
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->u(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_12
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_18
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_13

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_13
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_19
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->u(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :pswitch_19
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v12, :cond_15

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1a
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v12, :cond_14

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_14
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_1b
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_15
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_16

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_16
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_1d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :pswitch_1a
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzaci;

    if-nez v12, :cond_18

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_17

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_17
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_1f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->t(B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_18
    invoke-static {}, Lr81;->h()V

    return-void

    :pswitch_1b
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v12, :cond_1a

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_20
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v12, :cond_19

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_19
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_21
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->w(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_1a
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_22
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_1b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_1b
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_23
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->w(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :pswitch_1c
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v12, :cond_1d

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_24
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v12, :cond_1c

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_1c
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_25
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->y(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_1d
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_26
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_1e

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_1e
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_27
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->y(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :pswitch_1d
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v12, :cond_20

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_28
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v12, :cond_1f

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_1f
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_29
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->u(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_20
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_21

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_21
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_2b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->u(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :pswitch_1e
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v12, :cond_23

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2c
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v12, :cond_22

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_22
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_2d
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->x(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_23
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_24

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_24
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_2f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->x(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :pswitch_1f
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v12, :cond_26

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_30
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v12, :cond_25

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_25
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_31
    iget v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v5, v11, :cond_3b

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->x(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_26
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_32
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_27

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_27
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_33
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->x(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :pswitch_20
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadm;

    if-nez v12, :cond_29

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_34
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_28

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_28
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_35
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->w(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_29
    invoke-static {}, Lr81;->h()V

    return-void

    :pswitch_21
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    instance-of v12, v8, Lcom/google/android/gms/internal/measurement/zzadc;

    if-nez v12, :cond_2b

    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/internal/measurement/zzada;->f(II)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_36
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_2a

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :cond_2a
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzada;->v(I)V

    const/4 v5, 0x0

    :goto_37
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3b

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/measurement/zzada;->y(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_2b
    invoke-static {}, Lr81;->h()V

    return-void

    :pswitch_22
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v11, :cond_2c

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    const/4 v11, 0x0

    :goto_38
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    add-long v14, v12, v12

    shr-long v12, v12, v17

    xor-long/2addr v12, v14

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :cond_2c
    const/4 v11, 0x0

    :goto_39
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v14, v12, v12

    shr-long v12, v12, v17

    xor-long/2addr v12, v14

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :pswitch_23
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v11, :cond_2d

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    const/4 v11, 0x0

    :goto_3a
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    add-int v13, v12, v12

    shr-int/lit8 v12, v12, 0x1f

    xor-int/2addr v12, v13

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->h(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3a

    :cond_2d
    const/4 v11, 0x0

    :goto_3b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v13, v12, v12

    shr-int/lit8 v12, v12, 0x1f

    xor-int/2addr v12, v13

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->h(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    :pswitch_24
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v11, :cond_2e

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    const/4 v11, 0x0

    :goto_3c
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    :cond_2e
    const/4 v11, 0x0

    :goto_3d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    :pswitch_25
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v11, :cond_2f

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    const/4 v11, 0x0

    :goto_3e
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    :cond_2f
    const/4 v11, 0x0

    :goto_3f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :pswitch_26
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v11, :cond_30

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    const/4 v11, 0x0

    :goto_40
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->g(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    :cond_30
    const/4 v11, 0x0

    :goto_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->g(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    :pswitch_27
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v11, :cond_31

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    const/4 v11, 0x0

    :goto_42
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->h(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    :cond_31
    const/4 v11, 0x0

    :goto_43
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->h(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :pswitch_28
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    invoke-virtual {v6, v5, v8}, Lcom/google/android/gms/internal/measurement/zzadb;->b(ILjava/util/List;)V

    goto/16 :goto_52

    :pswitch_29
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3b

    const/4 v12, 0x0

    :goto_44
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3b

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v5, v13, v11}, Lcom/google/android/gms/internal/measurement/zzadb;->r(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_44

    :pswitch_2a
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    invoke-virtual {v6, v5, v8}, Lcom/google/android/gms/internal/measurement/zzadb;->a(ILjava/util/List;)V

    goto/16 :goto_52

    :pswitch_2b
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzaci;

    if-nez v11, :cond_32

    const/4 v11, 0x0

    :goto_45
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->l(IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    :cond_32
    invoke-static {}, Lr81;->h()V

    return-void

    :pswitch_2c
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v11, :cond_33

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    const/4 v11, 0x0

    :goto_46
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    :cond_33
    const/4 v11, 0x0

    :goto_47
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_47

    :pswitch_2d
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v11, :cond_34

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    const/4 v11, 0x0

    :goto_48
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    :cond_34
    const/4 v11, 0x0

    :goto_49
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    :pswitch_2e
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadv;

    if-eqz v11, :cond_35

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzadv;

    const/4 v11, 0x0

    :goto_4a
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzadv;->y(I)I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->g(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4a

    :cond_35
    const/4 v11, 0x0

    :goto_4b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->g(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    :pswitch_2f
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v11, :cond_36

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    const/4 v11, 0x0

    :goto_4c
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    :cond_36
    const/4 v11, 0x0

    :goto_4d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4d

    :pswitch_30
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    if-eqz v11, :cond_37

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaeq;

    const/4 v11, 0x0

    :goto_4e
    iget v12, v8, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    if-ge v11, v12, :cond_3b

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzaeq;->C(I)J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    :cond_37
    const/4 v11, 0x0

    :goto_4f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->j(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    :pswitch_31
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadm;

    if-nez v11, :cond_38

    const/4 v11, 0x0

    :goto_50
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    invoke-virtual {v7, v5, v12}, Lcom/google/android/gms/internal/measurement/zzada;->i(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    :cond_38
    invoke-static {}, Lr81;->h()V

    return-void

    :pswitch_32
    aget v5, v5, v1

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-eqz v8, :cond_3b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3b

    instance-of v11, v8, Lcom/google/android/gms/internal/measurement/zzadc;

    if-nez v11, :cond_39

    const/4 v11, 0x0

    :goto_51
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v12

    invoke-virtual {v7, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzada;->k(IJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_51

    :cond_39
    invoke-static {}, Lr81;->h()V

    return-void

    :pswitch_33
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    invoke-virtual {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzadb;->s(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_52

    :pswitch_34
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->q(IJ)V

    goto/16 :goto_52

    :pswitch_35
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->p(II)V

    goto/16 :goto_52

    :pswitch_36
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->e(IJ)V

    goto/16 :goto_52

    :pswitch_37
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->c(II)V

    goto/16 :goto_52

    :pswitch_38
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->h(II)V

    goto/16 :goto_52

    :pswitch_39
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->o(II)V

    goto/16 :goto_52

    :pswitch_3a
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_52

    :pswitch_3b
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v8

    invoke-virtual {v6, v15, v5, v8}, Lcom/google/android/gms/internal/measurement/zzadb;->r(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)V

    goto/16 :goto_52

    :pswitch_3c
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_3a

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v15, v0}, Lcom/google/android/gms/internal/measurement/zzada;->m(ILjava/lang/String;)V

    goto/16 :goto_52

    :cond_3a
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->n(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_52

    :pswitch_3d
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->b(JLjava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->m(IZ)V

    goto/16 :goto_52

    :pswitch_3e
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->l(II)V

    goto :goto_52

    :pswitch_3f
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->k(IJ)V

    goto :goto_52

    :pswitch_40
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/measurement/zzadb;->j(II)V

    goto :goto_52

    :pswitch_41
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->i(IJ)V

    goto :goto_52

    :pswitch_42
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v10, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v6, v15, v11, v12}, Lcom/google/android/gms/internal/measurement/zzadb;->d(IJ)V

    goto :goto_52

    :pswitch_43
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->d(JLjava/lang/Object;)F

    move-result v0

    invoke-virtual {v6, v0, v15}, Lcom/google/android/gms/internal/measurement/zzadb;->f(FI)V

    goto :goto_52

    :pswitch_44
    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->f(JLjava/lang/Object;)D

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v15}, Lcom/google/android/gms/internal/measurement/zzadb;->g(DI)V

    :cond_3b
    :goto_52
    add-int/lit8 v1, v1, 0x3

    const v11, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_3c
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v16

    :cond_3d
    const/16 v16, 0x0

    if-nez v9, :cond_3e

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzaga;->b(Lcom/google/android/gms/internal/measurement/zzadb;)V

    return-void

    :cond_3e
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v16

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

.method public final b(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzacg;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->y(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/zzadu;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v3, v3

    const v4, 0xfffff

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_0

    const/16 v6, 0x45

    if-lt v5, v6, :cond_3

    :cond_0
    and-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_5

    :pswitch_1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_1
    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_5

    :pswitch_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    :goto_3
    ushr-long v5, v3, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    :goto_4
    add-int/2addr v2, v3

    goto/16 :goto_5

    :pswitch_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    goto :goto_4

    :pswitch_5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    goto :goto_3

    :pswitch_6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    goto :goto_4

    :pswitch_7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    goto :goto_4

    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    goto :goto_4

    :pswitch_9
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_2

    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_c
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagf;->b(JLjava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_4

    :cond_2
    const/16 v3, 0x4d5

    goto :goto_4

    :pswitch_d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    goto :goto_4

    :pswitch_e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    goto :goto_3

    :pswitch_f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    goto :goto_4

    :pswitch_10
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    goto/16 :goto_3

    :pswitch_11
    mul-int/lit8 v2, v2, 0x35

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagf;->d(JLjava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagf;->f(JLjava/lang/Object;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->a:[B

    goto/16 :goto_3

    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->j:I

    :goto_6
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->h:[I

    array-length v5, v3

    if-ge v1, v5, :cond_6

    aget v3, v3, v1

    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaga;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz p0, :cond_7

    mul-int/lit8 v0, v0, 0x35

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadk;->a:Lcom/google/android/gms/internal/measurement/zzafr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzafv;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_7
    return v0

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
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->m(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v6, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->C(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->C(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaex;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaef;->d0()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/measurement/zzaef;->d(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v1

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v6, v7, p1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->B(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->B(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->b(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->c(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->d(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->e(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->f(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/measurement/zzagf;->g(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    invoke-static {v5, p2}, Lcom/google/android/gms/internal/measurement/zzafq;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz p0, :cond_6

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadk;->a:Lcom/google/android/gms/internal/measurement/zzafr;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v5

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_4
    return-void

    nop

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

.method public final d0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->o()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/zzadu;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v3, v8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v10, v5

    if-ge v1, v10, :cond_1f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v11

    aget v12, v5, v1

    add-int/lit8 v13, v1, 0x2

    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    invoke-virtual {v6, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v10, v8

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzadl;->zzJ:Lcom/google/android/gms/internal/measurement/zzadl;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzadl;->d0()I

    move-result v13

    if-lt v11, v13, :cond_3

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzadl;->zzW:Lcom/google/android/gms/internal/measurement/zzadl;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    int-to-long v13, v10

    const/16 v10, 0x3f

    const/4 v7, 0x4

    const/16 v8, 0x8

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    add-int/2addr v8, v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzacb;->j(Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v8

    add-int/2addr v9, v5

    goto/16 :goto_1a

    :pswitch_1
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v7

    add-long v11, v7, v7

    shr-long/2addr v7, v10

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    xor-long/2addr v7, v11

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v7

    :goto_4
    add-int/2addr v7, v5

    add-int/2addr v9, v7

    goto/16 :goto_1a

    :pswitch_2
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v7

    add-int v8, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    xor-int/2addr v7, v8

    invoke-static {v7, v5, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_3
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v8, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_4
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v7, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_5
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v7

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-static {v7, v5, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_7
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v7

    invoke-static {v7, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_8
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v7

    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    :goto_5
    add-int/2addr v9, v5

    goto/16 :goto_1a

    :pswitch_9
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v7

    invoke-static {v7, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :cond_4
    check-cast v7, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzagl;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_a
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v15, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_b
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v7, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_c
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v8, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_d
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->n(JLjava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v7

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v7

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->o(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v7

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v7, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_11
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v8, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_12
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->E(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaew;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_6
    const/4 v8, 0x0

    goto :goto_8

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzaew;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    iget-object v13, v7, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    shl-int/lit8 v14, v12, 0x3

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v14

    invoke-static {v13, v11, v10}, Lcom/google/android/gms/internal/measurement/zzaev;->b(Lcom/google/android/gms/internal/measurement/zzaeu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10, v10, v14, v8}, Lz81;->b(IIII)I

    move-result v8

    goto :goto_7

    :cond_6
    :goto_8
    add-int/2addr v9, v8

    goto/16 :goto_1a

    :pswitch_13
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v11, 0x0

    goto :goto_a

    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_9
    if-ge v10, v8, :cond_8

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzafc;

    shl-int/lit8 v14, v12, 0x3

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v14

    add-int/2addr v14, v14

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/measurement/zzacb;->j(Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v13

    add-int/2addr v13, v14

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_8
    :goto_a
    add-int/2addr v9, v11

    goto/16 :goto_1a

    :pswitch_14
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_15
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_16
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v8

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_17
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_18
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_19
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_1a
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_1b
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_1c
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v8

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_1d
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_1e
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_1f
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_20
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_21
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v8

    if-lez v5, :cond_1e

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_22
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_6

    :cond_9
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    :goto_b
    mul-int/2addr v8, v7

    add-int/2addr v8, v5

    goto/16 :goto_8

    :pswitch_23
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_6

    :cond_a
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->j(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    goto :goto_b

    :pswitch_24
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->l(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_25
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->k(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_26
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_6

    :cond_b
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->g(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    goto :goto_b

    :pswitch_27
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_6

    :cond_c
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    goto :goto_b

    :pswitch_28
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_6

    :cond_d
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    mul-int/2addr v8, v7

    const/4 v7, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v10

    invoke-static {v10, v10, v8}, Lz81;->a(III)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :pswitch_29
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_e

    const/4 v10, 0x0

    goto :goto_10

    :cond_e
    shl-int/lit8 v10, v12, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v10

    mul-int/2addr v10, v8

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v8, :cond_12

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lcom/google/android/gms/internal/measurement/zzaem;

    if-eqz v13, :cond_11

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzaem;

    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/zzaem;->b:Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v13, :cond_f

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzaem;->b:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v12

    goto :goto_e

    :cond_f
    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/zzaem;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    if-eqz v13, :cond_10

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzaem;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-interface {v12}, Lcom/google/android/gms/internal/measurement/zzafc;->e()I

    move-result v12

    goto :goto_e

    :cond_10
    const/4 v12, 0x0

    :goto_e
    invoke-static {v12, v12, v10}, Lz81;->a(III)I

    move-result v10

    goto :goto_f

    :cond_11
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/measurement/zzacb;->j(Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v12

    invoke-static {v12, v12, v10}, Lz81;->a(III)I

    move-result v10

    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_12
    :goto_10
    add-int/2addr v9, v10

    goto/16 :goto_1a

    :pswitch_2a
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_6

    :cond_13
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    mul-int/2addr v8, v7

    instance-of v10, v5, Lcom/google/android/gms/internal/measurement/zzaen;

    if-eqz v10, :cond_15

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaen;

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v7, :cond_6

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzaen;->f0()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v12, :cond_14

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v11

    invoke-static {v11, v11, v8}, Lz81;->a(III)I

    move-result v8

    goto :goto_12

    :cond_14
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzagl;->b(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11, v11, v8}, Lz81;->a(III)I

    move-result v8

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_15
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v7, :cond_6

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v12, :cond_16

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v11

    invoke-static {v11, v11, v8}, Lz81;->a(III)I

    move-result v8

    goto :goto_14

    :cond_16
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzagl;->b(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11, v11, v8}, Lz81;->a(III)I

    move-result v8

    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :pswitch_2b
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    :goto_15
    const/4 v7, 0x0

    goto :goto_16

    :cond_17
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    add-int/2addr v7, v15

    mul-int/2addr v7, v5

    :goto_16
    add-int/2addr v9, v7

    goto/16 :goto_1a

    :pswitch_2c
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->k(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_2d
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->l(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_2e
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_6

    :cond_18
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->h(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    goto/16 :goto_b

    :pswitch_2f
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_19

    goto/16 :goto_6

    :cond_19
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->e(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    goto/16 :goto_b

    :pswitch_30
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_15

    :cond_1a
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzafq;->d(Ljava/util/List;)I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v7

    mul-int/2addr v7, v5

    add-int/2addr v7, v8

    goto :goto_16

    :pswitch_31
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->k(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_32
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->l(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v8

    add-int/2addr v8, v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzacb;->j(Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    add-long v11, v7, v7

    shr-long/2addr v7, v10

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    xor-long/2addr v7, v11

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v5

    :goto_17
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_1b
    :goto_18
    move-object/from16 v0, p0

    goto/16 :goto_1a

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v7, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    xor-int/2addr v5, v7

    invoke-static {v5, v0, v9}, Lz81;->a(III)I

    move-result v9

    goto :goto_18

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v8, v9}, Lz81;->a(III)I

    move-result v9

    :cond_1c
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    goto/16 :goto_1a

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v7, v9}, Lz81;->a(III)I

    move-result v9

    goto :goto_19

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v5

    goto :goto_17

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-static {v5, v0, v9}, Lz81;->a(III)I

    move-result v9

    goto :goto_18

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v5

    invoke-static {v5, v5, v0, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_18

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v7

    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/zzafq;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;)I

    move-result v5

    goto/16 :goto_5

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v7, :cond_1d

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v5

    invoke-static {v5, v5, v0, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_18

    :cond_1d
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzagl;->b(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v5, v0, v9}, Lz81;->b(IIII)I

    move-result v9

    goto/16 :goto_18

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v15, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_19

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v7, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_19

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v8, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_19

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v5

    goto/16 :goto_17

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v5

    goto/16 :goto_17

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->b(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzada;->c(J)I

    move-result v5

    goto/16 :goto_17

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v7, v9}, Lz81;->a(III)I

    move-result v9

    goto/16 :goto_19

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1e

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v8, v9}, Lz81;->a(III)I

    move-result v9

    :cond_1e
    :goto_1a
    add-int/lit8 v1, v1, 0x3

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_1f
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaga;->c()I

    move-result v1

    add-int/2addr v1, v9

    iget-boolean v0, v0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz v0, :cond_22

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadk;->a:Lcom/google/android/gms/internal/measurement/zzafr;

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzafv;->c:I

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_1b
    if-ge v7, v2, :cond_20

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzafv;->a(I)Ljava/util/Map$Entry;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzafs;

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzafs;->b:Ljava/lang/Comparable;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzadj;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzafs;->c:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzadk;->h(Lcom/google/android/gms/internal/measurement/zzadj;Ljava/lang/Object;)I

    move-result v3

    add-int v16, v16, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafv;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzadj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzadk;->h(Lcom/google/android/gms/internal/measurement/zzadj;Ljava/lang/Object;)I

    move-result v2

    add-int v16, v16, v2

    goto :goto_1c

    :cond_21
    add-int v1, v1, v16

    :cond_22
    return v1

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

.method public final f(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->i:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzaff;->h:[I

    aget v8, v5, v2

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v5

    add-int/lit8 v7, v8, 0x2

    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget v7, v13, v7

    and-int v9, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v9, v3, :cond_1

    if-eq v9, v1, :cond_0

    int-to-long v3, v9

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v11, v4

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v3

    move v11, v4

    :goto_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, v5

    move-object v7, p0

    move-object v9, p1

    if-eqz v3, :cond_2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_9

    const/16 p1, 0x11

    if-eq p0, p1, :cond_9

    const/16 p1, 0x1b

    if-eq p0, p1, :cond_7

    const/16 p1, 0x3c

    if-eq p0, p1, :cond_6

    const/16 p1, 0x44

    if-eq p0, p1, :cond_6

    const/16 p1, 0x31

    if-eq p0, p1, :cond_7

    const/16 p1, 0x32

    if-eq p0, p1, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int p0, v5, v1

    int-to-long p0, p0

    invoke-static {p0, p1, v9}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->E(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzaeu;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzagm;->a()Lcom/google/android/gms/internal/measurement/zzagn;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzagn;->zzi:Lcom/google/android/gms/internal/measurement/zzagn;

    if-ne p1, v3, :cond_a

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzafl;->c:Lcom/google/android/gms/internal/measurement/zzafl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/zzafl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p1

    :cond_5
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/measurement/zzafp;->f(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_6
    aget p0, v13, v8

    invoke-virtual {v7, p0, v8, v9}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p0

    and-int p1, v5, v1

    int-to-long v3, p1

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzafp;->f(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_7
    and-int p0, v5, v1

    int-to-long p0, p0

    invoke-static {p0, p1, v9}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p1

    move v3, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/measurement/zzafp;->f(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/zzaff;->q(ILjava/lang/Object;III)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p0

    and-int p1, v5, v1

    int-to-long v3, p1

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzafp;->f(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object p0, v7

    move-object p1, v9

    move v3, v10

    move v4, v11

    goto/16 :goto_0

    :cond_b
    move-object v7, p0

    move-object v9, p1

    iget-boolean p0, v7, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz p0, :cond_c

    move-object p1, v9

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadk;->d()Z

    move-result p0

    if-nez p0, :cond_c

    :goto_4
    return v0

    :cond_c
    return v6
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaff;->l(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->s()V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzacb;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->n()V

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v3

    int-to-long v4, v4

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaew;

    iput-boolean v1, v6, Lcom/google/android/gms/internal/measurement/zzaew;->b:Z

    invoke-virtual {v2, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaef;->e0()V

    goto :goto_1

    :cond_2
    aget v2, v2, v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafp;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafp;->g(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->k:Lcom/google/android/gms/internal/measurement/zzafz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzaga;->e:Z

    if-eqz v2, :cond_6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzaga;->e:Z

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->l:Lcom/google/android/gms/internal/measurement/zzadg;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadh;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadk;->a()V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
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
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v3, v2

    const v4, 0xfffff

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_0

    const/16 v6, 0x45

    if-ge v5, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/2addr v3, v4

    int-to-long v6, v3

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    if-ne v4, v2, :cond_1

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :cond_1
    return v0

    :pswitch_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_2

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v2, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagf;->b(JLjava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->b(JLjava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_8

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v2, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagf;->d(JLjava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->d(JLjava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_8

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v2, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/zzagf;->f(JLjava/lang/Object;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->f(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_8

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->j:I

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaff;->h:[I

    array-length v5, v3

    if-ge v1, v5, :cond_7

    aget v3, v3, v1

    add-int/lit8 v5, v3, 0x2

    aget v5, v2, v5

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result v5

    if-ne v7, v5, :cond_6

    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzafq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return v0

    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaga;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_5
    return v0

    :cond_9
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz p0, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lcom/google/android/gms/internal/measurement/zzadk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzadk;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0

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

.method public final i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzacw;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/zzaff;->h:[I

    iget v10, v1, Lcom/google/android/gms/internal/measurement/zzaff;->j:I

    iget v11, v1, Lcom/google/android/gms/internal/measurement/zzaff;->i:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaff;->m(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzaff;->k:Lcom/google/android/gms/internal/measurement/zzafz;

    const/4 v0, 0x0

    move-object v2, v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->x()I

    move-result v0

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->c:I

    const/4 v12, 0x0

    if-lt v0, v3, :cond_1

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzaff;->d:I

    if-gt v0, v3, :cond_1

    invoke-virtual {v1, v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->v(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v6, v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    :goto_2
    if-gez v6, :cond_7

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_3

    move-object v4, v2

    :goto_3
    if-ge v11, v10, :cond_2

    aget v3, v9, v11

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v3, p1

    goto/16 :goto_1b

    :cond_3
    move-object/from16 v3, p1

    :try_start_1
    iget-boolean v4, v1, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzaff;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzade;

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/measurement/zzade;-><init>(ILcom/google/android/gms/internal/measurement/zzafc;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/zzadf;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_4
    if-nez v2, :cond_5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzafz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_5
    move-object/from16 v16, v2

    goto/16 :goto_1c

    :cond_5
    :goto_6
    :try_start_2
    invoke-virtual {v5, v12, v7, v2}, Lcom/google/android/gms/internal/measurement/zzafz;->b(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    move-object v4, v2

    :goto_7
    if-ge v11, v10, :cond_17

    aget v3, v9, v11

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_1d

    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7
    move-object/from16 v3, p1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v13
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const v14, 0xfffff

    packed-switch v13, :pswitch_data_0

    if-nez v2, :cond_8

    :try_start_5
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzafz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v0

    goto :goto_9

    :catch_0
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    :goto_8
    move-object v15, v5

    goto/16 :goto_17

    :cond_8
    :goto_9
    :try_start_6
    invoke-virtual {v5, v12, v7, v2}, Lcom/google/android/gms/internal/measurement/zzafz;->b(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_a

    move-object v4, v2

    :goto_a
    if-ge v11, v10, :cond_9

    aget v3, v9, v11

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v1

    move-object v1, v2

    add-int/lit8 v11, v11, 0x1

    move-object v3, v1

    move-object v1, v13

    goto :goto_a

    :cond_9
    move-object v1, v3

    goto/16 :goto_1b

    :cond_a
    move-object v13, v1

    move-object v1, v3

    :goto_b
    move-object v1, v13

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v13, v1

    move-object v1, v3

    goto/16 :goto_1d

    :catch_1
    move-object v13, v1

    move-object v1, v3

    move-object v15, v5

    goto/16 :goto_18

    :pswitch_0
    move-object v13, v1

    move-object v1, v3

    :try_start_7
    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->I(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v4

    invoke-virtual {v7, v3, v4, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->J(Lcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v13, v1, v0, v3, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->J(Ljava/lang/Object;ILjava/lang/Object;I)V

    :goto_c
    move-object/from16 v16, v2

    move-object v15, v5

    goto/16 :goto_16

    :catch_2
    move-object/from16 v16, v2

    goto :goto_8

    :pswitch_1
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->Q()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_2
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->P()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_3
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->O()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_4
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->N()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_5
    move-object v13, v1

    move-object v1, v3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->M()I

    move-result v3

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-interface {v15, v3}, Lcom/google/android/gms/internal/measurement/zzadz;->e(I)Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_e

    :cond_b
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-nez v2, :cond_c

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzafz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v4

    goto :goto_d

    :cond_c
    move-object v4, v2

    :goto_d
    int-to-long v14, v3

    move-object v3, v5

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v4

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaga;

    shl-int/lit8 v0, v0, 0x3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    move-object v2, v4

    goto/16 :goto_b

    :cond_d
    :goto_e
    and-int/2addr v4, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v14, v4

    invoke-static {v14, v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->L()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_7
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->K()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_8
    move-object v13, v1

    move-object v1, v3

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->I(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v4

    invoke-virtual {v7, v3, v4, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->I(Lcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v13, v1, v0, v3, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->J(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_9
    move-object v13, v1

    move-object v1, v3

    invoke-virtual {v13, v4, v7, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->L(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_a
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->F()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_b
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->E()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_c
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->D()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_d
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->C()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_e
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->A()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_f
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->B()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_10
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->z()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_11
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->y()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    int-to-long v14, v3

    invoke-static {v14, v15, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->u(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_12
    move-object v13, v1

    move-object v1, v3

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->E(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result v3

    and-int/2addr v3, v14

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_e

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzaew;->c:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzaew;->c()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v6

    invoke-static {v3, v4, v1, v6}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_e
    move-object v14, v6

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzaew;

    iget-boolean v14, v14, Lcom/google/android/gms/internal/measurement/zzaew;->b:Z

    if-nez v14, :cond_f

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzaew;->c:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzaew;->c()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/measurement/zzaex;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-static {v3, v4, v1, v14}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v14

    :cond_f
    :goto_f
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaew;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    invoke-virtual {v7, v6, v0, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->p(Lcom/google/android/gms/internal/measurement/zzaew;Lcom/google/android/gms/internal/measurement/zzaeu;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_c

    :pswitch_13
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v3

    int-to-long v14, v0

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0, v3, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->h(Lcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_c

    :pswitch_14
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->o(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_15
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->n(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_16
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->m(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_17
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->l(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_18
    move-object v13, v1

    move-object v1, v3

    and-int v3, v4, v14

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzacw;->k(Lcom/google/android/gms/internal/measurement/zzaef;)V

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4
    :try_end_7
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v6, v5

    move-object v5, v2

    move v2, v0

    :try_start_8
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzafq;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v5, v6

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_5

    :catch_3
    move-object/from16 v16, v5

    move-object v15, v6

    goto/16 :goto_17

    :pswitch_19
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    :try_start_9
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->j(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_1a
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->e(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_1b
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->d(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_1c
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->c(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_1d
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->b(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_1e
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->T(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_1f
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->a(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_20
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->S(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_21
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->R(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_22
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->o(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_23
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->n(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_24
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->m(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_c

    :pswitch_25
    move-object v13, v1

    move-object v1, v3

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->l(Lcom/google/android/gms/internal/measurement/zzaef;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_c

    :pswitch_26
    move-object v13, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v2

    move v2, v0

    and-int v0, v4, v14

    int-to-long v14, v0

    :try_start_a
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->k(Lcom/google/android/gms/internal/measurement/zzaef;)V

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4
    :try_end_a
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v6, v3

    move-object v3, v0

    :try_start_b
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzafq;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v15, v6

    :goto_10
    move-object v1, v13

    :goto_11
    move-object v5, v15

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v16, v5

    move-object v15, v6

    :goto_12
    move-object v5, v15

    goto/16 :goto_1c

    :catchall_5
    move-exception v0

    move-object v15, v3

    move-object/from16 v16, v5

    goto :goto_12

    :catch_4
    move-object v15, v3

    move-object/from16 v16, v5

    goto/16 :goto_17

    :pswitch_27
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    :try_start_c
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->j(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :catchall_6
    move-exception v0

    goto :goto_12

    :pswitch_28
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->i(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_29
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v0

    and-int v2, v4, v14

    int-to-long v2, v2

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v2

    invoke-virtual {v7, v2, v0, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->g(Lcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_16

    :pswitch_2a
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    const/high16 v0, 0x20000000

    and-int/2addr v0, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_13

    :cond_10
    move v0, v12

    :goto_13
    if-eqz v0, :cond_11

    and-int v0, v4, v14

    int-to-long v3, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/internal/measurement/zzacw;->f(Lcom/google/android/gms/internal/measurement/zzaef;Z)V

    goto/16 :goto_16

    :cond_11
    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0, v12}, Lcom/google/android/gms/internal/measurement/zzacw;->f(Lcom/google/android/gms/internal/measurement/zzaef;Z)V

    goto/16 :goto_16

    :pswitch_2b
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->e(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_2c
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->d(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_2d
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->c(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_2e
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->b(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_2f
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->T(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_30
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->a(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_31
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->S(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_32
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaeo;->a(JLjava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzacw;->R(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_16

    :pswitch_33
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->G(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->J(Lcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v13, v1, v0, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_16

    :pswitch_34
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->Q()J

    move-result-wide v2

    int-to-long v4, v0

    invoke-static {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_35
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->P()I

    move-result v2

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_36
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->O()J

    move-result-wide v2

    int-to-long v4, v0

    invoke-static {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_37
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->N()I

    move-result v2

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_38
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    move v2, v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->M()I

    move-result v0

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/measurement/zzadz;->e(I)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_15

    :cond_12
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    if-nez v16, :cond_13

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/zzafz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v3

    goto :goto_14

    :cond_13
    move-object/from16 v3, v16

    :goto_14
    int-to-long v4, v0

    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaga;

    shl-int/lit8 v2, v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    move-object v2, v3

    goto/16 :goto_10

    :cond_14
    :goto_15
    and-int v2, v4, v14

    int-to-long v2, v2

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_39
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->L()I

    move-result v2

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3a
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->K()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3b
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->G(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzacw;->I(Lcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzafp;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v13, v1, v0, v6}, Lcom/google/android/gms/internal/measurement/zzaff;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_16

    :pswitch_3c
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    invoke-virtual {v13, v4, v7, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->L(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3d
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->F()Z

    move-result v2

    int-to-long v3, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->c(Ljava/lang/Object;JZ)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3e
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->E()I

    move-result v2

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3f
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->D()J

    move-result-wide v2

    int-to-long v4, v0

    invoke-static {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_40
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->C()I

    move-result v2

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto :goto_16

    :pswitch_41
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->A()J

    move-result-wide v2

    int-to-long v4, v0

    invoke-static {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto :goto_16

    :pswitch_42
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->B()J

    move-result-wide v2

    int-to-long v4, v0

    invoke-static {v4, v5, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzagg;->h(JLjava/lang/Object;J)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto :goto_16

    :pswitch_43
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->z()F

    move-result v2

    int-to-long v3, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzagf;->e(Ljava/lang/Object;JF)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V

    goto :goto_16

    :pswitch_44
    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    and-int v0, v4, v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacw;->y()D

    move-result-wide v4

    int-to-long v2, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzagf;->g(Ljava/lang/Object;JD)V

    invoke-virtual {v13, v6, v1}, Lcom/google/android/gms/internal/measurement/zzaff;->s(ILjava/lang/Object;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :goto_16
    move-object v1, v13

    move-object v5, v15

    move-object/from16 v2, v16

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    move-object v13, v1

    move-object/from16 v16, v2

    move-object v1, v3

    move-object v15, v5

    goto :goto_1c

    :catch_5
    :goto_17
    move-object/from16 v2, v16

    :goto_18
    if-nez v2, :cond_15

    :try_start_d
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/zzafz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    move-object v2, v0

    goto :goto_19

    :catchall_8
    move-exception v0

    move-object v5, v15

    goto :goto_1d

    :cond_15
    :goto_19
    invoke-virtual {v15, v12, v7, v2}, Lcom/google/android/gms/internal/measurement/zzafz;->b(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-nez v0, :cond_19

    move-object v4, v2

    :goto_1a
    if-ge v11, v10, :cond_16

    aget v3, v9, v11

    move-object/from16 v6, p1

    move-object v2, v1

    move-object v1, v13

    move-object v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, p0

    move-object/from16 v1, p1

    goto :goto_1a

    :cond_16
    move-object v5, v15

    :cond_17
    :goto_1b
    if-eqz v4, :cond_18

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaga;

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_18
    return-void

    :cond_19
    move-object/from16 v1, p0

    goto/16 :goto_11

    :goto_1c
    move-object/from16 v2, v16

    :goto_1d
    move-object v4, v2

    :goto_1e
    if-ge v11, v10, :cond_1a

    aget v3, v9, v11

    move-object/from16 v6, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_1a
    if-eqz v4, :cond_1b

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaga;

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_1b
    throw v0

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

.method public final j(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(ILjava/lang/Object;III)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzaff;->r(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final r(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaff;->j(I)I

    move-result p0

    and-int p1, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result p0

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzacr;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzacr;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->b(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->d(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagf;->f(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

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

.method public final s(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

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

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p2, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final t(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/measurement/zzagg;->e(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->f(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final v(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final y(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    iget v11, v0, Lcom/google/android/gms/internal/measurement/zzaff;->d:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzaff;->m(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaff;->n:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    const-string v17, "Failed to parse the message."

    const/16 v18, 0x0

    if-ge v4, v5, :cond_86

    const v19, 0xfffff

    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    invoke-static {v4, v3, v14, v6}, Lcom/google/android/gms/internal/measurement/zzach;->b(I[BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v14

    iget v4, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    :cond_0
    move/from16 v36, v14

    move v14, v4

    move/from16 v4, v36

    ushr-int/lit8 v13, v14, 0x3

    iget v12, v0, Lcom/google/android/gms/internal/measurement/zzaff;->c:I

    const/4 v3, 0x3

    if-le v13, v7, :cond_2

    div-int/2addr v8, v3

    if-lt v13, v12, :cond_1

    if-gt v13, v11, :cond_1

    invoke-virtual {v0, v13, v8}, Lcom/google/android/gms/internal/measurement/zzaff;->v(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    move v12, v7

    :goto_2
    const/4 v7, -0x1

    goto :goto_4

    :cond_2
    if-lt v13, v12, :cond_3

    if-gt v13, v11, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v7}, Lcom/google/android/gms/internal/measurement/zzaff;->v(II)I

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, -0x1

    :goto_3
    move v12, v8

    goto :goto_2

    :goto_4
    if-ne v12, v7, :cond_4

    move/from16 v10, p5

    move v3, v4

    move/from16 v20, v7

    move/from16 v33, v9

    move/from16 v22, v11

    move v9, v13

    move v11, v14

    move/from16 v34, v15

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object v15, v1

    move-object v14, v2

    move-object v13, v6

    goto/16 :goto_50

    :cond_4
    and-int/lit8 v8, v14, 0x7

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzaff;->a:[I

    add-int/lit8 v16, v12, 0x1

    aget v3, v7, v16

    move/from16 v16, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaff;->k(I)I

    move-result v4

    and-int v5, v3, v19

    int-to-long v5, v5

    move-wide/from16 v22, v5

    const/16 v5, 0x11

    const-wide/16 v24, 0x0

    const/high16 v26, 0x20000000

    const-string v6, ""

    const-string v28, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v29, v7

    const/16 v30, 0x1

    if-gt v4, v5, :cond_16

    add-int/lit8 v5, v12, 0x2

    aget v5, v29, v5

    ushr-int/lit8 v29, v5, 0x14

    shl-int v29, v30, v29

    and-int v5, v5, v19

    if-eq v5, v9, :cond_7

    move/from16 v7, v19

    move/from16 v32, v8

    if-eq v9, v7, :cond_5

    int-to-long v7, v9

    invoke-virtual {v1, v2, v7, v8, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v7, 0xfffff

    :cond_5
    if-ne v5, v7, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    int-to-long v7, v5

    invoke-virtual {v1, v2, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    :goto_5
    move v15, v5

    goto :goto_6

    :cond_7
    move/from16 v32, v8

    move v7, v15

    move v15, v9

    :goto_6
    packed-switch v4, :pswitch_data_0

    move/from16 v5, v32

    const/4 v4, 0x3

    if-ne v5, v4, :cond_8

    or-int v17, v7, v29

    invoke-virtual {v0, v12, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->G(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v13, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v16

    const/16 v20, -0x1

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/measurement/zzach;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move-object v8, v5

    invoke-virtual {v0, v2, v3, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move/from16 v15, v17

    goto/16 :goto_0

    :cond_8
    move-object/from16 v9, p6

    const/16 v20, -0x1

    move-object/from16 v8, p2

    move-object v10, v1

    move-object v1, v2

    move/from16 p3, v7

    move/from16 v22, v11

    move/from16 v4, v16

    goto/16 :goto_13

    :pswitch_0
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v32

    const/16 v20, -0x1

    if-nez v5, :cond_9

    or-int v7, v7, v29

    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v16

    iget-wide v3, v9, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzacv;->k(J)J

    move-result-wide v5

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v36, v2

    move-object v2, v1

    move-object/from16 v1, v36

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    move v8, v12

    move v9, v15

    move/from16 v4, v16

    move v15, v7

    move v7, v13

    :goto_7
    move/from16 v16, v14

    goto/16 :goto_0

    :cond_9
    move-object/from16 v36, v2

    move-object v2, v1

    move-object/from16 v1, v36

    move-object v10, v2

    move/from16 p3, v7

    move/from16 v22, v11

    goto/16 :goto_13

    :pswitch_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v32

    const/16 v20, -0x1

    if-nez v5, :cond_a

    or-int v3, v7, v29

    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v5, v9, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzacv;->j(I)I

    move-result v5

    invoke-virtual {v2, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v5, p4

    move-object v6, v9

    :goto_9
    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move/from16 v11, v22

    move v15, v3

    move-object v3, v8

    move v8, v12

    goto/16 :goto_0

    :cond_a
    move-object v10, v2

    move/from16 p3, v7

    goto/16 :goto_13

    :pswitch_2
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v32

    const/16 v20, -0x1

    if-nez v5, :cond_a

    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v5, v9, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v6

    const/high16 v16, -0x80000000

    and-int v3, v3, v16

    if-eqz v3, :cond_c

    if-eqz v6, :cond_c

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/measurement/zzadz;->e(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzaff;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v3

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v14, v5}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    :goto_a
    move v8, v12

    move/from16 v16, v14

    move v9, v15

    move/from16 v11, v22

    move v15, v7

    move v7, v13

    goto/16 :goto_0

    :cond_c
    :goto_b
    or-int v3, v7, v29

    invoke-virtual {v2, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v3, v22

    move/from16 v22, v11

    move-wide v10, v3

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v32

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v5, v3, :cond_a

    or-int v3, v7, v29

    invoke-static {v8, v4, v9}, Lcom/google/android/gms/internal/measurement/zzach;->g([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v22, v11

    move/from16 v4, v16

    move/from16 v5, v32

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v5, v3, :cond_d

    or-int v7, v7, v29

    move-object v3, v1

    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/internal/measurement/zzaff;->G(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move-object v6, v8

    move-object v8, v3

    move-object v3, v6

    move-object v6, v9

    move-object v9, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    invoke-virtual {v0, v8, v3, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->H(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v3, v1

    move-object v2, v8

    move-object v1, v9

    goto :goto_a

    :cond_d
    move-object/from16 v36, v8

    move-object v8, v1

    move-object/from16 v1, v36

    move-object/from16 v36, v9

    move-object v9, v2

    move-object/from16 v2, v36

    move-object/from16 p3, v8

    move-object v8, v1

    move-object/from16 v1, p3

    move/from16 p3, v7

    :goto_c
    move-object v10, v9

    goto/16 :goto_13

    :pswitch_5
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v32

    const/4 v7, 0x2

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v5, v7, :cond_11

    and-int v3, v3, v26

    if-eqz v3, :cond_e

    or-int v3, p3, v29

    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzach;->f([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move v5, v3

    goto :goto_e

    :cond_e
    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v4, v2, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v4, :cond_10

    or-int v5, p3, v29

    if-nez v4, :cond_f

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    :goto_d
    move v4, v3

    goto :goto_e

    :cond_f
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_d

    :goto_e
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v1

    move-object v6, v2

    move-object v2, v8

    move-object v1, v9

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move/from16 v11, v22

    :goto_f
    move v15, v5

    move/from16 v5, p4

    goto/16 :goto_0

    :cond_10
    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_11
    move-object v10, v8

    move-object v8, v1

    move-object v1, v10

    goto :goto_c

    :pswitch_6
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v32

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-nez v5, :cond_11

    or-int v3, p3, v29

    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    cmp-long v5, v5, v24

    if-eqz v5, :cond_12

    move/from16 v5, v30

    goto :goto_10

    :cond_12
    const/4 v5, 0x0

    :goto_10
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v6, v8, v10, v11, v5}, Lcom/google/android/gms/internal/measurement/zzagf;->c(Ljava/lang/Object;JZ)V

    move v5, v3

    move-object v3, v1

    move-object v1, v9

    move v9, v15

    move v15, v5

    move/from16 v5, p4

    move-object v6, v2

    move-object v2, v8

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    :goto_11
    move/from16 v11, v22

    goto/16 :goto_0

    :pswitch_7
    move-wide/from16 v3, v22

    move/from16 v22, v11

    move-wide v10, v3

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v32

    const/4 v3, 0x5

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v5, v3, :cond_11

    add-int/lit8 v3, v4, 0x4

    or-int v5, p3, v29

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v4

    invoke-virtual {v9, v8, v10, v11, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v2

    move v4, v3

    move-object v2, v8

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move/from16 v11, v22

    move-object v3, v1

    move-object v1, v9

    move v9, v15

    goto :goto_f

    :pswitch_8
    move-wide/from16 v3, v22

    move/from16 v22, v11

    move-wide v10, v3

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v3, v30

    move/from16 v5, v32

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v5, v3, :cond_13

    add-int/lit8 v7, v4, 0x8

    or-int v16, p3, v29

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v5

    move-object v3, v8

    move-object v8, v1

    move-object v1, v9

    move v9, v7

    move-object v7, v2

    move-object v2, v3

    move-wide v3, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v6, v7

    move-object v3, v8

    move v4, v9

    move v8, v12

    move v7, v13

    move v9, v15

    move/from16 v15, v16

    :goto_12
    move/from16 v11, v22

    goto/16 :goto_7

    :cond_13
    move-object v7, v2

    move-object v2, v8

    move-object v8, v1

    move-object v1, v2

    goto/16 :goto_c

    :pswitch_9
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v32

    const/16 v20, -0x1

    move-object/from16 v7, p6

    if-nez v5, :cond_14

    or-int v3, p3, v29

    invoke-static {v8, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-virtual {v1, v2, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move-object v6, v7

    goto/16 :goto_9

    :cond_14
    move-object v10, v1

    :cond_15
    move-object v1, v2

    goto/16 :goto_13

    :pswitch_a
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v32

    const/16 v20, -0x1

    move-object/from16 v7, p6

    if-nez v5, :cond_14

    or-int v9, p3, v29

    invoke-static {v8, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v16

    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    move-wide v3, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v15

    move v15, v9

    move v9, v3

    move/from16 v5, p4

    move-object v6, v7

    move-object v3, v8

    move v8, v12

    move v7, v13

    move/from16 v4, v16

    goto :goto_12

    :pswitch_b
    move-object/from16 v8, p2

    move-object v10, v1

    move/from16 p3, v7

    move/from16 v4, v16

    move-wide/from16 v6, v22

    move/from16 v5, v32

    const/4 v3, 0x5

    const/16 v20, -0x1

    move/from16 v22, v11

    if-ne v5, v3, :cond_15

    add-int/lit8 v1, v4, 0x4

    or-int v3, p3, v29

    invoke-static {v4, v8}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    invoke-virtual {v5, v2, v6, v7, v4}, Lcom/google/android/gms/internal/measurement/zzagf;->e(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v4, v1

    move-object v1, v10

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v8, p2

    move-object v10, v1

    move/from16 p3, v7

    move/from16 v4, v16

    move-wide/from16 v6, v22

    move/from16 v3, v30

    move/from16 v5, v32

    const/16 v20, -0x1

    move/from16 v22, v11

    if-ne v5, v3, :cond_15

    add-int/lit8 v9, v4, 0x8

    or-int v11, p3, v29

    invoke-static {v4, v8}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzagg;->c:Lcom/google/android/gms/internal/measurement/zzagf;

    move-wide/from16 v36, v6

    move-wide v5, v3

    move-wide/from16 v3, v36

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzagf;->g(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v3, v8

    move v4, v9

    move-object v1, v10

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move v15, v11

    goto/16 :goto_11

    :goto_13
    move/from16 v34, p3

    move v3, v4

    move-object v4, v8

    move v8, v12

    move v9, v13

    move v11, v14

    move/from16 v33, v15

    move-object/from16 v13, p6

    move-object v14, v1

    move-object v15, v10

    :goto_14
    move/from16 v10, p5

    goto/16 :goto_50

    :cond_16
    move-object v10, v1

    move-object v1, v2

    move v5, v8

    move-wide/from16 v7, v22

    const/16 v20, -0x1

    move/from16 v22, v11

    const/16 v2, 0x1b

    if-ne v4, v2, :cond_1a

    const/4 v2, 0x2

    if-ne v5, v2, :cond_19

    invoke-virtual {v10, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaef;->d0()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_17

    const/16 v11, 0xa

    goto :goto_15

    :cond_17
    add-int v11, v3, v3

    :goto_15
    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/measurement/zzaef;->d(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v2

    invoke-virtual {v10, v1, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v2, v14

    move/from16 v4, v16

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->l(Lcom/google/android/gms/internal/measurement/zzafp;I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move v1, v2

    move-object/from16 v6, p6

    move/from16 v16, v1

    move-object v1, v10

    move v8, v12

    move v7, v13

    move-object v2, v14

    goto/16 :goto_11

    :cond_19
    move/from16 v36, v14

    move-object v14, v1

    move/from16 v1, v36

    move/from16 v3, v16

    move/from16 v16, v13

    move v13, v3

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    move v11, v1

    move/from16 v33, v9

    move/from16 v34, v15

    move-object v15, v10

    goto/16 :goto_42

    :cond_1a
    move/from16 v36, v14

    move-object v14, v1

    move/from16 v1, v36

    const/16 v2, 0x31

    const-string v23, "Protocol message had invalid UTF-8."

    const-string v32, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v4, v2, :cond_68

    int-to-long v2, v3

    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/zzaef;->d0()Z

    move-result v29

    if-nez v29, :cond_1b

    invoke-static/range {v26 .. v26}, Lz81;->d(Lcom/google/android/gms/internal/measurement/zzaef;)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v11

    invoke-virtual {v10, v14, v7, v8, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16

    :cond_1b
    move-object/from16 v11, v26

    :goto_16
    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1e

    and-int/lit8 v2, v1, -0x8

    or-int/lit8 v6, v2, 0x4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move v4, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v8, v4

    move/from16 v4, v16

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v16

    move-object/from16 v36, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v36

    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/measurement/zzafp;->g(Ljava/lang/Object;)V

    iput-object v7, v6, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v7, v16

    :goto_17
    if-ge v7, v5, :cond_1d

    move/from16 v16, v4

    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move/from16 p3, v1

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v8, v1, :cond_1c

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzafp;->d0()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v6

    move/from16 v33, v9

    move/from16 v9, v16

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    move/from16 v36, v5

    move-object v5, v1

    move v1, v6

    move-object v6, v7

    move v7, v4

    move/from16 v4, v36

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/measurement/zzafp;->g(Ljava/lang/Object;)V

    iput-object v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    move v4, v9

    move/from16 v9, v33

    goto :goto_17

    :cond_1c
    move/from16 v33, v9

    move/from16 v9, v16

    :goto_18
    move v4, v5

    goto :goto_19

    :cond_1d
    move/from16 v33, v9

    move v9, v4

    goto :goto_18

    :goto_19
    move-object v2, v3

    move v11, v8

    move/from16 v16, v13

    move/from16 v34, v15

    const/16 v21, 0x0

    move v13, v9

    move-object v15, v10

    move v9, v4

    move-object v10, v6

    move v4, v7

    goto/16 :goto_3c

    :cond_1e
    move/from16 v33, v9

    move/from16 v2, v16

    move/from16 v16, v13

    move v13, v2

    move-object/from16 v2, p2

    move/from16 v9, p4

    move v11, v1

    move/from16 v34, v15

    const/16 v21, 0x0

    move-object v15, v10

    move-object/from16 v10, p6

    goto/16 :goto_3b

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v8, v1

    move/from16 v33, v9

    move/from16 v9, v16

    const/4 v2, 0x2

    if-ne v5, v2, :cond_22

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-static {v3, v9, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int/2addr v2, v1

    :goto_1a
    if-ge v1, v2, :cond_1f

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move/from16 p3, v13

    iget-wide v13, v6, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->k(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    move-object/from16 v14, p1

    move/from16 v13, p3

    goto :goto_1a

    :cond_1f
    move/from16 p3, v13

    if-ne v1, v2, :cond_21

    :cond_20
    :goto_1b
    move-object/from16 v14, p1

    move/from16 v16, p3

    move-object v2, v3

    move v11, v8

    move v13, v9

    move/from16 v34, v15

    const/16 v21, 0x0

    move v9, v4

    move-object v15, v10

    move v4, v1

    move-object v10, v6

    goto/16 :goto_3c

    :cond_21
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_22
    move/from16 p3, v13

    if-nez v5, :cond_23

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-static {v3, v9, v6}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget-wide v13, v6, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->k(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    :goto_1c
    if-ge v1, v4, :cond_20

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v8, v5, :cond_20

    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget-wide v13, v6, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->k(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    goto :goto_1c

    :cond_23
    move-object/from16 v14, p1

    move/from16 v16, p3

    move-object v2, v3

    move v11, v8

    :goto_1d
    move v13, v9

    move/from16 v34, v15

    const/16 v21, 0x0

    move v9, v4

    move-object v15, v10

    move-object v10, v6

    goto/16 :goto_3b

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v8, v1

    move/from16 v33, v9

    move/from16 p3, v13

    move/from16 v9, v16

    const/4 v2, 0x2

    if-ne v5, v2, :cond_26

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-static {v3, v9, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int/2addr v2, v1

    :goto_1e
    if-ge v1, v2, :cond_24

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzacv;->j(I)I

    move-result v5

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzadv;->h(I)V

    goto :goto_1e

    :cond_24
    if-ne v1, v2, :cond_25

    goto :goto_1b

    :cond_25
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_26
    if-nez v5, :cond_23

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-static {v3, v9, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->j(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzadv;->h(I)V

    :goto_1f
    if-ge v1, v4, :cond_20

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v8, v5, :cond_20

    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->j(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzadv;->h(I)V

    goto :goto_1f

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v8, v1

    move/from16 v33, v9

    move/from16 p3, v13

    move/from16 v9, v16

    const/4 v2, 0x2

    if-ne v5, v2, :cond_27

    invoke-static {v3, v9, v11, v6}, Lcom/google/android/gms/internal/measurement/zzach;->k([BILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move v14, v9

    move-object v5, v11

    move v11, v8

    move-object v8, v3

    move v13, v1

    move-object v7, v6

    move v9, v4

    goto :goto_20

    :cond_27
    if-nez v5, :cond_28

    move-object v2, v3

    move v1, v8

    move v3, v9

    move-object v5, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->j(I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v7

    move v11, v1

    move-object v8, v2

    move v14, v3

    move v1, v7

    move v9, v4

    move-object v7, v6

    move v13, v1

    :goto_20
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzaff;->k:Lcom/google/android/gms/internal/measurement/zzafz;

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzafq;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;)Ljava/lang/Object;

    move/from16 v16, v2

    move-object v2, v8

    move v4, v13

    move v13, v14

    move/from16 v34, v15

    const/16 v21, 0x0

    :goto_21
    move-object/from16 v14, p1

    :goto_22
    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_3c

    :cond_28
    move v11, v8

    move-object/from16 v14, p1

    move/from16 v16, p3

    move-object v2, v3

    goto/16 :goto_1d

    :pswitch_10
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move/from16 v33, v9

    move-object v3, v11

    move v2, v13

    move/from16 v14, v16

    move/from16 v9, p4

    move v11, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_30

    invoke-static {v8, v14, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v4, :cond_2f

    array-length v5, v8

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_2e

    if-nez v4, :cond_29

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzacr;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_29
    invoke-static {v1, v4, v8}, Lcom/google/android/gms/internal/measurement/zzacr;->o(II[B)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/2addr v1, v4

    :goto_24
    if-ge v1, v9, :cond_2d

    invoke-static {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v11, v5, :cond_2d

    invoke-static {v8, v4, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v4, :cond_2c

    array-length v5, v8

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_2b

    if-nez v4, :cond_2a

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzacr;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_2a
    invoke-static {v1, v4, v8}, Lcom/google/android/gms/internal/measurement/zzacr;->o(II[B)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2b
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_2c
    const/16 v21, 0x0

    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_2d
    const/16 v21, 0x0

    move v4, v1

    move/from16 v16, v2

    move-object v2, v8

    move v13, v14

    move/from16 v34, v15

    goto :goto_21

    :cond_2e
    const/16 v21, 0x0

    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_2f
    const/16 v21, 0x0

    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_30
    move/from16 v16, v2

    move-object v2, v8

    move v13, v14

    move/from16 v34, v15

    const/16 v21, 0x0

    move-object/from16 v14, p1

    :goto_25
    move-object v15, v10

    :goto_26
    move-object v10, v7

    goto/16 :goto_3b

    :pswitch_11
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move/from16 v33, v9

    move-object v3, v11

    move v2, v13

    move/from16 v14, v16

    move/from16 v9, p4

    move v11, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_31

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    move-object v6, v3

    move-object v3, v8

    move v5, v9

    move v4, v14

    move-object/from16 v14, p1

    move v9, v2

    move v2, v11

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->l(Lcom/google/android/gms/internal/measurement/zzafp;I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move-object v2, v3

    move v13, v4

    move/from16 v16, v9

    move/from16 v34, v15

    const/16 v21, 0x0

    move v4, v1

    move v9, v5

    goto/16 :goto_22

    :cond_31
    move v13, v14

    move-object/from16 v14, p1

    move/from16 v16, v2

    move-object v2, v8

    move/from16 v34, v15

    const/16 v21, 0x0

    goto :goto_25

    :pswitch_12
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-wide/from16 v34, v2

    move/from16 v33, v9

    move-object v2, v11

    move v9, v13

    move/from16 v13, v16

    move v11, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_3e

    const-wide/32 v26, 0x20000000

    and-long v26, v34, v26

    cmp-long v1, v26, v24

    if-nez v1, :cond_37

    invoke-static {v8, v13, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v3, :cond_36

    if-nez v3, :cond_32

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v34, v15

    goto :goto_28

    :cond_32
    new-instance v5, Ljava/lang/String;

    move/from16 v34, v15

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v1, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v1, v3

    :goto_28
    if-ge v1, v4, :cond_35

    invoke-static {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v11, v5, :cond_35

    invoke-static {v8, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v3, :cond_34

    if-nez v3, :cond_33

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_33
    new-instance v5, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v1, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_34
    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_35
    const/16 v21, 0x0

    :goto_29
    move-object v2, v8

    move/from16 v16, v9

    move-object v15, v10

    :goto_2a
    move v9, v4

    move-object v10, v7

    :goto_2b
    move v4, v1

    goto/16 :goto_3c

    :cond_36
    const/16 v21, 0x0

    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_37
    move/from16 v34, v15

    invoke-static {v8, v13, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v3, :cond_3d

    if-nez v3, :cond_38

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_38
    add-int v5, v1, v3

    invoke-static {v1, v5, v8}, Lcom/google/android/gms/internal/measurement/zzagl;->a(II[B)Z

    move-result v15

    if-eqz v15, :cond_3c

    new-instance v15, Ljava/lang/String;

    move/from16 p3, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v8, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    move/from16 v1, p3

    :goto_2d
    if-ge v1, v4, :cond_35

    invoke-static {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v11, v5, :cond_35

    invoke-static {v8, v3, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v3, :cond_3b

    if-nez v3, :cond_39

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_39
    add-int v5, v1, v3

    invoke-static {v1, v5, v8}, Lcom/google/android/gms/internal/measurement/zzagl;->a(II[B)Z

    move-result v15

    if-eqz v15, :cond_3a

    new-instance v15, Ljava/lang/String;

    move/from16 p3, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v8, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3a
    invoke-static/range {v23 .. v23}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_3b
    const/16 v21, 0x0

    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_3c
    const/16 v21, 0x0

    invoke-static/range {v23 .. v23}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_3d
    const/16 v21, 0x0

    invoke-static/range {v28 .. v28}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_3e
    move/from16 v34, v15

    const/16 v21, 0x0

    :goto_2e
    move-object v2, v8

    move/from16 v16, v9

    move-object v15, v10

    :goto_2f
    move v9, v4

    goto/16 :goto_26

    :pswitch_13
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move/from16 v33, v9

    move-object v2, v11

    move v9, v13

    move/from16 v34, v15

    move/from16 v13, v16

    const/16 v21, 0x0

    move v11, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_42

    if-nez v2, :cond_41

    invoke-static {v8, v13, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_40

    if-ne v1, v2, :cond_3f

    goto/16 :goto_29

    :cond_3f
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_40
    invoke-static {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    throw v18

    :cond_41
    invoke-static {}, Lr81;->h()V

    return v21

    :cond_42
    if-eqz v5, :cond_43

    goto :goto_2e

    :cond_43
    if-eqz v2, :cond_44

    invoke-static {}, Lr81;->h()V

    return v21

    :cond_44
    invoke-static {v8, v13, v7}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    throw v18

    :pswitch_14
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move/from16 v33, v9

    move-object v2, v11

    move v9, v13

    move/from16 v34, v15

    move/from16 v13, v16

    move v11, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_4b

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-static {v8, v13, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int v5, v2, v3

    array-length v6, v8

    if-gt v5, v6, :cond_4a

    iget v6, v1, Lcom/google/android/gms/internal/measurement/zzadv;->d:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzadv;->c:[I

    array-length v6, v6

    if-gt v3, v6, :cond_45

    goto :goto_31

    :cond_45
    if-eqz v6, :cond_47

    :goto_30
    if-ge v6, v3, :cond_46

    mul-int/lit8 v6, v6, 0x3

    const/16 v31, 0x2

    div-int/lit8 v6, v6, 0x2

    const/16 v30, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0xa

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_30

    :cond_46
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzadv;->c:[I

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzadv;->c:[I

    goto :goto_31

    :cond_47
    const/16 v15, 0xa

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzadv;->c:[I

    :goto_31
    if-ge v2, v5, :cond_48

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzadv;->h(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_31

    :cond_48
    if-ne v2, v5, :cond_49

    move/from16 v16, v9

    move-object v15, v10

    const/16 v21, 0x0

    move v9, v4

    move-object v10, v7

    :goto_32
    move v4, v2

    move-object v2, v8

    goto/16 :goto_3c

    :cond_49
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_4a
    const/16 v21, 0x0

    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_4b
    const/4 v3, 0x5

    if-ne v5, v3, :cond_4d

    add-int/lit8 v1, v13, 0x4

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzadv;

    invoke-static {v13, v8}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzadv;->h(I)V

    :goto_33
    if-ge v1, v4, :cond_4c

    invoke-static {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v11, v5, :cond_4c

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzadv;->h(I)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_33

    :cond_4c
    move-object v2, v8

    move/from16 v16, v9

    move-object v15, v10

    const/16 v21, 0x0

    goto/16 :goto_2a

    :cond_4d
    move-object v2, v8

    move/from16 v16, v9

    move-object v15, v10

    const/16 v21, 0x0

    goto/16 :goto_2f

    :pswitch_15
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move/from16 v33, v9

    move-object v2, v11

    move v9, v13

    move/from16 v34, v15

    move/from16 v13, v16

    move v11, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_54

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-static {v8, v13, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget v3, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int v5, v2, v3

    array-length v6, v8

    if-gt v5, v6, :cond_53

    iget v6, v1, Lcom/google/android/gms/internal/measurement/zzaeq;->d:I

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzaeq;->c:[J

    array-length v6, v6

    if-gt v3, v6, :cond_4e

    goto :goto_35

    :cond_4e
    if-eqz v6, :cond_50

    :goto_34
    if-ge v6, v3, :cond_4f

    mul-int/lit8 v6, v6, 0x3

    const/16 v31, 0x2

    div-int/lit8 v6, v6, 0x2

    const/16 v30, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0xa

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_34

    :cond_4f
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzaeq;->c:[J

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzaeq;->c:[J

    goto :goto_35

    :cond_50
    const/16 v15, 0xa

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzaeq;->c:[J

    :goto_35
    if-ge v2, v5, :cond_51

    move/from16 v16, v9

    move-object v15, v10

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    add-int/lit8 v2, v2, 0x8

    move-object v10, v15

    move/from16 v9, v16

    goto :goto_35

    :cond_51
    move/from16 v16, v9

    move-object v15, v10

    if-ne v2, v5, :cond_52

    move v9, v4

    move-object v10, v7

    const/16 v21, 0x0

    goto/16 :goto_32

    :cond_52
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_53
    const/16 v21, 0x0

    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_54
    move/from16 v16, v9

    move-object v15, v10

    const/4 v3, 0x1

    if-ne v5, v3, :cond_56

    add-int/lit8 v1, v13, 0x8

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-static {v13, v8}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    :goto_36
    if-ge v1, v4, :cond_55

    invoke-static {v8, v1, v7}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v11, v5, :cond_55

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    add-int/lit8 v1, v3, 0x8

    goto :goto_36

    :cond_55
    :goto_37
    move v9, v4

    move-object v10, v7

    move-object v2, v8

    const/16 v21, 0x0

    goto/16 :goto_2b

    :cond_56
    move v9, v4

    move-object v10, v7

    move-object v2, v8

    :cond_57
    const/16 v21, 0x0

    goto/16 :goto_3b

    :pswitch_16
    move/from16 v2, v16

    move/from16 v16, v13

    move v13, v2

    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move/from16 v33, v9

    move-object v2, v11

    move/from16 v34, v15

    move v11, v1

    move-object v15, v10

    const/4 v1, 0x2

    if-ne v5, v1, :cond_58

    invoke-static {v8, v13, v2, v7}, Lcom/google/android/gms/internal/measurement/zzach;->k([BILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    goto :goto_37

    :cond_58
    if-nez v5, :cond_56

    move-object v5, v2

    move-object v6, v7

    move-object v2, v8

    move v1, v11

    move v3, v13

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->j(I[BIILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    move v9, v4

    move-object v10, v6

    move v4, v5

    :goto_38
    const/16 v21, 0x0

    goto/16 :goto_3c

    :pswitch_17
    move/from16 v2, v16

    move/from16 v16, v13

    move v13, v2

    move-object/from16 v2, p2

    move/from16 v33, v9

    move-object v3, v11

    move/from16 v34, v15

    move/from16 v9, p4

    move v11, v1

    move-object v15, v10

    const/4 v1, 0x2

    move-object/from16 v10, p6

    if-ne v5, v1, :cond_5c

    move-object v1, v3

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-static {v2, v13, v10}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int/2addr v4, v3

    :goto_39
    if-ge v3, v4, :cond_59

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget-wide v5, v10, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    goto :goto_39

    :cond_59
    if-ne v3, v4, :cond_5b

    :cond_5a
    move v4, v3

    goto :goto_38

    :cond_5b
    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_5c
    if-nez v5, :cond_57

    move-object v1, v3

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaeq;

    invoke-static {v2, v13, v10}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    :goto_3a
    if-ge v3, v9, :cond_5a

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v4

    iget v5, v10, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ne v11, v5, :cond_5a

    invoke-static {v2, v4, v10}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzaeq;->h(J)V

    goto :goto_3a

    :pswitch_18
    move/from16 v2, v16

    move/from16 v16, v13

    move v13, v2

    move-object/from16 v2, p2

    move/from16 v33, v9

    move-object v3, v11

    move/from16 v34, v15

    move/from16 v9, p4

    move v11, v1

    move-object v15, v10

    const/4 v1, 0x2

    move-object/from16 v10, p6

    if-ne v5, v1, :cond_5f

    if-nez v3, :cond_5e

    invoke-static {v2, v13, v10}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int/2addr v0, v1

    array-length v1, v2

    if-le v0, v1, :cond_5d

    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_5d
    throw v18

    :cond_5e
    const/16 v21, 0x0

    invoke-static {}, Lr81;->h()V

    return v21

    :cond_5f
    const/4 v1, 0x5

    const/16 v21, 0x0

    if-eq v5, v1, :cond_60

    goto :goto_3b

    :cond_60
    if-eqz v3, :cond_61

    invoke-static {}, Lr81;->h()V

    return v21

    :cond_61
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v18

    :pswitch_19
    move/from16 v2, v16

    move/from16 v16, v13

    move v13, v2

    move-object/from16 v2, p2

    move/from16 v33, v9

    move-object v3, v11

    move/from16 v34, v15

    move/from16 v9, p4

    move v11, v1

    move-object v15, v10

    const/4 v1, 0x2

    move-object/from16 v10, p6

    if-ne v5, v1, :cond_64

    if-nez v3, :cond_63

    invoke-static {v2, v13, v10}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    add-int/2addr v0, v1

    array-length v1, v2

    if-le v0, v1, :cond_62

    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_62
    throw v18

    :cond_63
    const/16 v21, 0x0

    invoke-static {}, Lr81;->h()V

    return v21

    :cond_64
    const/4 v1, 0x1

    const/16 v21, 0x0

    if-eq v5, v1, :cond_66

    :goto_3b
    move v4, v13

    :goto_3c
    if-eq v4, v13, :cond_65

    move-object v3, v2

    move v5, v9

    move-object v6, v10

    move v8, v12

    move-object v2, v14

    move-object v1, v15

    move/from16 v7, v16

    move/from16 v9, v33

    move/from16 v15, v34

    :goto_3d
    move/from16 v16, v11

    goto/16 :goto_11

    :cond_65
    move v3, v4

    move-object v13, v10

    move v8, v12

    move/from16 v9, v16

    move/from16 v10, p5

    move-object v4, v2

    goto/16 :goto_50

    :cond_66
    if-eqz v3, :cond_67

    invoke-static {}, Lr81;->h()V

    return v21

    :cond_67
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v18

    :cond_68
    move/from16 v2, v16

    move/from16 v16, v13

    move v13, v2

    move-object/from16 v2, p2

    move v11, v1

    move/from16 v33, v9

    move/from16 v34, v15

    move/from16 v9, p4

    move-object v15, v10

    move-object/from16 v10, p6

    const/16 v1, 0x32

    if-ne v4, v1, :cond_74

    const/4 v1, 0x2

    if-ne v5, v1, :cond_73

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->E(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaew;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/zzaew;->b:Z

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzaew;->c:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzaew;->c()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzaex;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v15, v14, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v4

    :cond_69
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lcom/google/android/gms/internal/measurement/zzaeu;

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-static {v2, v13, v10}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    iget v3, v10, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-ltz v3, :cond_72

    sub-int v4, v9, v1

    if-gt v3, v4, :cond_72

    add-int/2addr v3, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzaeu;->c:Ljava/lang/Object;

    move-object v5, v4

    :goto_3e
    if-ge v1, v3, :cond_6f

    move/from16 p3, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_6a

    invoke-static {v1, v2, v3, v10}, Lcom/google/android/gms/internal/measurement/zzach;->b(I[BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    iget v1, v10, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    :cond_6a
    ushr-int/lit8 v2, v1, 0x3

    move/from16 v23, v3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v24, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6b

    move-object/from16 v3, p2

    move-object v2, v5

    move v4, v9

    move-object v5, v10

    move/from16 v10, p3

    move-object v9, v6

    :goto_3f
    move/from16 v6, v23

    goto/16 :goto_41

    :cond_6b
    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzaeu;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzagm;->b()I

    move-result v2

    if-ne v3, v2, :cond_6c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move v3, v9

    move/from16 v2, v23

    move-object v9, v6

    move-object v6, v10

    move/from16 v10, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->w([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    iget-object v5, v6, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    move v1, v2

    move v3, v10

    move-object/from16 v4, v24

    move-object/from16 v2, p2

    move-object v10, v6

    move-object v6, v9

    move/from16 v9, p4

    goto :goto_3e

    :cond_6c
    move-object v9, v6

    move-object v6, v10

    move/from16 v10, p3

    :cond_6d
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object v2, v5

    move-object v5, v6

    goto :goto_3f

    :cond_6e
    move-object v9, v6

    move-object v6, v10

    move/from16 v2, v23

    move/from16 v10, p3

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzaeu;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzagm;->b()I

    move-result v2

    if-ne v3, v2, :cond_6d

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v9, v2

    move/from16 v2, v23

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzaff;->w([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move v4, v3

    move-object v5, v6

    move-object v3, v1

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    move v1, v2

    move-object v2, v3

    move v3, v10

    move-object v10, v5

    move-object v5, v9

    :goto_40
    move v9, v4

    move-object/from16 v4, v24

    goto/16 :goto_3e

    :goto_41
    invoke-static {v1, v3, v6, v4, v5}, Lcom/google/android/gms/internal/measurement/zzach;->n(I[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v1

    move-object v6, v5

    move-object v5, v2

    move-object v2, v3

    move v3, v10

    move-object v10, v6

    move-object v6, v9

    goto :goto_40

    :cond_6f
    move v4, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, v10

    move v10, v4

    move v4, v9

    move-object v9, v6

    if-ne v1, v10, :cond_71

    invoke-virtual {v8, v9, v2}, Lcom/google/android/gms/internal/measurement/zzaew;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v10, v13, :cond_70

    move-object v6, v5

    move v8, v12

    move-object v2, v14

    move-object v1, v15

    move/from16 v7, v16

    move/from16 v9, v33

    move/from16 v15, v34

    move v5, v4

    move v4, v10

    goto/16 :goto_3d

    :cond_70
    move-object v4, v3

    move-object v13, v5

    move v3, v10

    move v8, v12

    move/from16 v9, v16

    goto/16 :goto_14

    :cond_71
    invoke-static/range {v17 .. v17}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_72
    const/16 v21, 0x0

    invoke-static/range {v32 .. v32}, Ln91;->c(Ljava/lang/String;)V

    return v21

    :cond_73
    move-object v3, v2

    move v4, v9

    move-object v5, v10

    :goto_42
    move/from16 v10, p5

    move-object v4, v3

    move v8, v12

    move v3, v13

    move/from16 v9, v16

    move-object v13, v5

    goto/16 :goto_50

    :cond_74
    add-int/lit8 v1, v12, 0x2

    aget v1, v29, v1

    const v19, 0xfffff

    and-int v1, v1, v19

    int-to-long v1, v1

    packed-switch v4, :pswitch_data_2

    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    move-object/from16 v13, p6

    :cond_75
    :goto_43
    move/from16 v16, v12

    goto/16 :goto_4e

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v5, v4, :cond_76

    and-int/lit8 v1, v11, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v9, v16

    invoke-virtual {v0, v9, v12, v14}, Lcom/google/android/gms/internal/measurement/zzaff;->I(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v13

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzach;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move-object v6, v7

    invoke-virtual {v0, v14, v9, v1, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->J(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v5, v4

    move-object v4, v3

    move v3, v5

    move v5, v2

    :goto_44
    move-object v13, v6

    :goto_45
    move/from16 v16, v12

    goto/16 :goto_4f

    :cond_76
    move/from16 v9, v16

    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move-object/from16 v13, p6

    goto/16 :goto_4e

    :pswitch_1b
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v16

    if-nez v5, :cond_77

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    move v13, v11

    iget-wide v10, v6, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzacv;->k(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_46
    move v11, v4

    move-object v4, v3

    move v3, v11

    move/from16 v16, v12

    move v11, v13

    move-object v13, v6

    goto/16 :goto_4f

    :cond_77
    :goto_47
    move v13, v4

    move-object v4, v3

    move v3, v13

    move-object v13, v6

    goto :goto_43

    :pswitch_1c
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v16

    move v13, v11

    if-nez v5, :cond_78

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    iget v10, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzacv;->j(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_46

    :cond_78
    move v11, v4

    move-object v4, v3

    move v3, v11

    move/from16 v16, v12

    move v11, v13

    move-object v13, v6

    goto/16 :goto_4e

    :pswitch_1d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v16

    move v13, v11

    if-nez v5, :cond_7b

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    iget v10, v6, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->F(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v11

    if-eqz v11, :cond_79

    invoke-interface {v11, v10}, Lcom/google/android/gms/internal/measurement/zzadz;->e(I)Z

    move-result v11

    if-eqz v11, :cond_7a

    :cond_79
    move v11, v13

    goto :goto_48

    :cond_7a
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzaff;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v1

    int-to-long v7, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move v11, v13

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    goto :goto_49

    :goto_48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_49
    move v13, v4

    move-object v4, v3

    move v3, v13

    goto/16 :goto_44

    :cond_7b
    move v11, v13

    goto :goto_47

    :pswitch_1e
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v16

    const/4 v10, 0x2

    if-ne v5, v10, :cond_77

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/zzach;->g([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    iget-object v10, v6, Lcom/google/android/gms/internal/measurement/zzacg;->c:Ljava/lang/Object;

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_1f
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v16

    const/4 v10, 0x2

    if-ne v5, v10, :cond_7c

    invoke-virtual {v0, v9, v12, v14}, Lcom/google/android/gms/internal/measurement/zzaff;->I(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->D(I)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v2

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafp;[BIILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v2

    move/from16 v16, v4

    move-object v13, v6

    move-object v4, v3

    invoke-virtual {v0, v14, v9, v1, v12}, Lcom/google/android/gms/internal/measurement/zzaff;->J(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v5, v2

    move/from16 v3, v16

    goto/16 :goto_45

    :cond_7c
    move/from16 v16, v4

    move-object v13, v6

    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_43

    :pswitch_20
    move-object/from16 v4, p2

    move/from16 p3, v3

    move v3, v13

    move/from16 v9, v16

    const/4 v10, 0x2

    move-object/from16 v13, p6

    if-ne v5, v10, :cond_75

    invoke-static {v4, v3, v13}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    iget v10, v13, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    if-nez v10, :cond_7d

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v16, v12

    goto :goto_4b

    :cond_7d
    add-int v6, v5, v10

    and-int v16, p3, v26

    if-eqz v16, :cond_7e

    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzagl;->a(II[B)Z

    move-result v16

    if-eqz v16, :cond_7f

    :cond_7e
    move/from16 p3, v6

    goto :goto_4a

    :cond_7f
    invoke-static/range {v23 .. v23}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :goto_4a
    new-instance v6, Ljava/lang/String;

    move/from16 v16, v12

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v5, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p3

    :goto_4b
    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_21
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-nez v5, :cond_81

    invoke-static {v4, v3, v13}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    move/from16 p3, v5

    iget-wide v5, v13, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    cmp-long v5, v5, v24

    if-eqz v5, :cond_80

    const/16 v30, 0x1

    goto :goto_4c

    :cond_80
    const/16 v30, 0x0

    :goto_4c
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v14, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4d
    move/from16 v5, p3

    goto/16 :goto_4f

    :pswitch_22
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    const/4 v6, 0x5

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-ne v5, v6, :cond_81

    add-int/lit8 v5, v3, 0x4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_23
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    const/4 v6, 0x1

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-ne v5, v6, :cond_81

    add-int/lit8 v5, v3, 0x8

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_24
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-nez v5, :cond_81

    invoke-static {v4, v3, v13}, Lcom/google/android/gms/internal/measurement/zzach;->a([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    iget v6, v13, Lcom/google/android/gms/internal/measurement/zzacg;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4f

    :pswitch_25
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-nez v5, :cond_81

    invoke-static {v4, v3, v13}, Lcom/google/android/gms/internal/measurement/zzach;->c([BILcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v5

    move/from16 p3, v5

    iget-wide v5, v13, Lcom/google/android/gms/internal/measurement/zzacg;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v14, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4d

    :pswitch_26
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    const/4 v6, 0x5

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-ne v5, v6, :cond_81

    add-int/lit8 v5, v3, 0x4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzach;->d(I[B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :pswitch_27
    move-object/from16 v4, p2

    move v3, v13

    move/from16 v9, v16

    const/4 v6, 0x1

    move-object/from16 v13, p6

    move/from16 v16, v12

    if-ne v5, v6, :cond_81

    add-int/lit8 v5, v3, 0x8

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzach;->e(I[B)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :cond_81
    :goto_4e
    move v5, v3

    :goto_4f
    if-eq v5, v3, :cond_82

    move-object v3, v4

    move v4, v5

    move v7, v9

    move-object v6, v13

    move-object v2, v14

    move-object v1, v15

    move/from16 v8, v16

    move/from16 v9, v33

    move/from16 v15, v34

    move/from16 v5, p4

    goto/16 :goto_3d

    :cond_82
    move/from16 v10, p5

    move v3, v5

    move/from16 v8, v16

    :goto_50
    if-ne v11, v10, :cond_83

    if-eqz v10, :cond_83

    move/from16 v7, p4

    move v6, v3

    move/from16 v9, v33

    :goto_51
    move/from16 v1, v34

    const v2, 0xfffff

    goto/16 :goto_54

    :cond_83
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzaff;->f:Z

    if-eqz v1, :cond_85

    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzacg;->d:Lcom/google/android/gms/internal/measurement/zzadf;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzadf;->b:Lcom/google/android/gms/internal/measurement/zzadf;

    sget v2, Lcom/google/android/gms/internal/measurement/zzacf;->a:I

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzadf;->c:Lcom/google/android/gms/internal/measurement/zzadf;

    if-eq v1, v2, :cond_85

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzaff;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzade;

    invoke-direct {v5, v9, v2}, Lcom/google/android/gms/internal/measurement/zzade;-><init>(ILcom/google/android/gms/internal/measurement/zzafc;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzadf;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_84

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzaff;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    move-object v2, v4

    move v1, v11

    move-object v6, v13

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->m(I[BIILcom/google/android/gms/internal/measurement/zzaga;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    move/from16 v7, p4

    :goto_52
    move v4, v3

    goto :goto_53

    :cond_84
    invoke-static {}, Lr81;->h()V

    const/16 v21, 0x0

    return v21

    :cond_85
    move v1, v11

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzaff;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzach;->m(I[BIILcom/google/android/gms/internal/measurement/zzaga;Lcom/google/android/gms/internal/measurement/zzacg;)I

    move-result v3

    move v7, v4

    goto :goto_52

    :goto_53
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move/from16 v16, v1

    move v5, v7

    move v7, v9

    move-object v2, v14

    move-object v1, v15

    move/from16 v11, v22

    move/from16 v9, v33

    move/from16 v15, v34

    goto/16 :goto_0

    :cond_86
    move/from16 v10, p5

    move-object v14, v2

    move v7, v5

    move/from16 v33, v9

    move/from16 v34, v15

    move-object v15, v1

    move v6, v4

    move/from16 v11, v16

    goto :goto_51

    :goto_54
    if-eq v9, v2, :cond_87

    int-to-long v2, v9

    invoke-virtual {v15, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_87
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzaff;->i:I

    move v8, v1

    move-object/from16 v3, v18

    :goto_55
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzaff;->j:I

    if-ge v8, v1, :cond_88

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzaff;->h:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzaff;->k:Lcom/google/android/gms/internal/measurement/zzafz;

    aget v2, v1, v8

    move-object/from16 v5, p1

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzaff;->K(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaga;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, p1

    goto :goto_55

    :cond_88
    if-eqz v3, :cond_89

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzaff;->k:Lcom/google/android/gms/internal/measurement/zzafz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_89
    if-nez v10, :cond_8b

    if-ne v6, v7, :cond_8a

    goto :goto_56

    :cond_8a
    invoke-static/range {v17 .. v17}, Ln91;->c(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_8b
    const/16 v21, 0x0

    if-gt v6, v7, :cond_8c

    if-ne v11, v10, :cond_8c

    :goto_56
    return v6

    :cond_8c
    invoke-static/range {v17 .. v17}, Ln91;->c(Ljava/lang/String;)V

    return v21

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

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.class public LXqjhMb/GrZpLc;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x244e

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "u_\u007f]RNKly(rgi{jt3h@\u007f@"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->b:Ljava/lang/String;

    const-string v0, "xRhwN_Akdff"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->c:Ljava/lang/String;

    const-string v0, "\u0015\u001d<_IR\u0006"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "\u0015\u001d<QR_\u0006"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "\u000e\n9\u001c\u0012Z\u0015*#:g9\"l>#`"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->d:Ljava/lang/String;

    const-string v0, "zPu^EX\u000efc(EAS(ut|oDxRdqy!4"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->e:Ljava/lang/String;

    const-string v0, "xT\u007f]DYJ5-Knga "

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "\r\n9\u001c\u0012Z\u0015*#:g9\"&7`()E0\u0004~"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->f:Ljava/lang/String;

    const-string v0, "\u0015\u001d<_AD\u0006"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "\u000c\n"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->g:Ljava/lang/String;

    const-string v0, "\u0006\u0011"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/GrZpLc;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F[F)LwcQZwr/MrfBl;
    .locals 11

    sget v0, LXqjhMb/CnROgj;->a:I

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    new-array v1, v0, [F

    const/4 v3, 0x0

    invoke-static {v3, p1, v1, v0}, LXqjhMb/CnROgj;->a(I[F[FI)V

    sget v0, LXqjhMb/DMsjta;->a:I

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Float;

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p0, v4

    aget-object p0, v1, p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p0

    if-gez v4, :cond_1

    const/4 v4, 0x0

    aput v4, p1, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget p0, p1, v3

    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [F

    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, LXqjhMb/GrZpLc;->c([F)Landroid/util/Pair;

    move-result-object p1

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1, v0}, LXqjhMb/DMsjta;->b(FF[F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LXqjhMb/CZqWkm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, LXqjhMb/XsSrSA;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1}, LXqjhMb/GrZpLc;->e(F)F

    move-result v1

    invoke-static {p1}, LXqjhMb/GrZpLc;->e(F)F

    move-result p1

    invoke-static {p0}, LXqjhMb/GrZpLc;->e(F)F

    move-result p0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v6, LXqjhMb/GrZpLc;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v7, v8, v9, v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v1, v5

    mul-float/2addr p1, v5

    add-float/2addr p1, v1

    mul-float/2addr p0, v5

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr p0, v3

    new-instance v1, LwcQZwr/MrfBl;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, LwcQZwr/MrfBl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    sget-object p0, LXqjhMb/CnROgj;->c:Ljava/lang/String;

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([F)LwcQZwr/MrfBl;
    .locals 10

    invoke-static {p0}, LXqjhMb/GrZpLc;->c([F)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0, p0}, LXqjhMb/DMsjta;->b(FF[F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LXqjhMb/CZqWkm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, LXqjhMb/XsSrSA;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1}, LXqjhMb/GrZpLc;->e(F)F

    move-result v1

    invoke-static {v0}, LXqjhMb/GrZpLc;->e(F)F

    move-result v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v6, LXqjhMb/GrZpLc;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v8, v9, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v6, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v1, v5

    mul-float/2addr v0, v5

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v3

    new-instance v3, LwcQZwr/MrfBl;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, p0, v2, v0}, LwcQZwr/MrfBl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static c([F)Landroid/util/Pair;
    .locals 7

    const/4 v0, 0x0

    aget v1, p0, v0

    array-length v2, p0

    sget v3, LXqjhMb/GrZpLc;->a:I

    xor-int/lit16 v3, v3, 0x244e

    if-eqz v3, :cond_1

    :goto_0
    sget p0, LXqjhMb/GrZpLc;->a:I

    add-int/lit8 v0, p0, 0x4e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x4a

    xor-int/lit16 v0, v0, 0xd3d

    add-int/2addr v0, p0

    sput v0, LXqjhMb/GrZpLc;->a:I

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    :goto_1
    if-ge v0, v2, :cond_7

    aget v4, p0, v0

    cmpg-float v5, v4, v1

    if-gez v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    cmpl-float v5, v4, v3

    if-lez v5, :cond_4

    move v3, v4

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    sget v4, LXqjhMb/GrZpLc;->a:I

    const/16 v5, 0x244d

    if-gt v4, v5, :cond_2

    :goto_3
    sget v4, LXqjhMb/GrZpLc;->a:I

    add-int/lit8 v5, v4, 0x27

    const/16 v6, 0x19

    if-eq v5, v6, :cond_6

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_5

    goto :goto_3

    :cond_5
    shr-int/lit8 v4, v4, 0x31

    mul-int/lit8 v4, v4, 0x73

    sput v4, LXqjhMb/GrZpLc;->a:I

    goto :goto_1

    :cond_6
    :goto_4
    sget p0, LXqjhMb/GrZpLc;->a:I

    xor-int/lit16 p0, p0, 0x50d

    rem-int/lit8 p0, p0, 0x69

    sput p0, LXqjhMb/GrZpLc;->a:I

    goto :goto_4

    :cond_7
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static d(F[F)Landroid/util/Pair;
    .locals 7

    const-string v0, ""

    sget-object v1, LXqjhMb/GrZpLc;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    array-length v5, p1

    new-array v5, v5, [F

    array-length v6, p1

    invoke-static {p1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, LXqjhMb/GrZpLc;->b([F)LwcQZwr/MrfBl;

    move-result-object p1

    iget-object v6, p1, LwcQZwr/MrfBl;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v5}, LXqjhMb/GrZpLc;->a(F[F)LwcQZwr/MrfBl;

    move-result-object p0

    iget-object v5, p0, LwcQZwr/MrfBl;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x14

    if-ge v6, v5, :cond_0

    iget-object p0, p1, LwcQZwr/MrfBl;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p1, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p1, p0, LwcQZwr/MrfBl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object p0, p0, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object p0, p1

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object p1, LXqjhMb/GrZpLc;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LXqjhMb/GrZpLc;->e:Ljava/lang/String;

    invoke-static {v6, p0, v5}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-static {p1, v5, v6}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, LXqjhMb/GrZpLc;->h:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    move-object p0, v0

    move-wide v5, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, LXqjhMb/GrZpLc;->c:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Throwable;

    invoke-static {p0, v1, p1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, LXqjhMb/GrZpLc;->g:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    move-wide v3, v5

    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static e(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

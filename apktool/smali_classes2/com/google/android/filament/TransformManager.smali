.class public Lcom/google/android/filament/TransformManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method private static native nCreate(JI)I
.end method

.method private static native nGetChildCount(JI)I
.end method

.method private static native nGetChildren(JI[II)V
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nGetTransform(JI[F)V
.end method

.method private static native nHasComponent(JI)Z
.end method

.method private static native nSetParent(JII)V
.end method

.method private static native nSetTransform(JI[F)V
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nCreate(JI)I

    move-result p0

    return p0
.end method

.method public final b(I)[I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nGetChildCount(JI)I

    move-result p0

    new-array p0, p0, [I

    array-length v2, p0

    if-lez v2, :cond_0

    array-length v2, p0

    invoke-static {v0, v1, p1, p0, v2}, Lcom/google/android/filament/TransformManager;->nGetChildren(JI[II)V

    :cond_0
    return-object p0
.end method

.method public final c(I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nGetInstance(JI)I

    move-result p0

    return p0
.end method

.method public final d([FI)[F
    .locals 2

    const/16 v0, 0x10

    array-length v1, p1

    if-lt v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p2, p1}, Lcom/google/android/filament/TransformManager;->nGetTransform(JI[F)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Array length must be at least 16"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->nHasComponent(JI)Z

    move-result p0

    return p0
.end method

.method public final f(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/TransformManager;->nSetParent(JII)V

    return-void
.end method

.method public final g([FI)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/filament/TransformManager;->a:J

    invoke-static {v0, v1, p2, p1}, Lcom/google/android/filament/TransformManager;->nSetTransform(JI[F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Array length must be at least 16"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

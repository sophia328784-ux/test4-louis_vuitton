.class public Lcom/google/android/filament/IndexBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/IndexBuffer$Builder;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public static bridge synthetic a(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/IndexBuffer;->nBuilderBufferType(JI)V

    return-void
.end method

.method public static bridge synthetic b(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/IndexBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/IndexBuffer;->nBuilderIndexCount(JI)V

    return-void
.end method

.method public static bridge synthetic d()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/IndexBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/IndexBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBufferType(JI)V
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderIndexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nSetBuffer(JJLjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method


# virtual methods
.method public final f()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/IndexBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed IndexBuffer"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final g(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    :cond_0
    move v7, p1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/filament/IndexBuffer;->nSetBuffer(JJLjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result p0

    if-ltz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

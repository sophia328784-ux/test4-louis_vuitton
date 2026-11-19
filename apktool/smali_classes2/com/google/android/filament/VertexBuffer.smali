.class public Lcom/google/android/filament/VertexBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/VertexBuffer$Builder;,
        Lcom/google/android/filament/VertexBuffer$AttributeType;,
        Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public static bridge synthetic a(IIIIJ)V
    .locals 7

    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move-wide v0, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/VertexBuffer;->nBuilderAttribute(JIIIII)V

    return-void
.end method

.method public static bridge synthetic b(J)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/google/android/filament/VertexBuffer;->nBuilderBufferCount(JI)V

    return-void
.end method

.method public static bridge synthetic c(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/VertexBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic d(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/VertexBuffer;->nBuilderVertexCount(JI)V

    return-void
.end method

.method public static bridge synthetic e()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/VertexBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/VertexBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderAttribute(JIIIII)V
.end method

.method private static native nBuilderBufferCount(JI)V
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderVertexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nSetBufferAt(JJILjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method


# virtual methods
.method public final g()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed VertexBuffer"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/VertexBuffer;->nSetBufferAt(JJILjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

.method public final i(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;I)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-nez p4, :cond_0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    :cond_0
    move v8, p4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/VertexBuffer;->nSetBufferAt(JJILjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result p0

    if-ltz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

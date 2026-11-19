.class final Lcoil3/network/SourceResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/network/NetworkResponseBody;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0083@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcoil3/network/SourceResponseBody;",
        "Lcoil3/network/NetworkResponseBody;",
        "source",
        "Lokio/BufferedSource;",
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field public final b:Lokio/BufferedSource;


# direct methods
.method public synthetic constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcoil3/network/SourceResponseBody;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcoil3/network/SourceResponseBody;

    iget-object p1, p1, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    iget-object p0, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k1(Lokio/FileSystem;Lokio/Path;)Lkotlin/Unit;
    .locals 2

    iget-object p0, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lokio/FileSystem;->q(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->b(Lokio/Sink;)Lokio/RealBufferedSink;

    move-result-object p1

    :try_start_0
    invoke-interface {p0, p1}, Lokio/BufferedSource;->N1(Lokio/BufferedSink;)J

    move-result-wide v0

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lokio/RealBufferedSink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {p1}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SourceResponseBody(source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v1(Lokio/Buffer;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcoil3/network/SourceResponseBody;->b:Lokio/BufferedSource;

    invoke-interface {p0, p1}, Lokio/BufferedSource;->N1(Lokio/BufferedSink;)J

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class public final Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/BufferedSocket;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "okhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1",
        "Lokhttp3/internal/connection/BufferedSocket;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Lokio/Socket;

.field public final c:Lokio/RealBufferedSource;

.field public final d:Lokio/RealBufferedSink;


# direct methods
.method public constructor <init>(Lokio/Socket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Lokio/Socket;

    invoke-interface {p1}, Lokio/Socket;->getSource()Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->c(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lokio/RealBufferedSource;

    invoke-interface {p1}, Lokio/Socket;->a()Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->b(Lokio/Sink;)Lokio/RealBufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->d:Lokio/RealBufferedSink;

    return-void
.end method


# virtual methods
.method public final a()Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->d:Lokio/RealBufferedSink;

    return-object p0
.end method

.method public final a()Lokio/Sink;
    .locals 0

    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->d:Lokio/RealBufferedSink;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->b:Lokio/Socket;

    invoke-interface {p0}, Lokio/Socket;->cancel()V

    return-void
.end method

.method public final getSource()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lokio/RealBufferedSource;

    return-object p0
.end method

.method public final getSource()Lokio/Source;
    .locals 0

    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lokio/RealBufferedSource;

    return-object p0
.end method

.class public final Lokio/internal/DefaultSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Socket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/internal/DefaultSocket$SocketSink;,
        Lokio/internal/DefaultSocket$SocketSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lokio/internal/DefaultSocket;",
        "Lokio/Socket;",
        "Ljava/net/Socket;",
        "socket",
        "<init>",
        "(Ljava/net/Socket;)V",
        "SocketSink",
        "SocketSource",
        "okio"
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
.field public final b:Ljava/net/Socket;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Lokio/internal/DefaultSocket$SocketSource;

.field public final e:Lokio/internal/DefaultSocket$SocketSink;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->b:Ljava/net/Socket;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lokio/internal/DefaultSocket$SocketSource;

    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSource;-><init>(Lokio/internal/DefaultSocket;)V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->d:Lokio/internal/DefaultSocket$SocketSource;

    new-instance p1, Lokio/internal/DefaultSocket$SocketSink;

    invoke-direct {p1, p0}, Lokio/internal/DefaultSocket$SocketSink;-><init>(Lokio/internal/DefaultSocket;)V

    iput-object p1, p0, Lokio/internal/DefaultSocket;->e:Lokio/internal/DefaultSocket$SocketSink;

    return-void
.end method


# virtual methods
.method public final a()Lokio/Sink;
    .locals 0

    iget-object p0, p0, Lokio/internal/DefaultSocket;->e:Lokio/internal/DefaultSocket$SocketSink;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lokio/internal/DefaultSocket;->b:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public final getSource()Lokio/Source;
    .locals 0

    iget-object p0, p0, Lokio/internal/DefaultSocket;->d:Lokio/internal/DefaultSocket$SocketSource;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokio/internal/DefaultSocket;->b:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

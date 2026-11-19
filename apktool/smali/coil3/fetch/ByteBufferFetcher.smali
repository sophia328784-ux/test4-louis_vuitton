.class public final Lcoil3/fetch/ByteBufferFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/ByteBufferFetcher$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/fetch/ByteBufferFetcher;",
        "Lcoil3/fetch/Fetcher;",
        "Ljava/nio/ByteBuffer;",
        "data",
        "Lcoil3/request/Options;",
        "options",
        "<init>",
        "(Ljava/nio/ByteBuffer;Lcoil3/request/Options;)V",
        "Factory",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcoil3/request/Options;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/fetch/ByteBufferFetcher;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcoil3/fetch/ByteBufferFetcher;->b:Lcoil3/request/Options;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance p1, Lcoil3/fetch/SourceFetchResult;

    new-instance v0, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;

    iget-object v1, p0, Lcoil3/fetch/ByteBufferFetcher;->a:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v2, Lokio/RealBufferedSource;

    invoke-direct {v2, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iget-object p0, p0, Lcoil3/fetch/ByteBufferFetcher;->b:Lcoil3/request/Options;

    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    new-instance v0, Lcoil3/decode/ByteBufferMetadata;

    invoke-direct {v0, v1}, Lcoil3/decode/ByteBufferMetadata;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcoil3/decode/SourceImageSource;

    invoke-direct {v1, v2, p0, v0}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    const/4 p0, 0x0

    sget-object v0, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    invoke-direct {p1, v1, p0, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object p1
.end method

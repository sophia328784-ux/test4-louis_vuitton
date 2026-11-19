.class public final Lokhttp3/RequestBody$Companion$toRequestBody$1;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "okhttp3/RequestBody$Companion$toRequestBody$1",
        "Lokhttp3/RequestBody;",
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
.field public final synthetic c:Lokhttp3/MediaType;

.field public final synthetic d:Lokio/ByteString;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lokio/ByteString;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->c:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->d:Lokio/ByteString;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->c:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final e(Lokio/BufferedSink;)V
    .locals 0

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->d:Lokio/ByteString;

    invoke-interface {p1, p0}, Lokio/BufferedSink;->G1(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method

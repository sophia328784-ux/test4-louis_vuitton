.class public final synthetic Lz10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz10;->b:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p0, Lz10;->c:I

    iput-wide p3, p0, Lz10;->d:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lz10;->b:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lz10;->c:I

    iget-wide v2, p0, Lz10;->d:J

    sget-object p0, Lokhttp3/internal/http2/Http2Connection;->C:Lokhttp3/internal/http2/Http2Connection$Companion;

    :try_start_0
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0, v1, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->m(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

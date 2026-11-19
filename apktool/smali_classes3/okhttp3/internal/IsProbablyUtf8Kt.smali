.class public abstract Lokhttp3/internal/IsProbablyUtf8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okhttp"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lokio/Buffer;)Z
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lokio/Buffer;->peek()Lokio/RealBufferedSource;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    invoke-virtual {p0}, Lokio/RealBufferedSource;->Z0()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->D0(J)V

    iget-object v6, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {v6, v0, v1}, Lokio/Buffer;->w(J)B

    move-result v7

    and-int/lit16 v8, v7, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_1

    const-wide/16 v7, 0x2

    invoke-virtual {p0, v7, v8}, Lokio/RealBufferedSource;->D0(J)V

    goto :goto_1

    :cond_1
    and-int/lit16 v8, v7, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_2

    const-wide/16 v7, 0x3

    invoke-virtual {p0, v7, v8}, Lokio/RealBufferedSource;->D0(J)V

    goto :goto_1

    :cond_2
    and-int/lit16 v7, v7, 0xf8

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_3

    const-wide/16 v7, 0x4

    invoke-virtual {p0, v7, v8}, Lokio/RealBufferedSource;->D0(J)V

    :cond_3
    :goto_1
    invoke-virtual {v6}, Lokio/Buffer;->i0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-long/2addr v2, v4

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

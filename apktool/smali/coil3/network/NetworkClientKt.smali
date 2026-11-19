.class public abstract Lcoil3/network/NetworkClientKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lokio/BufferedSource;)Lcoil3/network/NetworkResponseBody;
    .locals 1

    new-instance v0, Lcoil3/network/SourceResponseBody;

    invoke-direct {v0, p0}, Lcoil3/network/SourceResponseBody;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

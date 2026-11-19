.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u00012\u00020\u0002\u0082\u0001\u0002\u0003\u0004\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0005\u00c0\u0006\u0001"
    }
    d2 = {
        "Lokio/BufferedSource;",
        "Lokio/Source;",
        "Ljava/nio/channels/ReadableByteChannel;",
        "Lokio/Buffer;",
        "Lokio/RealBufferedSource;",
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


# virtual methods
.method public abstract A0()J
.end method

.method public abstract D0(J)V
.end method

.method public abstract K0(J)Ljava/lang/String;
.end method

.method public abstract L()Lokio/Buffer;
.end method

.method public abstract N0(J)Lokio/ByteString;
.end method

.method public abstract N1(Lokio/BufferedSink;)J
.end method

.method public abstract Q()Lokio/Buffer;
.end method

.method public abstract S1()J
.end method

.method public abstract T(Lokio/ByteString;)J
.end method

.method public abstract U1()Ljava/io/InputStream;
.end method

.method public abstract V(Lokio/Buffer;J)V
.end method

.method public abstract V0()[B
.end method

.method public abstract V1(Lokio/Options;)I
.end method

.method public abstract W(Lokio/ByteString;)J
.end method

.method public abstract Z(J)Ljava/lang/String;
.end method

.method public abstract Z0()Z
.end method

.method public abstract i1(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract n1()Lokio/ByteString;
.end method

.method public abstract peek()Lokio/RealBufferedSource;
.end method

.method public abstract readByte()B
.end method

.method public abstract readFully([B)V
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readShort()S
.end method

.method public abstract request(J)Z
.end method

.method public abstract s0(JLokio/ByteString;)Z
.end method

.method public abstract skip(J)V
.end method

.method public abstract w1()I
.end method

.method public abstract x0()Ljava/lang/String;
.end method

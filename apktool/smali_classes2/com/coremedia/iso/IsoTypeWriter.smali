.class public final Lcom/coremedia/iso/IsoTypeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;D)V
    .locals 2

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr p1, v0

    double-to-int p1, p1

    const/high16 p2, -0x1000000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 p2, 0xff0000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const p2, 0xff00

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;D)V
    .locals 2

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    const/high16 p2, -0x1000000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 p2, 0xff0000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const p2, 0xff00

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static c(Ljava/nio/ByteBuffer;D)V
    .locals 2

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    int-to-short p1, p1

    const p2, 0xff00

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static d(ILjava/nio/ByteBuffer;)V
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    invoke-static {v0, p1}, Lcom/coremedia/iso/IsoTypeWriter;->f(ILjava/nio/ByteBuffer;)V

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static e(ILjava/nio/ByteBuffer;)V
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    invoke-static {v0, p1}, Lcom/coremedia/iso/IsoTypeWriter;->d(ILjava/nio/ByteBuffer;)V

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static f(ILjava/nio/ByteBuffer;)V
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.class Lorg/spongycastle/asn1/DefiniteLengthInputStream;
.super Lorg/spongycastle/asn1/LimitedInputStream;
.source "SourceFile"


# static fields
.field public static final f:[B


# instance fields
.field public final d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->f:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    if-ltz p2, :cond_1

    iput p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->d:I

    iput p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LimitedInputStream;->j()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "negative lengths not allowed"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final h()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    return p0
.end method

.method public final k()[B
    .locals 3

    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez v0, :cond_0

    sget-object p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->f:[B

    return-object p0

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lorg/spongycastle/util/io/Streams;->a(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LimitedInputStream;->j()V

    return-object v1

    :cond_1
    const-string v0, " object truncated by "

    iget v1, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    iget p0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->d:I

    const-string v2, "DEF length "

    invoke-static {v0, p0, v1, v2}, Los;->e(Ljava/lang/Object;IILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final read()I
    .locals 3

    .line 42
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    .line 44
    iget v1, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lorg/spongycastle/asn1/LimitedInputStream;->j()V

    :cond_1
    return v0

    .line 46
    :cond_2
    const-string v0, " object truncated by "

    iget v1, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    iget p0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->d:I

    const-string v2, "DEF length "

    invoke-static {v0, p0, v1, v2}, Los;->e(Ljava/lang/Object;IILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([BII)I
    .locals 1

    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_2

    iget p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LimitedInputStream;->j()V

    :cond_1
    return p1

    :cond_2
    const-string p1, " object truncated by "

    iget p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->e:I

    iget p0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->d:I

    const-string p3, "DEF length "

    invoke-static {p1, p0, p2, p3}, Los;->e(Ljava/lang/Object;IILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

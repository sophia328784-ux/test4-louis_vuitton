.class public Lorg/spongycastle/asn1/ASN1Boolean;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"


# static fields
.field public static final c:[B

.field public static final d:[B

.field public static final e:Lorg/spongycastle/asn1/ASN1Boolean;

.field public static final f:Lorg/spongycastle/asn1/ASN1Boolean;


# instance fields
.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lorg/spongycastle/asn1/ASN1Boolean;->c:[B

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    sput-object v1, Lorg/spongycastle/asn1/ASN1Boolean;->d:[B

    new-instance v1, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lorg/spongycastle/asn1/ASN1Boolean;->e:Lorg/spongycastle/asn1/ASN1Boolean;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lorg/spongycastle/asn1/ASN1Boolean;->f:Lorg/spongycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_0

    .line 42
    sget-object p1, Lorg/spongycastle/asn1/ASN1Boolean;->c:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/spongycastle/asn1/ASN1Boolean;->d:[B

    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/spongycastle/asn1/ASN1Boolean;->d:[B

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    return-void

    :cond_0
    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p1, Lorg/spongycastle/asn1/ASN1Boolean;->c:[B

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    return-void

    :cond_1
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    return-void

    :cond_2
    const-string p0, "byte value should have 1 byte in it"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    aget-byte p0, p0, v1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    aget-byte p1, p1, v1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final l(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    invoke-virtual {p1, v0, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->d(I[B)V

    return-void
.end method

.method public final m()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Boolean;->b:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const-string p0, "TRUE"

    return-object p0

    :cond_0
    const-string p0, "FALSE"

    return-object p0
.end method

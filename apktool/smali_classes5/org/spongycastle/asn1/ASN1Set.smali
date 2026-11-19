.class public abstract Lorg/spongycastle/asn1/ASN1Set;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/asn1/ASN1Primitive;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/Vector;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    :goto_0
    iget-object v1, p1, Lorg/spongycastle/asn1/ASN1EncodableVector;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->b(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->r()V

    :cond_1
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1Encodable;Z)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    .line 49
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->r()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->b:Lorg/spongycastle/asn1/DERNull;

    :cond_0
    mul-int/lit8 p0, p0, 0x11

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr p0, v1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1Set;

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p1, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_3

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->b:Lorg/spongycastle/asn1/DERNull;

    :cond_3
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_4

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->b:Lorg/spongycastle/asn1/DERNull;

    :cond_4
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lorg/spongycastle/util/Arrays$Iterator;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Encodable;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v1}, Lorg/spongycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final p()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    iput-object p0, v0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {p0}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->r()V

    return-object p0
.end method

.method public final q()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/DLSet;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DLSet;-><init>()V

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    iput-object p0, v0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public final r()V
    .locals 15

    const-string v0, "cannot encode object added to SET"

    const-string v1, "DER"

    iget-boolean v2, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/spongycastle/asn1/ASN1Set;->c:Z

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v2

    move v4, v2

    :goto_0
    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Encodable;

    :try_start_0
    invoke-interface {v4}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v4

    move v4, v5

    move v6, v4

    move v8, v6

    :goto_1
    if-eq v8, v3, :cond_3

    iget-object v9, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/ASN1Encodable;

    :try_start_1
    invoke-interface {v9}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/spongycastle/asn1/ASN1Object;->h(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    array-length v11, v7

    array-length v12, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v5

    :goto_2
    if-eq v12, v11, :cond_1

    aget-byte v13, v7, v12

    aget-byte v14, v9, v12

    if-eq v13, v14, :cond_0

    and-int/lit16 v11, v13, 0xff

    and-int/lit16 v12, v14, 0xff

    if-ge v11, v12, :cond_2

    goto :goto_3

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    array-length v12, v7

    if-ne v11, v12, :cond_2

    :goto_3
    move-object v7, v9

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v6, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v6, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {v6, v4, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v6, v2

    move v4, v8

    :goto_4
    move v8, v10

    goto :goto_1

    :catch_0
    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    move v3, v4

    move v4, v6

    goto :goto_0

    :catch_1
    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Set;->b:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lorg/spongycastle/asn1/ASN1TaggedObject;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, p3, Lorg/spongycastle/asn1/ASN1Choice;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    :goto_0
    iput p2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    iget-boolean p1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    if-eqz p1, :cond_1

    iput-object p3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void

    :cond_1
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    iput-object p3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static r(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1TaggedObject;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->n([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->r(Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ln00;->o(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "unknown object in getInstance: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method


# virtual methods
.method public final getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final i(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    iget-object v0, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    iget v2, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    iget-boolean p1, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    iget-boolean p0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public final q()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/DLTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    iget-boolean p0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->c:Z

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/asn1/DLTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public final s()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->d:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

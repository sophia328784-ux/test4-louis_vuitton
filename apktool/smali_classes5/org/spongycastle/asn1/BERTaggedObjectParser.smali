.class public Lorg/spongycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:Lorg/spongycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->b:Z

    iput p2, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->c:I

    iput-object p3, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->d:Lorg/spongycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public final getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->b:Z

    iget v1, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->c:I

    iget-object p0, p0, Lorg/spongycastle/asn1/BERTaggedObjectParser;->d:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->b(IZ)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public final toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

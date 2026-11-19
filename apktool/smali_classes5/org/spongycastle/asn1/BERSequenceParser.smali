.class public Lorg/spongycastle/asn1/BERSequenceParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1SequenceParser;


# instance fields
.field public final b:Lorg/spongycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/BERSequenceParser;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public final getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    iget-object p0, p0, Lorg/spongycastle/asn1/BERSequenceParser;->b:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->c()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public final toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERSequenceParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

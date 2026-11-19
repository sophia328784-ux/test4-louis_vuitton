.class public Lorg/spongycastle/asn1/BERApplicationSpecificParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field public final b:I

.field public final c:Lorg/spongycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->b:I

    iput-object p2, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->c:Lorg/spongycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public final getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/BERApplicationSpecific;

    iget-object v1, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->c:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1StreamParser;->c()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    iget p0, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->b:I

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/BERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public final toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

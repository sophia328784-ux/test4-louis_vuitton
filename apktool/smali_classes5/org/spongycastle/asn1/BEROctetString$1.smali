.class Lorg/spongycastle/asn1/BEROctetString$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public a:I

.field public final synthetic b:Lorg/spongycastle/asn1/BEROctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/BEROctetString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/BEROctetString$1;->b:Lorg/spongycastle/asn1/BEROctetString;

    const/4 p1, 0x0

    iput p1, p0, Lorg/spongycastle/asn1/BEROctetString$1;->a:I

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    iget v0, p0, Lorg/spongycastle/asn1/BEROctetString$1;->a:I

    iget-object p0, p0, Lorg/spongycastle/asn1/BEROctetString$1;->b:Lorg/spongycastle/asn1/BEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/BEROctetString;->c:[Lorg/spongycastle/asn1/ASN1OctetString;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString$1;->b:Lorg/spongycastle/asn1/BEROctetString;

    iget-object v0, v0, Lorg/spongycastle/asn1/BEROctetString;->c:[Lorg/spongycastle/asn1/ASN1OctetString;

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetString$1;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/asn1/BEROctetString$1;->a:I

    aget-object p0, v0, v1

    return-object p0
.end method

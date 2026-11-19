.class public Lorg/spongycastle/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/IllegalArgumentException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/spongycastle/asn1/ASN1Exception;->b:Ljava/lang/IllegalArgumentException;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ASN1Exception;->b:Ljava/lang/IllegalArgumentException;

    return-object p0
.end method

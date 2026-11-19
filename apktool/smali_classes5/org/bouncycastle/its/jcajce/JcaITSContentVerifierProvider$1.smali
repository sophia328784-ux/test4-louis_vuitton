.class Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

.field final synthetic val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$parentDigest:[B

.field final synthetic val$parentTBSDigest:[B

.field final synthetic val$signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/Signature;[B[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->this$0:Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$os:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object p4, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    iput-object p5, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentTBSDigest:[B

    iput-object p6, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentDigest:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$os:Ljava/io/OutputStream;

    return-object p0
.end method

.method public verify([B)Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->this$0:Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

    invoke-static {v2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->access$200(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentTBSDigest:[B

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentDigest:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lr81;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

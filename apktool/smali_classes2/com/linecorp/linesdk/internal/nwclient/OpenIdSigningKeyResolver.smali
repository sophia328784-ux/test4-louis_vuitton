.class public Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/jsonwebtoken/SigningKeyResolver;


# instance fields
.field public final a:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;->a:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    return-void
.end method


# virtual methods
.method public final a(Lio/jsonwebtoken/JwsHeader;)Ljava/security/interfaces/ECPublicKey;
    .locals 7

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;->a:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, v0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v0, v0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    iget-object v0, v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->j:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->toString()Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/internal/JWKSet;

    invoke-interface {p1}, Lio/jsonwebtoken/JwsHeader;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK;

    iget-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_6

    :goto_2
    return-object v1

    :cond_6
    invoke-interface {p1}, Lio/jsonwebtoken/JwsHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->forName(Ljava/lang/String;)Lio/jsonwebtoken/SignatureAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lio/jsonwebtoken/SignatureAlgorithm;->isEllipticCurve()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->f:Ljava/lang/String;

    iget-object p1, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->e:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p0, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    :try_start_0
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v3, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p1}, Lorg/spongycastle/jce/ECNamedCurveTable;->a(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    new-instance v3, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    iget-object v5, v0, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v6, v0, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    iget-object v0, v0, Lorg/spongycastle/jce/spec/ECParameterSpec;->d:Ljava/math/BigInteger;

    invoke-direct {v3, p1, v5, v6, v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    new-instance p1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {p1, v4, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {v2}, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->toString()Ljava/lang/String;

    return-object v1

    :cond_7
    new-instance p1, Lio/jsonwebtoken/security/SecurityException;

    const-string v0, "Unsupported signature algorithm \'"

    const/16 v1, 0x27

    invoke-static {v1, v0, p0}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/jsonwebtoken/security/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resolveSigningKey(Lio/jsonwebtoken/JwsHeader;Lio/jsonwebtoken/Claims;)Ljava/security/Key;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;->a(Lio/jsonwebtoken/JwsHeader;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public final resolveSigningKey(Lio/jsonwebtoken/JwsHeader;Ljava/lang/String;)Ljava/security/Key;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;->a(Lio/jsonwebtoken/JwsHeader;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p0

    return-object p0
.end method

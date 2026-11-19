.class Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/est/ESTClientSourceProvider;


# instance fields
.field private final absoluteLimit:Ljava/lang/Long;

.field private final bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field private final cipherSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSupportedSuites:Z

.field private final hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;",
            "I",
            "Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iput p3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->timeout:I

    iput-object p4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iput-object p5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    iput-object p6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->absoluteLimit:Ljava/lang/Long;

    iput-boolean p7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->filterSupportedSuites:Z

    return-void
.end method


# virtual methods
.method public makeSource(Ljava/lang/String;I)Lorg/bouncycastle/est/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iget v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->timeout:I

    invoke-virtual {p2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->filterSupportedSuites:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p0, "No supplied cipher suite is supported by the provider."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;->verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, "Host name could not be verified."

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_7
    :goto_3
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_des_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "_des40_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "_3des_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "export"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tlsv1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;->verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, "Hostname was not verified: "

    invoke-static {p0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_9
    :goto_4
    new-instance p1, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object p0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->absoluteLimit:Ljava/lang/Long;

    invoke-direct {p1, p2, v0, p0}, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;-><init>(Ljavax/net/ssl/SSLSocket;Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/lang/Long;)V

    return-object p1

    :cond_a
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "EST clients must not use TLSv1"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_b
    const-string p0, "EST clients must not use export ciphers"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_c
    const-string p0, "EST clients must not use anon ciphers"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_d
    const-string p0, "EST clients must not use NULL ciphers"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1

    :cond_e
    const-string p0, "EST clients must not use DES ciphers"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v1
.end method

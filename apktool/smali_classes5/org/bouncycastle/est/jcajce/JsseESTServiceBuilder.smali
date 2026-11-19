.class public Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
.super Lorg/bouncycastle/est/ESTServiceBuilder;


# instance fields
.field protected absoluteLimit:Ljava/lang/Long;

.field protected bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field protected filterCipherSuites:Z

.field protected hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field protected socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

.field protected sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

.field protected supportedSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected timeoutMillis:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    new-instance p1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-static {}, Lorg/bouncycastle/est/jcajce/JcaJceUtils;->getTrustAllTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/X509TrustManager;)V
    .locals 1

    const-string v0, ":"

    .line 41
    invoke-static {p2, p1, v0}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    new-instance p1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {p1, p3}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;)V
    .locals 1

    const-string v0, ":"

    invoke-static {p2, p1, v0}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    return-void

    :cond_0
    const-string p0, "No socket factory creator."

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    const-string v0, ":"

    .line 44
    invoke-static {p2, p1, v0}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;-><init>(Ljava/lang/String;[Ljavax/net/ssl/X509TrustManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    new-instance p1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    return-void

    :cond_0
    const-string p0, "No socket factory creator."

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/ESTServiceBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/jcajce/JsseDefaultHostnameAuthorizer;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    new-instance p1, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;-><init>([Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-void
.end method


# virtual methods
.method public addCipherSuites(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCipherSuites([Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/est/ESTService;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;-><init>(Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;)V

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->build()Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    if-nez v0, :cond_2

    new-instance v1, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;

    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iget-object v3, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    iget v4, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iget-object v6, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->supportedSuites:Ljava/util/Set;

    iget-object v7, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->absoluteLimit:Ljava/lang/Long;

    iget-boolean v8, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/est/jcajce/DefaultESTHttpClientProvider;-><init>(Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V

    iput-object v1, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    :cond_2
    invoke-super {p0}, Lorg/bouncycastle/est/ESTServiceBuilder;->build()Lorg/bouncycastle/est/ESTService;

    move-result-object p0

    return-object p0
.end method

.method public withChannelBindingProvider(Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    return-object p0
.end method

.method public bridge synthetic withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/ESTServiceBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;

    move-result-object p0

    return-object p0
.end method

.method public withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0

    .line 5
    iput-object p1, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    return-object p0
.end method

.method public withFilterCipherSuites(Z)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->filterCipherSuites:Z

    return-object p0
.end method

.method public withHostNameAuthorizer(Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    return-object p0
.end method

.method public withKeyManager(Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withKeyManager(Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-object p0

    :cond_0
    const-string p0, "Socket Factory Creator was defined in the constructor."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withKeyManagers([Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withKeyManagers([Ljavax/net/ssl/KeyManager;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-object p0

    :cond_0
    const-string p0, "Socket Factory Creator was defined in the constructor."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withProvider(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withProvider(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-object p0

    :cond_0
    const-string p0, "Socket Factory Creator was defined in the constructor."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withProvider(Ljava/security/Provider;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withProvider(Ljava/security/Provider;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-object p0

    :cond_0
    const-string p0, "Socket Factory Creator was defined in the constructor."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withReadLimit(J)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->absoluteLimit:Ljava/lang/Long;

    return-object p0
.end method

.method public withSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-object p0

    :cond_0
    const-string p0, "Socket Factory Creator was defined in the constructor."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withTLSVersion(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->socketFactoryCreator:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->sslSocketFactoryCreatorBuilder:Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;->withTLSVersion(Ljava/lang/String;)Lorg/bouncycastle/est/jcajce/SSLSocketFactoryCreatorBuilder;

    return-object p0

    :cond_0
    const-string p0, "Socket Factory Creator was defined in the constructor."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withTimeout(I)Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->timeoutMillis:I

    return-object p0
.end method

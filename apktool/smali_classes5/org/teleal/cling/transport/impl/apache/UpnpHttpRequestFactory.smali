.class public Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;
.super Lorg/apache/http/impl/DefaultHttpRequestFactory;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SUBSCRIBE"

    const-string v1, "UNSUBSCRIBE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->a:[Ljava/lang/String;

    const-string v0, "NOTIFY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;
    .locals 4

    sget-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public final newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p0, v0, p1}, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    const-string p0, "Request line may not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

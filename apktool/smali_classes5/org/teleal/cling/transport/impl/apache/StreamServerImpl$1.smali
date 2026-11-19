.class Lorg/teleal/cling/transport/impl/apache/StreamServerImpl$1;
.super Lorg/apache/http/impl/DefaultHttpServerConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final createHttpRequestFactory()Lorg/apache/http/HttpRequestFactory;
    .locals 0

    new-instance p0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;

    invoke-direct {p0}, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;-><init>()V

    return-object p0
.end method

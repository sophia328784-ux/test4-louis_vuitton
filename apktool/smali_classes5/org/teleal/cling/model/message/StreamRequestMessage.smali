.class public Lorg/teleal/cling/model/message/StreamRequestMessage;
.super Lorg/teleal/cling/model/message/UpnpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/UpnpMessage<",
        "Lorg/teleal/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpMessage;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 1

    .line 12
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;[B)V
    .locals 1

    .line 18
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 1

    .line 13
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    .line 16
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;[B)V
    .locals 1

    .line 19
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, p1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;[B)V
    .locals 1

    .line 17
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast p0, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;

    return-object p0
.end method

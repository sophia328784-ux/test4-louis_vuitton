.class public Lorg/teleal/cling/model/message/UpnpRequest;
.super Lorg/teleal/cling/model/message/UpnpOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/message/UpnpRequest$Method;
    }
.end annotation


# instance fields
.field public final b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public final c:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 23
    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Llc0;->u(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

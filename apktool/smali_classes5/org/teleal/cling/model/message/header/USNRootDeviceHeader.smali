.class public Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader<",
        "Lorg/teleal/cling/model/types/UDN;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;)V
    .locals 0

    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "::upnp:rootdevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "uuid:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "::upnp:rootdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/teleal/cling/model/types/UDN;

    const/16 v1, 0x11

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/types/UDN;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "Invalid root device USN header value, must start with \'uuid:\' and end with \'::upnp:rootdevice\' but is \'"

    const-string v0, "\'"

    invoke-static {p0, p1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv40;->m(Ljava/lang/String;)V

    return-void
.end method

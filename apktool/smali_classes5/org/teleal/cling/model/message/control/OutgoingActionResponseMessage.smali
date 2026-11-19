.class public Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
.super Lorg/teleal/cling/model/message/StreamResponseMessage;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionResponseMessage;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    if-eqz p2, :cond_1

    instance-of p1, p2, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    if-eqz p1, :cond_0

    const-string p1, "urn:schemas-upnp-org:control-1-0"

    iput-object p1, p0, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/ServiceType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->f:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->d:Lorg/teleal/common/util/MimeType;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance p2, Lorg/teleal/cling/model/message/header/EXTHeader;

    invoke-direct {p2}, Lorg/teleal/cling/model/message/header/EXTHeader;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;)V
    .locals 1

    .line 69
    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->f:Ljava/lang/String;

    return-object p0
.end method

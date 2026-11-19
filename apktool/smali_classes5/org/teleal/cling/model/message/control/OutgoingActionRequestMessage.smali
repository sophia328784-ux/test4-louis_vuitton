.class public Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionRequestMessage;


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 2

    .line 109
    iget-object p1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    .line 110
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpRequest;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpRequest;)V
    .locals 4

    invoke-direct {p0, p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest;)V

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->d:Lorg/teleal/common/util/MimeType;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-virtual {p2, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    instance-of p2, p1, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object p1, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->g:Ljava/util/logging/Logger;

    const-string p2, "Adding magic control SOAP action header for state variable query action"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p1, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    new-instance p2, Lorg/teleal/cling/model/types/SoapActionType;

    const-string v1, "schemas-upnp-org"

    const-string v2, "control-1-0"

    const-string v3, "QueryStateVariable"

    invoke-direct {p2, v1, v2, v0, v3}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/model/message/header/SoapActionHeader;-><init>(Lorg/teleal/cling/model/types/SoapActionType;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    new-instance v1, Lorg/teleal/cling/model/types/SoapActionType;

    iget-object v2, p1, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Lorg/teleal/cling/model/types/ServiceType;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;-><init>(Lorg/teleal/cling/model/types/SoapActionType;)V

    move-object p1, p2

    :goto_0
    iget-object p2, p1, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p2, Lorg/teleal/cling/model/types/SoapActionType;

    invoke-virtual {p2}, Lorg/teleal/cling/model/types/SoapActionType;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->f:Ljava/lang/String;

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast p2, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object p2, p2, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast p0, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string p1, "Can\'t send action with request method: "

    invoke-static {p0, p1}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->f:Ljava/lang/String;

    return-object p0
.end method

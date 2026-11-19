.class public Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionRequestMessage;


# instance fields
.field public final f:Lorg/teleal/cling/model/meta/Action;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    iget-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v1, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    invoke-virtual {p1, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object p1

    check-cast p1, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p1, Lorg/teleal/cling/model/types/SoapActionType;

    iget-object v0, p1, Lorg/teleal/cling/model/types/SoapActionType;->c:Ljava/lang/String;

    iget-object v1, p1, Lorg/teleal/cling/model/types/SoapActionType;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->f:Lorg/teleal/cling/model/meta/Action;

    if-eqz v0, :cond_3

    const-string v0, "QueryStateVariable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    iget-object v0, p1, Lorg/teleal/cling/model/types/SoapActionType;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/teleal/cling/model/types/ServiceType;

    iget-object v2, p1, Lorg/teleal/cling/model/types/SoapActionType;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/cling/model/types/SoapActionType;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lorg/teleal/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lorg/teleal/cling/model/types/ServiceType;->a(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/teleal/cling/model/action/ActionException;

    sget-object p1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    const-string p2, "Service doesn\'t support the requested service version"

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/teleal/cling/model/types/SoapActionType;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->g:Ljava/lang/String;

    return-void

    :cond_3
    new-instance p0, Lorg/teleal/cling/model/action/ActionException;

    sget-object p1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Service doesn\'t implement action: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/teleal/cling/model/action/ActionException;

    sget-object p1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    const-string p2, "Missing SOAP action header"

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->g:Ljava/lang/String;

    return-object p0
.end method

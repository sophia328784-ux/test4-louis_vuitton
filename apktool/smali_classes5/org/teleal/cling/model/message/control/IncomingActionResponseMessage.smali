.class public Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
.super Lorg/teleal/cling/model/message/StreamResponseMessage;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionResponseMessage;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

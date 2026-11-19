.class public Lorg/teleal/cling/model/message/IncomingDatagramMessage;
.super Lorg/teleal/cling/model/message/UpnpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/teleal/cling/model/message/UpnpOperation;",
        ">",
        "Lorg/teleal/cling/model/message/UpnpMessage<",
        "TO;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpMessage;)V

    iget-object p1, p1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->f:Ljava/net/InetAddress;

    iput-object p1, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->f:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/net/InetAddress;",
            "I",
            "Ljava/net/InetAddress;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 9
    iput-object p4, p0, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->f:Ljava/net/InetAddress;

    return-void
.end method

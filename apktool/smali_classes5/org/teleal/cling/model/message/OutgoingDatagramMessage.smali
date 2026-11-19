.class public abstract Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
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

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    iput-object p2, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->f:Ljava/net/InetAddress;

    iput p3, p0, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->g:I

    return-void
.end method

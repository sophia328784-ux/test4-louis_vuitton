.class public abstract Lorg/teleal/cling/protocol/SendingAsync;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/protocol/SendingAsync;->upnpService:Lorg/teleal/cling/UpnpService;

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/protocol/SendingAsync;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object p0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->execute()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

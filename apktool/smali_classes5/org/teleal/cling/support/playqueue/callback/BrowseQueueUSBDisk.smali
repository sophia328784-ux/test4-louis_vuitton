.class public abstract Lorg/teleal/cling/support/playqueue/callback/BrowseQueueUSBDisk;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SourceFile"


# instance fields
.field QueueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 1

    .line 28
    const-string v0, "USBDiskQueue"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/playqueue/callback/BrowseQueueUSBDisk;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "BrowseQueue"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/playqueue/callback/BrowseQueueUSBDisk;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "QueueName"

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/teleal/cling/support/playqueue/callback/BrowseQueueUSBDisk;->QueueName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract received(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/playqueue/callback/BrowseQueueUSBDisk;->QueueName:Ljava/lang/String;

    const-string v1, "QueueContext"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/action/ActionInvocation;->a(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v1

    iget-object v1, v1, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/support/playqueue/callback/BrowseQueueUSBDisk;->received(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

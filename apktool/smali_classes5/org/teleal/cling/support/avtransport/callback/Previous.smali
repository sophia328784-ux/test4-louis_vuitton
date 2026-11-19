.class public Lorg/teleal/cling/support/avtransport/callback/Previous;
.super Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 3

    .line 25
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/avtransport/callback/Previous;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "Previous"

    invoke-virtual {p2, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    const-string p2, "InstanceID"

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    return-void
.end method

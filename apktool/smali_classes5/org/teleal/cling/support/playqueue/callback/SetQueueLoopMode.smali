.class public abstract Lorg/teleal/cling/support/playqueue/callback/SetQueueLoopMode;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 3

    .line 25
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/playqueue/callback/SetQueueLoopMode;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "SetQueueLoopMode"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    const-string p1, "LoopMode"

    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

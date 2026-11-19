.class public Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 3

    .line 55
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;II)V
    .locals 6

    .line 57
    new-instance v1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 56
    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;II)V
    .locals 2

    new-instance p1, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v0, "AppendTracksInQueueEx"

    invoke-virtual {p2, v0}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "QueueContext"

    invoke-virtual {p1, p3, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    new-instance p2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v0, p5

    invoke-direct {p2, v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string p3, "Direction"

    invoke-virtual {p1, p2, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    new-instance p1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long p2, p4

    invoke-direct {p1, p2, p3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string p2, "StartIndex"

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

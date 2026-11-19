.class public abstract Lorg/teleal/cling/support/playqueue/callback/GetUserInfoTask;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 2

    .line 38
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetUserInfo"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/playqueue/callback/GetUserInfoTask;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 39
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    const-string p1, "AccountSource"

    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetUserInfo"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/playqueue/callback/GetUserInfoTask;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "AccountSource"

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    const-string p1, "Version"

    invoke-virtual {p0, p3, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetUserInfo"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/playqueue/callback/GetUserInfoTask;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "AccountSource"

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    const-string p1, "RefreshToken"

    const-string p2, "1"

    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

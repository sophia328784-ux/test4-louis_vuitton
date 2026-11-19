.class public Lnet/rtccloud/sdk/AcdModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/AcdModule$Native;,
        Lnet/rtccloud/sdk/AcdModule$Request;,
        Lnet/rtccloud/sdk/AcdModule$AcdUser;,
        Lnet/rtccloud/sdk/AcdModule$AcdWaiting;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

.field private ongoingAcdUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/rtccloud/sdk/AcdModule$AcdUser;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingAcdWaitingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/rtccloud/sdk/AcdModule$AcdWaiting;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lnet/rtccloud/sdk/AcdModule$Request;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->ACD:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/AcdModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/AcdModule$Native;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdUserList:Ljava/util/List;

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdWaitingList:Ljava/util/List;

    iput-object p1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    return-void
.end method


# virtual methods
.method public acceptRequest(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/AcdModule$Native;->acceptRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cancel()Z
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/AcdModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "cancel()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lnet/rtccloud/sdk/AcdModule$Request;->a(Lnet/rtccloud/sdk/AcdModule$Request;)V

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/AcdModule$Native;->cancel()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/rtccloud/sdk/AcdModule$Request;->a(Lnet/rtccloud/sdk/AcdModule$Request;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    :cond_0
    return-void
.end method

.method public declineRequest(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/AcdModule$Native;->declineRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public get()Lnet/rtccloud/sdk/AcdModule$Request;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    return-object p0
.end method

.method public getSingleUser(JJ)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/AcdModule$Native;->getSingleUser(JJ)Z

    move-result p0

    return p0
.end method

.method public getUserList(JJ)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/AcdModule$Native;->getUserList(JJ)Z

    move-result p0

    return p0
.end method

.method public getWaitingList()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/AcdModule$Native;->getWaitingList()Z

    move-result p0

    return p0
.end method

.method public handleAcdCanceled(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"evt\":\"acdcanceled\",\"uid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public handleAcdRequested(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"evt\":\"acdrequested\",\"uid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public handleQueue(II)V
    .locals 4

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    const-string v1, ",\"len\":"

    const-string v2, "}"

    const-string v3, "{\"evt\":\"acdqueue\",\"position\":"

    invoke-static {p1, p2, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    if-nez v0, :cond_0

    new-instance v0, Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-direct {v0}, Lnet/rtccloud/sdk/AcdModule$Request;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/AcdModule$Request;->b(Lnet/rtccloud/sdk/AcdModule$Request;I)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/AcdModule$Request;->c(Lnet/rtccloud/sdk/AcdModule$Request;I)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    new-instance p2, Lnet/rtccloud/sdk/event/acd/AcdQueueEvent;

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-direct {p2, p0}, Lnet/rtccloud/sdk/event/acd/AcdQueueEvent;-><init>(Lnet/rtccloud/sdk/AcdModule$Request;)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public handleReady(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    if-nez v0, :cond_0

    new-instance v0, Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-direct {v0}, Lnet/rtccloud/sdk/AcdModule$Request;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-static {v0}, Lnet/rtccloud/sdk/AcdModule$Request;->d(Lnet/rtccloud/sdk/AcdModule$Request;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/AcdModule$Request;->e(Lnet/rtccloud/sdk/AcdModule$Request;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    new-instance v0, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;-><init>(Lnet/rtccloud/sdk/AcdModule$Request;)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUserList(IILjava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdUserList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdUserList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdUserList:Ljava/util/List;

    new-instance v1, Lnet/rtccloud/sdk/AcdModule$AcdUser;

    invoke-direct {v1, p0, p3, p4, p5}, Lnet/rtccloud/sdk/AcdModule$AcdUser;-><init>(Lnet/rtccloud/sdk/AcdModule;Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdUserList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/rtccloud/sdk/AcdModule$AcdUser;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, ","

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p3}, Lnet/rtccloud/sdk/AcdModule$AcdUser;->jsonString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "{\"evt\":\"acduserlist\",\"agents\":["

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]}"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdUserList:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public handleWaitingList(IILjava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdWaitingList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdWaitingList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdWaitingList:Ljava/util/List;

    new-instance v1, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v1 .. v7}, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;-><init>(Lnet/rtccloud/sdk/AcdModule;Ljava/lang/String;JJ)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v2, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdWaitingList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, ","

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Lnet/rtccloud/sdk/AcdModule$AcdWaiting;->jsonString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p1, v2, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "{\"evt\":\"acdwaitinglist\",\"waiting\":["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]}"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-object p0, v2, Lnet/rtccloud/sdk/AcdModule;->ongoingAcdWaitingList:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public request(JJ)Z
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/AcdModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "request(mask=%d, value=%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/AcdModule;->clear()V

    new-instance v0, Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-direct {v0}, Lnet/rtccloud/sdk/AcdModule$Request;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/AcdModule;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/AcdModule$Native;->request(JJ)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public setPresence(J)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1, p2}, Lnet/rtccloud/sdk/AcdModule$Native;->setPresence(J)Z

    move-result p0

    return p0
.end method

.method public setPriority(J)Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AcdModule;->nativeInterface:Lnet/rtccloud/sdk/AcdModule$Native;

    invoke-interface {p0, p1, p2}, Lnet/rtccloud/sdk/AcdModule$Native;->setPriority(J)Z

    move-result p0

    return p0
.end method

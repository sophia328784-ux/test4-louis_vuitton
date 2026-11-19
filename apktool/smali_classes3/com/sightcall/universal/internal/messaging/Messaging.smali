.class public final Lcom/sightcall/universal/internal/messaging/Messaging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/rtccloud/sdk/Call;",
            "Lcom/sightcall/universal/internal/messaging/Messaging;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/messaging/Message;",
            ">;"
        }
    .end annotation
.end field

.field private pendingMessage:Ljava/lang/String;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/messaging/Messaging;->cache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->messages:Ljava/util/List;

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-void
.end method

.method public static findCurrentUserId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    instance-of v1, v0, Lnet/rtccloud/sdk/User$Internal;

    const-string v2, "uid"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->extras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lnet/rtccloud/sdk/User$External;

    const-string v3, "_"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lnet/rtccloud/sdk/User$External;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$External;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$External;->suffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, v0, Lnet/rtccloud/sdk/User$SixDigits;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lnet/rtccloud/sdk/User$SixDigits;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$SixDigits;->pin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$SixDigits;->suffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->extras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized from(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/messaging/Messaging;
    .locals 3

    const-class v0, Lcom/sightcall/universal/internal/messaging/Messaging;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/messaging/Messaging;-><init>(Lnet/rtccloud/sdk/Rtcc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/sightcall/universal/internal/messaging/Messaging;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/universal/internal/messaging/Messaging;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_2
    new-instance v2, Lcom/sightcall/universal/internal/messaging/Messaging;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/messaging/Messaging;-><init>(Lnet/rtccloud/sdk/Rtcc;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/internal/messaging/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->messages:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPendingMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->pendingMessage:Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->messages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onMessageReceived(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/model/Session;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->messages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onMessageReceived(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public send(Ljava/lang/String;Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/internal/messaging/Message$Outgoing;
    .locals 3

    iget-object v0, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_0

    const-string v0, "guest"

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_1

    const-string v0, "attendee"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sightcall/universal/internal/messaging/Message;->newOutgoingMessage()Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object v1

    iget-object v2, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->build()Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/internal/messaging/Message;->newOutgoingMessage()Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object v1

    iget-object v2, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->uid(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->content(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->role(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message$Builder$Outgoing;->build()Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->toJson(Lcom/sightcall/universal/internal/messaging/Message$Outgoing;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->MESSAGING:Lcom/sightcall/common/DataChannelAction;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;->success(Z)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onMessageSent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/messaging/Message$Outgoing;)V

    return-object p1
.end method

.method public setPending(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/Messaging;->pendingMessage:Ljava/lang/String;

    return-void
.end method

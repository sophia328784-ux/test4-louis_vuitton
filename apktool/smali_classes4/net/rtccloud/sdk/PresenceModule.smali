.class public Lnet/rtccloud/sdk/PresenceModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/PresenceModule$Native;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final nativePresenceModule:Lnet/rtccloud/sdk/PresenceModule$Native;

.field private final pendingBulk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingRoster:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->PRESENCE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/PresenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/PresenceModule$Native;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/PresenceModule;->pendingBulk:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/PresenceModule;->pendingRoster:Ljava/util/Map;

    iput-object p1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/PresenceModule;->nativePresenceModule:Lnet/rtccloud/sdk/PresenceModule$Native;

    return-void
.end method


# virtual methods
.method public declared-synchronized handlePresence(IIILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    if-lez p3, :cond_1

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/PresenceModule;->pendingRoster:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/PresenceModule;->pendingBulk:Ljava/util/Map;

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p2, Lnet/rtccloud/sdk/event/presence/PresenceRequestEvent;

    invoke-direct {p2, v0, p5}, Lnet/rtccloud/sdk/event/presence/PresenceRequestEvent;-><init>(Ljava/util/Map;Z)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p3, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;

    invoke-direct {p3, p4, p2}, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p3}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleRoster(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/presence/RosterEvent;

    invoke-direct {v1, p1, p2}, Lnet/rtccloud/sdk/event/presence/RosterEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs request([Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/PresenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "request(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->isVarargsNullOrEmpty([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, v0}, Lnet/rtccloud/sdk/internal/util/Utils;->consolidateUidInput([Ljava/lang/String;Lnet/rtccloud/sdk/util/OldLogger;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/PresenceModule;->nativePresenceModule:Lnet/rtccloud/sdk/PresenceModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/PresenceModule$Native;->request([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    const-string p0, "[uids] must contain at least one valid uid"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "[uids] must not be null nor empty"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public requestAll()Z
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/PresenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "requestAll()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/PresenceModule;->nativePresenceModule:Lnet/rtccloud/sdk/PresenceModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/PresenceModule$Native;->requestAll()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public set(I)Z
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/PresenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "set(%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v1, 0xff

    if-gt p1, v1, :cond_3

    if-ltz p1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/PresenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/PresenceModule;->nativePresenceModule:Lnet/rtccloud/sdk/PresenceModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/PresenceModule$Native;->set(I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[value] must be in range [0 - 255] but is ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

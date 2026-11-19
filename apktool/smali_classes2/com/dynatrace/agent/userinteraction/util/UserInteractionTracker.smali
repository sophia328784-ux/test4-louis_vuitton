.class public final Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;",
        "",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/useraction/UserActionController;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Lcom/dynatrace/agent/useraction/UserActionController;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->a:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->c:Lcom/dynatrace/agent/useraction/UserActionController;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;JJZ)V
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->a:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v0

    iget-boolean v1, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez v1, :cond_0

    const-string p0, "User Interaction cannot be tracked, isGrailEventsCanBeCaptured == false"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    if-nez v1, :cond_1

    const-string p0, "User Interaction cannot be tracked, session is disabled"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-eqz v0, :cond_6

    const-string v0, "start_time"

    invoke-virtual {p1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->c:Lcom/dynatrace/agent/useraction/UserActionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/dynatrace/agent/useraction/UserActionController;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {p2}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object p2

    iget-boolean p3, p2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-nez p3, :cond_2

    const-string p0, "onUserInteractionEnd skipped: DataCollectionLevel is OFF"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/dynatrace/agent/useraction/UserActionController;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {p3}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p3

    iget-boolean p3, p3, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    if-nez p3, :cond_3

    const-string p3, "onUserInteractionEnd: uaEnable=false, UA creation skipped"

    invoke-static {p3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p6}, Lcom/dynatrace/agent/useraction/UserActionController;->b(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Z)V

    return-void

    :cond_3
    iget-boolean p3, p0, Lcom/dynatrace/agent/useraction/UserActionController;->h:Z

    if-nez p3, :cond_4

    const-string p3, "onUserInteractionEnd: automaticDetectionEnabled=false, UA creation skipped"

    invoke-static {p3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p4, p0, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-virtual {p4, p1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->j(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0, p1, p2, p6}, Lcom/dynatrace/agent/useraction/UserActionController;->b(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_4
    const-string p3, "ui_element.responder.detected_name"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "onUserInteractionEnd: UIA has no responder, UA creation skipped"

    invoke-static {p3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p6}, Lcom/dynatrace/agent/useraction/UserActionController;->b(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Z)V

    return-void

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onUserInteractionEnd: UIA ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "interaction.type"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") accepted; uaStartTime="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", suppressedUia="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->e(Lorg/json/JSONObject;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_6
    const-string p0, "User Interaction event shouldn\'t be collected, because of data collection is disabled"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void
.end method

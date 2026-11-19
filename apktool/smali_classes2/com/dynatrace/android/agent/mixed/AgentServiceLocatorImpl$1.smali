.class Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 2

    sget-object p0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/dynatrace/android/agent/CommunicationManager;->c(Lcom/dynatrace/android/agent/data/Session;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    iget-boolean p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-eqz p1, :cond_0

    const-string p1, "config received from OneAgent, notify connection state: connected == true, restartTimer == false"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    return-void
.end method

.method public final b(Lcom/dynatrace/agent/communication/api/AgentState;)V
    .locals 2

    sget-object p0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->h:Lcom/dynatrace/agent/communication/api/AgentState;

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    instance-of v1, p1, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/CommunicationManager;->f(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applied AgentState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mUemActive: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void
.end method

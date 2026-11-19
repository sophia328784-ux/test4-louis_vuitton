.class public Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOMAIN:Ljava/lang/String; = "org.squirrelframework"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[:\",=*?]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljavax/management/ObjectName;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public createObjectName(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljavax/management/ObjectName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)",
            "Ljavax/management/ObjectName;"
        }
    .end annotation

    new-instance p0, Ljava/util/Hashtable;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance p1, Ljavax/management/ObjectName;

    const-string v0, "org.squirrelframework"

    invoke-direct {p1, v0, p0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStateMachineStart(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnStateMachineStart;
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;

    invoke-direct {v0, p1}, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;->createObjectName(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljavax/management/ObjectName;

    move-result-object p0

    invoke-interface {v1, p0}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-interface {v1, v0, p0}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onStateMachineTerminate(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnStateMachineTerminate;
    .end annotation

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;->createObjectName(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljavax/management/ObjectName;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public register(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->isRemoteMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->addDeclarativeListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

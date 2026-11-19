.class public Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagementMBean;


# instance fields
.field private averageTranstionConsumedTime:F

.field private fsmLogger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

.field private perfStatDetails:Ljava/lang/String;

.field private performanceMonitor:Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

.field private stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;"
        }
    .end annotation
.end field

.field private totalTransitionDeclinedTimes:J

.field private totalTransitionFailedTimes:J

.field private totalTransitionInvokedTimes:J


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionInvokedTimes:J

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionFailedTimes:J

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionDeclinedTimes:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->averageTranstionConsumedTime:F

    const-string v0, "[Empty]"

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->perfStatDetails:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    return-void
.end method


# virtual methods
.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->INSTANCE:Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object v0

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    check-cast p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->untypedFire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAverageTranstionConsumedTime()F
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->averageTranstionConsumedTime:F

    return p0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "[NULL]"

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "[NoException]"

    return-object p0
.end method

.method public getPerfStatDetails()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->perfStatDetails:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalTransitionDeclinedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionDeclinedTimes:J

    return-wide v0
.end method

.method public getTotalTransitionFailedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionFailedTimes:J

    return-wide v0
.end method

.method public getTotalTransitionInvokedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionInvokedTimes:J

    return-wide v0
.end method

.method public toggleLogging()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->fsmLogger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    if-nez v0, :cond_0

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-direct {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->fsmLogger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;->startLogging()V

    const-string p0, "Logging Started"

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;->stopLogging()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->fsmLogger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    const-string p0, "Logging Ended"

    return-object p0
.end method

.method public togglePerfMon()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->performanceMonitor:Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

    if-nez v0, :cond_1

    const-string v0, "[Empty]"

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->perfStatDetails:Ljava/lang/String;

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Performance-of-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->performanceMonitor:Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v1, v0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->addDeclarativeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->performanceMonitor:Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-virtual {v0, p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->onStateMachineStart(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    :cond_0
    const-string p0, "Performance Monitor Start"

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getPerfModel()Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->getTotalTransitionInvokedTimes()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionInvokedTimes:J

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->getTotalTransitionDeclinedTimes()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionDeclinedTimes:J

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->getTotalTransitionFailedTimes()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->totalTransitionFailedTimes:J

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->getAverageTranstionConsumedTime()F

    move-result v1

    iput v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->averageTranstionConsumedTime:F

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->perfStatDetails:Ljava/lang/String;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->performanceMonitor:Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->removeDeclarativeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagement;->performanceMonitor:Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;

    const-string p0, "Performance Monitor End"

    return-object p0
.end method

.class public interface abstract Lorg/squirrelframework/foundation/fsm/jmx/StateMachineManagementMBean;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fireEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAverageTranstionConsumedTime()F
.end method

.method public abstract getCurrentState()Ljava/lang/String;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getLastErrorMessage()Ljava/lang/String;
.end method

.method public abstract getPerfStatDetails()Ljava/lang/String;
.end method

.method public abstract getTotalTransitionDeclinedTimes()J
.end method

.method public abstract getTotalTransitionFailedTimes()J
.end method

.method public abstract getTotalTransitionInvokedTimes()J
.end method

.method public abstract toggleLogging()Ljava/lang/String;
.end method

.method public abstract togglePerfMon()Ljava/lang/String;
.end method

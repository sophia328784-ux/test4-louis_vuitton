.class public Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelSingleton;


# static fields
.field private static instance:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;


# instance fields
.field private idProvider:Lorg/squirrelframework/foundation/component/IdProvider;

.field private isAutoStartEnabled:Z

.field private isAutoTerminateEnabled:Z

.field private isDataIsolateEnabled:Z

.field private isDebugModeEnabled:Z

.field private isDelegatorModeEnabled:Z

.field private isRemoteMonitorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->create()Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->instance:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoStartEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoTerminateEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDataIsolateEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDebugModeEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDelegatorModeEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isRemoteMonitorEnabled:Z

    invoke-static {}, Lorg/squirrelframework/foundation/component/IdProvider$Default;->getInstance()Lorg/squirrelframework/foundation/component/IdProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->idProvider:Lorg/squirrelframework/foundation/component/IdProvider;

    return-void
.end method

.method public static create()Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->instance:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    return-object v0
.end method

.method public static setInstance(Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;)V
    .locals 0

    sput-object p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->instance:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    return-void
.end method


# virtual methods
.method public enableAutoStart(Z)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoStartEnabled:Z

    return-object p0
.end method

.method public enableAutoTerminate(Z)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoTerminateEnabled:Z

    return-object p0
.end method

.method public enableDataIsolate(Z)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDataIsolateEnabled:Z

    return-object p0
.end method

.method public enableDebugMode(Z)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDebugModeEnabled:Z

    return-object p0
.end method

.method public enableDelegatorMode(Z)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDelegatorModeEnabled:Z

    return-object p0
.end method

.method public enableRemoteMonitor(Z)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isRemoteMonitorEnabled:Z

    return-object p0
.end method

.method public getIdProvider()Lorg/squirrelframework/foundation/component/IdProvider;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->idProvider:Lorg/squirrelframework/foundation/component/IdProvider;

    return-object p0
.end method

.method public isAutoStartEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoStartEnabled:Z

    return p0
.end method

.method public isAutoTerminateEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoTerminateEnabled:Z

    return p0
.end method

.method public isDataIsolateEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDataIsolateEnabled:Z

    return p0
.end method

.method public isDebugModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDebugModeEnabled:Z

    return p0
.end method

.method public isDelegatorModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDelegatorModeEnabled:Z

    return p0
.end method

.method public isRemoteMonitorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isRemoteMonitorEnabled:Z

    return p0
.end method

.method public setIdProvider(Lorg/squirrelframework/foundation/component/IdProvider;)Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->idProvider:Lorg/squirrelframework/foundation/component/IdProvider;

    return-object p0
.end method

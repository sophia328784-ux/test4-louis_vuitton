.class public Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;,
        Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareTransitionFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/squirrelframework/foundation/fsm/StateMachine<",
        "TT;TS;TE;TC;>;S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final contextClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation
.end field

.field private defaultConfiguration:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

.field private final deferBoundActionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private final eventClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private final extraParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private finishEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private isScanAnnotations:Z

.field private managementService:Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;

.field private final methodCallParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final postConstructMethod:Ljava/lang/reflect/Method;

.field private prepared:Z

.field private final scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

.field private startEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private stateAliasToDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stateClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final stateMachineImplClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private terminateEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-static {v0}, Lorg/squirrelframework/foundation/util/DuplicateChecker;->checkDuplicate(Ljava/lang/Class;)V

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TC;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prepared:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isScanAnnotations:Z

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->getInstance()Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    move-result-object v3

    iput-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defaultConfiguration:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isInstantiableType(Ljava/lang/Class;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The state machine class \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" cannot be instantiated."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isStateMachineType(Ljava/lang/Class;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The implementation class of state machine \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" must be extended from AbstractStateMachine.class."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-array p5, v0, [Ljava/lang/Class;

    :goto_0
    iput-object p5, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->extraParamTypes:[Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/annotation/StateMachineParameters;

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->findAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/squirrelframework/foundation/fsm/annotation/StateMachineParameters;

    const-class v4, Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/annotation/StateMachineParameters;->stateType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateClazz:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateClazz:Ljava/lang/Class;

    :goto_1
    if-ne p3, v4, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/annotation/StateMachineParameters;->eventType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventClazz:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventClazz:Ljava/lang/Class;

    :goto_2
    if-ne p4, v4, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/annotation/StateMachineParameters;->contextType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->contextClazz:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->contextClazz:Ljava/lang/Class;

    :goto_3
    sget-object p2, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->INSTANCE:Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateClazz:Ljava/lang/Class;

    invoke-interface {p2, p3}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object p3

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventClazz:Ljava/lang/Class;

    invoke-interface {p2, p3}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object p2

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object p2

    const-class p3, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    invoke-virtual {p2, p3}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    const-class p2, Lorg/squirrelframework/foundation/fsm/annotation/ContextInsensitive;

    invoke-direct {p0, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->findAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateClazz:Ljava/lang/Class;

    const/4 p4, 0x2

    const/4 v3, 0x3

    if-eqz p2, :cond_4

    new-array p2, v3, [Ljava/lang/Class;

    aput-object p3, p2, v0

    aput-object p3, p2, v2

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventClazz:Ljava/lang/Class;

    aput-object p3, p2, p4

    goto :goto_4

    :cond_4
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Class;

    aput-object p3, p2, v0

    aput-object p3, p2, v2

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventClazz:Ljava/lang/Class;

    aput-object p3, p2, p4

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->contextClazz:Ljava/lang/Class;

    aput-object p3, p2, v3

    :goto_4
    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->methodCallParamTypes:[Ljava/lang/Class;

    :try_start_0
    invoke-static {p1, p5}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :try_start_1
    new-array p2, v0, [Ljava/lang/Class;

    invoke-static {p1, p2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_5
    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->constructor:Ljava/lang/reflect/Constructor;

    :try_start_2
    const-string p2, "postConstruct"

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->extraParamTypes:[Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->postConstructMethod:Ljava/lang/reflect/Method;

    new-instance p2, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iget-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->methodCallParamTypes:[Ljava/lang/Class;

    invoke-direct {p2, p3, p1, p4}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;-><init>(Lorg/squirrelframework/foundation/fsm/MvelScriptManager;Ljava/lang/Class;[Ljava/lang/Class;)V

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineContextEvent()V

    return-void

    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find matched constructor for \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\'."

    invoke-static {p1, p0, p2}, Ln00;->p(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic access$1000(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Lorg/squirrelframework/foundation/fsm/MvelScriptManager;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/annotation/Transit;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->buildDeclareTransition(Lorg/squirrelframework/foundation/fsm/annotation/Transit;)V

    return-void
.end method

.method public static synthetic access$1200(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/annotation/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->buildDeclareState(Lorg/squirrelframework/foundation/fsm/annotation/State;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->startEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->finishEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->terminateEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->extraParamTypes:[Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->contextClazz:Ljava/lang/Class;

    return-object p0
.end method

.method private addStateEntryExitMethodCallAction(Ljava/lang/String;[Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/MutableState;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->findMethodCallActionInternal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const-string v0, "after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, -0x64

    goto :goto_0

    :cond_1
    const/16 p1, -0xa

    :goto_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p2, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallAction(Ljava/lang/reflect/Method;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    move-result-object p0

    if-eqz p4, :cond_2

    invoke-interface {p3, p0}, Lorg/squirrelframework/foundation/fsm/MutableState;->addEntryAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void

    :cond_2
    invoke-interface {p3, p0}, Lorg/squirrelframework/foundation/fsm/MutableState;->addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    :cond_3
    return-void
.end method

.method private addTransitionMethodCallAction(Ljava/lang/String;[Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/MutableTransition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->findMethodCallActionInternal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, -0xa

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, p2, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallAction(Ljava/lang/reflect/Method;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    :cond_0
    return-void
.end method

.method private buildDeclareState(Lorg/squirrelframework/foundation/fsm/annotation/State;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Do not register state converter"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot convert state of name \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->compositeType()Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableState;->setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->historyType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableState;->setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V

    :cond_2
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableState;->setFinal(Z)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->parent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->parent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->parseStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableState;->setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    invoke-interface {v2, v1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->initialState()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    :cond_3
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->entryCallMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->entryCallMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->onEntry(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/squirrelframework/foundation/fsm/builder/When;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    :cond_4
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->exitCallMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->exitCallMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->onExit(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/builder/When;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    :cond_5
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->rememberStateAlias(Lorg/squirrelframework/foundation/fsm/annotation/State;)V

    return-void
.end method

.method private buildDeclareTransition(Lorg/squirrelframework/foundation/fsm/annotation/Transit;)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "Do not register state converter"

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string v3, "Do not register event converter"

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isDeferBoundAction(Lorg/squirrelframework/foundation/fsm/annotation/Transit;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->buildDeferBoundAction(Lorg/squirrelframework/foundation/fsm/annotation/Transit;)V

    return-void

    :cond_3
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isInstantiableType(Ljava/lang/Class;)Z

    move-result v0

    const-string v3, "Condition \'when\' should be concrete class or static inner class."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->type()Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object v0

    sget-object v3, Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne v0, v3, :cond_5

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->from()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->to()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    const-string v3, "Internal transition must transit to the same source state."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->from()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->parseStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cannot convert state of name \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\"."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->to()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->parseStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->on()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Cannot convert event of name \""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getAllTransitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->priority()I

    move-result v8

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->type()Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Class;Lorg/squirrelframework/foundation/fsm/TransitionType;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v4, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->callMethod()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object p0

    invoke-interface {v4, p0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void

    :cond_7
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->type()Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object v0

    sget-object v3, Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->priority()I

    move-result v3

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newInternalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;->within(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;

    move-result-object v0

    goto :goto_6

    :cond_8
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->type()Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object v0

    sget-object v3, Lorg/squirrelframework/foundation/fsm/TransitionType;->LOCAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    if-ne v0, v3, :cond_9

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->priority()I

    move-result v0

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v4, v0, v3}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newLocalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->priority()I

    move-result v0

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v4, v0, v3}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newExternalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    move-result-object v0

    :goto_4
    invoke-interface {v0, v5}, Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;->from(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/From;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->isTargetFinal()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v3, v6}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v3

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v0, v6}, Lorg/squirrelframework/foundation/fsm/builder/From;->to(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;

    move-result-object v0

    goto :goto_6

    :cond_b
    :goto_5
    invoke-interface {v0, v6}, Lorg/squirrelframework/foundation/fsm/builder/From;->toFinal(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;

    move-result-object v0

    :goto_6
    invoke-interface {v0, v7}, Lorg/squirrelframework/foundation/fsm/builder/To;->on(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/squirrelframework/foundation/fsm/Conditions$Always;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_c

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/squirrelframework/foundation/fsm/Condition;

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->whenMvel()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/apache/commons/lang3/StringUtils;->a:I

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    move v1, v2

    :cond_e
    if-nez v1, :cond_f

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->whenMvel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    invoke-static {v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelCondition(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    sget-object v1, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Instantiate Condition \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/Conditions;->never()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v5

    :cond_f
    :goto_7
    if-eqz v5, :cond_10

    invoke-interface {v0, v5}, Lorg/squirrelframework/foundation/fsm/builder/On;->when(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/builder/When;

    move-result-object v0

    :cond_10
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->callMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->callMethod()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/squirrelframework/foundation/fsm/builder/When;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    :cond_11
    :goto_8
    return-void
.end method

.method private buildDeferBoundAction(Lorg/squirrelframework/foundation/fsm/annotation/Transit;)V
    .locals 5

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->from()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->from()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->parseStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->to()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->to()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->parseStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->on()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->on()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    invoke-direct {v1, v0, v3, v2}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->callMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->callMethod()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->whenMvel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->whenMvel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    invoke-static {v2, v3}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelCondition(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object v0

    :cond_3
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/squirrelframework/foundation/fsm/Conditions$Always;

    if-eq v2, v3, :cond_4

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->when()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-direct {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->setActions(Ljava/util/List;)V

    :cond_5
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkState()V
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prepared:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "The state machine builder has been freezed and cannot be changed anymore."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method private varargs defineChildStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateCompositeType;Lorg/squirrelframework/foundation/fsm/HistoryType;Z[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateCompositeType;",
            "Lorg/squirrelframework/foundation/fsm/HistoryType;",
            "Z[TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableState;->setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V

    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/MutableState;->setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V

    array-length p2, p5

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    aget-object v1, p5, p3

    invoke-static {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v0

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableState;->setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    :cond_0
    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableState;->addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private defineContextEvent()V
    .locals 3

    const-class v0, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;

    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->findAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Do not register event converter"

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;->startEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;->startEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineStartEvent(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;->finishEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;->finishEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineFinishEvent(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;->terminateEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;->terminateEvent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineTerminateEvent(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private findAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->walkThroughStateMachineClass(Lcom/google/common/base/Function;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static findMethodCallActionInternal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-static {p0, v0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->searchMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private getEntryExitStateMethodNames(Lorg/squirrelframework/foundation/fsm/ImmutableState;Z)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "entry"

    goto :goto_0

    :cond_0
    const-string v0, "exit"

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "EntryAny"

    goto :goto_1

    :cond_1
    const-string p2, "ExitAny"

    :goto_1
    const-string v1, "before"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "after"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getManagementService()Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->managementService:Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;

    if-nez v0, :cond_0

    new-instance v0, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->managementService:Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->managementService:Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;

    return-object p0
.end method

.method private getTransitionMethodNames(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getEvent()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object p1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/Condition;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "transitFrom"

    const-string v3, "To"

    const-string v4, "On"

    invoke-static {v2, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "When"

    invoke-static {v5, p0, v6, p1}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string p1, "transitFromAnyTo"

    invoke-static {p1, v1, v4, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "ToAnyOn"

    invoke-static {v2, v0, p1, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v0, v3, v1}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string p1, "on"

    invoke-static {p1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private installDeferBoundAction(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->isFromStateMatch(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getAllTransitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v2

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->isToStateMatch(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getEvent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->isEventStateMatch(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addActions(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private installDeferBoundActions()V
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->installDeferBoundAction(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private installExtensionMethods()V
    .locals 11

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->getEntryExitStateMethodNames(Lorg/squirrelframework/foundation/fsm/ImmutableState;Z)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->methodCallParamTypes:[Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->addStateEntryExitMethodCallAction(Ljava/lang/String;[Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/MutableState;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getAllTransitions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-direct {p0, v4}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->getTransitionMethodNames(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    iget-object v9, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->methodCallParamTypes:[Ljava/lang/Class;

    move-object v10, v4

    check-cast v10, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-direct {p0, v8, v9, v10}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->addTransitionMethodCallAction(Ljava/lang/String;[Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/MutableTransition;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->getEntryExitStateMethodNames(Lorg/squirrelframework/foundation/fsm/ImmutableState;Z)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_3
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->methodCallParamTypes:[Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v1, v3}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->addStateEntryExitMethodCallAction(Ljava/lang/String;[Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/MutableState;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private installFinalStateActions()V
    .locals 3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$4;

    invoke-direct {v2, p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$4;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)V

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableState;->addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isDeferBoundAction(Lorg/squirrelframework/foundation/fsm/annotation/Transit;)Z
    .locals 1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->from()Ljava/lang/String;

    move-result-object p0

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->to()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/Transit;->on()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isInstantiableType(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isStateMachineInterface(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isStateMachineType(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-class p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidState(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private parseStateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p1
.end method

.method private postProcessStateMachine(Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->getCallablePostProcessors(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;->postProcess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private declared-synchronized prepare()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isScanAnnotations:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$1;)V

    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->walkThroughStateMachineClass(Lcom/google/common/base/Function;)V

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareTransitionFunction;

    invoke-direct {v0, p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareTransitionFunction;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$1;)V

    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->walkThroughStateMachineClass(Lcom/google/common/base/Function;)V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->installDeferBoundActions()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->installExtensionMethods()V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prioritizeTransitions()V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->installFinalStateActions()V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->verifyStateMachineDefinition()V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->proxyUntypedStates()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private prioritizeTransitions()V
    .locals 2

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/MutableState;->prioritizeTransitions()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private proxyUntypedStates()V
    .locals 6

    const-class v0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/squirrelframework/foundation/fsm/MutableState;

    const-class v3, Lorg/squirrelframework/foundation/fsm/UntypedMutableState;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Lorg/squirrelframework/foundation/fsm/UntypedImmutableState;

    filled-new-array {v3, v5}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v5, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$3;

    invoke-direct {v5, p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$3;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/MutableState;)V

    invoke-static {v4, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/squirrelframework/foundation/fsm/UntypedMutableState;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v2

    const-class v4, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private rememberStateAlias(Lorg/squirrelframework/foundation/fsm/annotation/State;)V
    .locals 2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->alias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->alias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->alias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot define duplicate state alias \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->alias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" for state \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateAliasToDescription:Ljava/util/Map;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/State;->alias()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "\"."

    invoke-static {p0, p1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static searchMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private verifyStateMachineDefinition()V
    .locals 1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->verify()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private walkThroughStateMachineClass(Lcom/google/common/base/Function;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isStateMachineInterface(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isStateMachineType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$2;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/Action;Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object v0
.end method


# virtual methods
.method public defineFinalState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setFinal(Z)V

    return-object p0
.end method

.method public defineFinishEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->finishEvent:Ljava/lang/Object;

    return-void
.end method

.method public varargs defineLinkedState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;TS;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newLinkedState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableLinkedState;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;

    invoke-direct {v1, p0, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/MutableLinkedState;->setLinkedStateMachineProvider(Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public varargs defineNoInitSequentialStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/HistoryType;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/HistoryType;",
            "[TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    sget-object v2, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->SEQUENTIAL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineChildStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateCompositeType;Lorg/squirrelframework/foundation/fsm/HistoryType;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs defineNoInitSequentialStatesOn(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[TS;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    .line 15
    sget-object v0, Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;

    invoke-virtual {p0, p1, v0, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineNoInitSequentialStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/HistoryType;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs defineParallelStatesOn(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    sget-object v2, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->PARALLEL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    sget-object v3, Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineChildStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateCompositeType;Lorg/squirrelframework/foundation/fsm/HistoryType;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs defineSequentialStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/HistoryType;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/HistoryType;",
            "[TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    sget-object v2, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->SEQUENTIAL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineChildStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateCompositeType;Lorg/squirrelframework/foundation/fsm/HistoryType;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs defineSequentialStatesOn(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[TS;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    .line 15
    sget-object v0, Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;

    invoke-virtual {p0, p1, v0, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineSequentialStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/HistoryType;[Ljava/lang/Object;)V

    return-void
.end method

.method public defineStartEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->startEvent:Ljava/lang/Object;

    return-void
.end method

.method public defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-static {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public defineTerminateEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->terminateEvent:Ljava/lang/Object;

    return-void
.end method

.method public defineTimedState(Ljava/lang/Object;JJLjava/lang/Object;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;JJTE;TC;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newTimedState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTimedState;

    move-result-object v0

    invoke-interface {v0, p7}, Lorg/squirrelframework/foundation/fsm/MutableTimedState;->setAutoFireContext(Ljava/lang/Object;)V

    invoke-interface {v0, p6}, Lorg/squirrelframework/foundation/fsm/MutableTimedState;->setAutoFireEvent(Ljava/lang/Object;)V

    invoke-interface {v0, p2, p3}, Lorg/squirrelframework/foundation/fsm/MutableTimedState;->setInitialDelay(J)V

    invoke-interface {v0, p4, p5}, Lorg/squirrelframework/foundation/fsm/MutableTimedState;->setTimeInterval(J)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public externalTransition()Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->externalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public externalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newExternalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public externalTransitions()Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->transitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public externalTransitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    .line 10
    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->transitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public internalTransition()Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->internalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public internalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newInternalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public localTransition()Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->localTransition(I)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public localTransition(I)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newLocalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public localTransitions()Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->localTransitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public localTransitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/TransitionType;->LOCAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, v1, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMultiTransitionBuilder(Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/TransitionType;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public newStateMachine(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->newStateMachine(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0
.end method

.method public varargs newStateMachine(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prepared:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->prepare()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isValidState(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0, p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachine;
    :try_end_0
    .catch Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v0

    check-cast v2, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;

    invoke-direct {v4, p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;)V

    invoke-virtual {v2, p1, v3, p2, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->prePostConstruct(Ljava/lang/Object;Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->postConstructMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->extraParamTypes:[Ljava/lang/Class;

    array-length v2, v2

    array-length v3, p3

    if-ne v2, v3, :cond_3

    :try_start_1
    invoke-static {p1, v0, p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "Invoke state machine postConstruct method failed."

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->stateMachineImplClazz:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->postProcessStateMachine(Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-virtual {p2}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isRemoteMonitorEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->getManagementService()Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/jmx/ManagementService;->register(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    :cond_4
    return-object v0

    :goto_3
    const-string p1, "New state machine instance failed."

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot find Initial state \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' in state machine."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs newStateMachine(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defaultConfiguration:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    invoke-virtual {p0, p1, v0, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->newStateMachine(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0
.end method

.method public onEntry(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    const/4 v0, 0x1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newEntryExitActionBuilder(Lorg/squirrelframework/foundation/fsm/MutableState;ZLorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public onExit(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newEntryExitActionBuilder(Lorg/squirrelframework/foundation/fsm/MutableState;ZLorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setScanAnnotations(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->isScanAnnotations:Z

    return-void
.end method

.method public setStateMachineConfiguration(Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defaultConfiguration:Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    return-void
.end method

.method public transit()Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newDeferBoundActionBuilder(Ljava/util/List;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public transition()Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->externalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public transition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    .line 10
    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->externalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public transitions()Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->transitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public transitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->checkState()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->states:Ljava/util/Map;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/TransitionType;->EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v0, v1, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMultiTransitionBuilder(Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/TransitionType;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    move-result-object p0

    return-object p0
.end method

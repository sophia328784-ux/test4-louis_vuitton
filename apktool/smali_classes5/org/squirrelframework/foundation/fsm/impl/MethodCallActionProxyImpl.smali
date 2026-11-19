.class public Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Action;


# annotations
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
        "Lorg/squirrelframework/foundation/fsm/Action<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private delegator:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private final methodName:Ljava/lang/String;

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->d(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, v0, v3

    const-string v4, "[\\+-]?\\d+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object p1, v0, v3

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    :cond_0
    aget-object p1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    goto :goto_0

    :cond_1
    array-length v2, v0

    if-le v2, v3, :cond_2

    aget-object v0, v0, v3

    const-string v2, "ignore"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, -0x80000000

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    goto :goto_0

    :cond_2
    const-string v0, "before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x64

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    goto :goto_0

    :cond_3
    const-string v0, "after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, -0x64

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    :goto_0
    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    return-void
.end method

.method private getDelegator()Lorg/squirrelframework/foundation/fsm/Action;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getExecutionTargetType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getMethodCallParamTypes()[Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->findMethodCallActionInternal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v1, v0, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallAction(Ljava/lang/reflect/Method;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find method \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' with parameters \'["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v3}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getMethodCallParamTypes()[Ljava/lang/Class;

    move-result-object v3

    sget v4, Lorg/apache/commons/lang3/StringUtils;->a:I

    if-eqz v3, :cond_1

    array-length v4, v3

    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-interface {v3, v5, v6}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Laa;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Laa;-><init>(I)V

    const-string v5, ", "

    invoke-static {v5, v4}, Lorg/apache/commons/lang3/stream/LangCollectors;->a(Ljava/lang/String;Laa;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\' in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lorg/squirrelframework/foundation/fsm/Action;->DUMMY_ACTION:Lorg/squirrelframework/foundation/fsm/Action;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    if-eqz v2, :cond_2

    const-class v2, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    invoke-virtual {v2}, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    const-class v2, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    iget-object p1, p1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->getDelegator()Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lorg/squirrelframework/foundation/fsm/Action;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    return-void
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAsync()Z
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->getDelegator()Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Action;->isAsync()Z

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public timeout()J
    .locals 2

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->getDelegator()Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Action;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public weight()I
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;->weight:I

    return p0
.end method

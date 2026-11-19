.class public Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;
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
.field static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final executeWhenExpr:Ljava/lang/String;

.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private final isAsync:Z

.field private logExecTime:Z

.field private final method:Ljava/lang/reflect/Method;

.field private final methodDesc:Ljava/lang/String;

.field private final timeout:J

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method of the action cannot be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->weight:I

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class p2, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->isAsync:Z

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;->timeout()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->timeout:J

    const-class p2, Lorg/squirrelframework/foundation/fsm/annotation/LogExecTime;

    invoke-static {p1, p2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->isAnnotatedWith(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->logExecTime:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->logExecTime:Z

    :cond_3
    const-class p2, Lorg/squirrelframework/foundation/fsm/annotation/ExecuteWhen;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/annotation/ExecuteWhen;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/annotation/ExecuteWhen;->value()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executeWhenExpr:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->compile(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executeWhenExpr:Ljava/lang/String;

    :goto_2
    invoke-static {p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->logMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->methodDesc:Ljava/lang/String;

    return-void
.end method

.method private invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executeWhenExpr:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "context"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executeWhenExpr:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->evalBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {p2}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getMethodCallParamTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->logExecTime:Z

    if-eqz p2, :cond_1

    sget-object p2, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->logger:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lcom/google/common/base/Stopwatch;

    invoke-direct {p3}, Lcom/google/common/base/Stopwatch;-><init>()V

    invoke-virtual {p3}, Lcom/google/common/base/Stopwatch;->a()V

    iget-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    invoke-static {p4, p5, p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Execute Method \""

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->methodDesc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" tooks "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    invoke-static {p0, p5, p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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
    instance-of v2, p1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    if-eqz v2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    const-class v2, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    iget-object p1, p1, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

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

    invoke-direct/range {p0 .. p5}, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    return-void
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAsync()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->isAsync:Z

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public timeout()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->timeout:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->weight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public weight()I
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;->weight:I

    return p0
.end method

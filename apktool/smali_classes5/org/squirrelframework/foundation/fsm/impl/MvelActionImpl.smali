.class Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;
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
.field private final mvelExpression:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final script:Ljava/lang/String;

.field private final scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "_NoName_"

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->name:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->script:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->compile(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    iget-object v3, p1, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    return v1

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->name:Ljava/lang/String;

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    return v1

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "to"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "context"

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "stateMachine"

    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    const-class p3, Ljava/lang/Void;

    invoke-interface {p1, p2, v0, p3}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->eval(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->logger:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Evaluate \""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" failed, which caused by "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x1f

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->mvelExpression:Ljava/lang/String;

    invoke-static {v0, v0, v1}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isAsync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public timeout()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mvel#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelActionImpl;->script:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public weight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.class Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Condition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/Condition<",
        "TC;>;"
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

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->mvelExpression:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "_NoName_"

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->name:Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->mvelExpression:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->script:Ljava/lang/String;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->mvelExpression:Ljava/lang/String;

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->compile(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isSatisfied(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "context"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->mvelExpression:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->evalBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Evaluate \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->mvelExpression:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" failed, which caused by "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mvel#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MvelConditionImpl;->script:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

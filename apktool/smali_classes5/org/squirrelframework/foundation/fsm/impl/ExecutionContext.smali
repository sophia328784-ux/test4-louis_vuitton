.class Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final executionTargetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final methodCallParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/MvelScriptManager;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MvelScriptManager;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->executionTargetType:Ljava/lang/Class;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->methodCallParamTypes:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getExecutionTargetType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->executionTargetType:Ljava/lang/Class;

    return-object p0
.end method

.method public getMethodCallParamTypes()[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->methodCallParamTypes:[Ljava/lang/Class;

    return-object p0
.end method

.method public getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    return-object p0
.end method

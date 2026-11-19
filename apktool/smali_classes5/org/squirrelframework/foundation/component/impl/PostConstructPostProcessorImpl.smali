.class public Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcess(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$1;

    invoke-direct {v1, p0, p1}, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$1;-><init>(Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;Ljava/lang/Object;)V

    new-instance p1, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$2;

    invoke-direct {p1, p0}, Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl$2;-><init>(Lorg/squirrelframework/foundation/component/impl/PostConstructPostProcessorImpl;)V

    invoke-static {v0, v1, p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->doWithMethods(Ljava/lang/Class;Lorg/squirrelframework/foundation/util/ReflectUtils$MethodCallback;Lorg/squirrelframework/foundation/util/ReflectUtils$MethodFilter;)V

    return-void
.end method

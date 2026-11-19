.class public interface abstract Lorg/squirrelframework/foundation/fsm/ConverterProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;
.implements Lorg/squirrelframework/foundation/component/SquirrelSingleton;


# static fields
.field public static final INSTANCE:Lorg/squirrelframework/foundation/fsm/ConverterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    sput-object v0, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->INSTANCE:Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    return-void
.end method


# virtual methods
.method public abstract clearRegistry()V
.end method

.method public abstract getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/Converter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract unregister(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.class public Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ConverterProvider;


# instance fields
.field private converterRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;->converterRegistry:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearRegistry()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;->converterRegistry:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;
    .locals 0
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

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;->converterRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/Converter;

    if-nez p0, :cond_0

    new-instance p0, Lorg/squirrelframework/foundation/fsm/GeneralConverter;

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/GeneralConverter;-><init>(Ljava/lang/Class;)V

    :cond_0
    return-object p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
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

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;->register(Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/Converter;)V

    return-void
.end method

.method public register(Ljava/lang/Class;Lorg/squirrelframework/foundation/fsm/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "*>;)V"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;->converterRegistry:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregister(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/ConverterProviderImpl;->converterRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/CompositePostProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/component/CompositePostProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/google/common/collect/Lists;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public compose(Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public decompose(Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public postProcess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->processors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    check-cast v2, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    invoke-interface {v2, p1}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;->postProcess(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

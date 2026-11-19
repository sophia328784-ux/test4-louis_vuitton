.class public abstract Lorg/teleal/cling/model/gena/LocalGENASubscription;
.super Lorg/teleal/cling/model/gena/GENASubscription;
.source "SourceFile"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/gena/GENASubscription<",
        "Lorg/teleal/cling/model/meta/LocalService;",
        ">;",
        "Ljava/beans/PropertyChangeListener;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalService;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/gena/GENASubscription;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->h:Ljava/util/HashMap;

    monitor-enter p0

    if-nez p2, :cond_0

    const/16 p1, 0x708

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->c:I

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    sget-object p1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    const-string p2, "Reading initial state of local service at subscription time"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    iget-object p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->d()Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalService;->d()V

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method


# virtual methods
.method public final declared-synchronized f(Lorg/teleal/cling/model/gena/CancelReason;)V
    .locals 4

    const-string v0, "Removal of local service property change listener failed: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->d()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/LocalService;->d()V

    const/4 v1, 0x0

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->g(Lorg/teleal/cling/model/gena/CancelReason;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public abstract g(Lorg/teleal/cling/model/gena/CancelReason;)V
.end method

.method public final declared-synchronized h()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iget-wide v1, v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sget-object v5, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->a()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    iput-wide v3, v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized i(JLjava/util/Collection;)Ljava/util/HashSet;
    .locals 12

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/state/StateVariableValue;

    iget-object v2, v1, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    iget-object v3, v2, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    iget-object v4, v2, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget v5, v4, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->b:I

    if-nez v5, :cond_1

    iget v4, v4, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->c:I

    if-nez v4, :cond_1

    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Variable is not moderated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Variable is moderated but was never sent before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget v4, v4, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->b:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v2, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget v6, v6, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->b:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-gtz v4, :cond_3

    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excluding state variable with maximum rate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariable;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/teleal/cling/model/VariableValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v2, Lorg/teleal/cling/model/meta/StateVariable;->c:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    iget v1, v1, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->c:I

    int-to-long v8, v1

    cmp-long v1, v6, v4

    if-lez v1, :cond_4

    sub-long v10, v6, v4

    cmp-long v10, v10, v8

    if-gez v10, :cond_4

    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excluding state variable with minimum delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    if-gez v1, :cond_0

    sub-long/2addr v4, v6

    cmp-long v1, v4, v8

    if-gez v1, :cond_0

    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excluding state variable with minimum delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_5
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 8

    const-string v0, "Eventing triggered, getting state for subscription: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_EventedStateVariables"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, v0, v1, p1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i(JLjava/util/Collection;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/model/gena/GENASubscription;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/state/StateVariableValue;

    iget-object v4, v3, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding state variable value to current values of event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/model/gena/GENASubscription;->f:Ljava/util/LinkedHashMap;

    iget-object v6, v3, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    iget-object v6, v6, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->g:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariable;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/teleal/cling/model/VariableValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Propagating new state variable values to subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->b()V

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->i:Ljava/util/logging/Logger;

    const-string v0, "No state variable values for event (all moderated out?), not triggering event"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

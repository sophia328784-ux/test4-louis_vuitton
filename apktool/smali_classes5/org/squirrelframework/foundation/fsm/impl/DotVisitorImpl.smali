.class Lorg/squirrelframework/foundation/fsm/impl/DotVisitorImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/DotVisitor;


# instance fields
.field protected final transBuf:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DotVisitorImpl;->transBuf:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public convertDotFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, ".dot"

    invoke-static {p1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSimpleChildOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "****>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "****>;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getChildStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getChildStates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->hasChildStates()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    return-object p1
.end method

.method public visitOnEntry(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "****>;)V"
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->hasChildStates()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string v1, " {\nlabel=\""

    const-string v2, "\";"

    .line 155
    const-string v3, "subgraph cluster_"

    invoke-static {v3, v0, v1, v0, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object v1

    sget-object v2, Lorg/squirrelframework/foundation/fsm/HistoryType;->DEEP:Lorg/squirrelframework/foundation/fsm/HistoryType;

    const-string v3, "History [label=\"\"];"

    if-ne v1, v2, :cond_0

    .line 158
    invoke-static {v0, v3}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object p1

    sget-object v1, Lorg/squirrelframework/foundation/fsm/HistoryType;->SHALLOW:Lorg/squirrelframework/foundation/fsm/HistoryType;

    if-ne p1, v1, :cond_1

    .line 161
    invoke-static {v0, v3}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 163
    :cond_2
    const-string p1, " [label=\""

    const-string v1, "\"];"

    .line 164
    invoke-static {v0, p1, v0, v1}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void
.end method

.method public visitOnEntry(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "****>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->hasChildStates()Z

    move-result v4

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->hasChildStates()Z

    move-result v5

    const-string v6, "cluster_"

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-static {v6, v2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    if-eqz v5, :cond_1

    invoke-static {v6, v3}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/DotVisitorImpl;->getSimpleChildOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/DotVisitorImpl;->getSimpleChildOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getEvent()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    if-eqz v8, :cond_4

    const-string v1, "ltail=\""

    invoke-static {v1, v8, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v7

    :goto_2
    if-eqz v6, :cond_5

    const-string v4, "lhead=\""

    invoke-static {v4, v6, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/DotVisitorImpl;->transBuf:Ljava/lang/StringBuilder;

    const-string v0, " -> "

    const-string v4, " ["

    const-string v5, "\n"

    invoke-static {v5, v2, v0, v3, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    const-string v3, ","

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_7

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v1, " label=\""

    const-string v3, "\"];"

    invoke-static {v0, v2, v1, p1, v3}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitOnEntry(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .line 166
    const-string v0, "digraph {\ncompound=true;"

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subgraph cluster_StateMachine {\nlabel=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void
.end method

.method public visitOnExit(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "****>;)V"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->hasChildStates()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitOnExit(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "****>;)V"
        }
    .end annotation

    .line 13
    return-void
.end method

.method public visitOnExit(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->buffer:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DotVisitorImpl;->transBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "}}"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void
.end method

.class Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/SCXMLVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;-><init>()V

    return-void
.end method

.method private beautify(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;

    move-result-object v0

    const-string v1, "LS"

    invoke-virtual {v0, v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/ls/LSSerializer;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object v2

    const-string v3, "format-pretty-print"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSOutput()Lorg/w3c/dom/ls/LSOutput;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-interface {v0, v2}, Lorg/w3c/dom/ls/LSOutput;->setEncoding(Ljava/lang/String;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v0, v2}, Lorg/w3c/dom/ls/LSOutput;->setCharacterStream(Ljava/io/Writer;)V

    invoke-interface {v1, p0, v0}, Lorg/w3c/dom/ls/LSSerializer;->write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method private isExternalAction(Lorg/squirrelframework/foundation/fsm/Action;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "****>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/Action;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "__"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private writeAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "****>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;->isExternalAction(Lorg/squirrelframework/foundation/fsm/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<sqrl:action content="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/>"

    invoke-static {p1, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convertSCXMLFile(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ".scxml"

    invoke-static {p1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;->getScxml(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getScxml(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->buffer:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;->beautify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public visitOnEntry(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "****>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v0

    const-string v1, ">"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<parallel id= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<final id= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<state id= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, " initial= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getEntryActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "<onentry>"

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getEntryActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;->writeAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    goto :goto_1

    :cond_3
    const-string v0, "</onentry>"

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object v0

    sget-object v1, Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<history type= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/>"

    invoke-static {p1, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public visitOnEntry(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "****>;)V"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<transition event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getEvent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sqrl:priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sqrl:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getType()Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    .line 204
    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    .line 206
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/Action;

    .line 207
    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;->writeAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitOnEntry(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<scxml initial="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getInitialState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " version=\"1.0\" xmlns=\"http://www.w3.org/2005/07/scxml\" xmlns:sqrl=\"http://squirrelframework.org/squirrel\">"

    .line 200
    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<sqrl:fsm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " />"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void
.end method

.method public visitOnExit(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "****>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getExitActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<onexit>"

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getExitActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/SCXMLVisitorImpl;->writeAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    goto :goto_0

    :cond_0
    const-string v0, "</onexit>"

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "</parallel>"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "</final>"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "</state>"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

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

    .line 75
    const-string p1, "</transition>"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void
.end method

.method public visitOnExit(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .line 74
    const-string p1, "</scxml>"

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractVisitor;->writeLine(Ljava/lang/String;)V

    return-void
.end method

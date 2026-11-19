.class public Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachineImporter;


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
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lorg/squirrelframework/foundation/fsm/StateMachineImporter<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field public static SCXML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/07/scxml"

.field public static SQRL_NAMESPACE:Ljava/lang/String; = "http://squirrelframework.org/squirrel"


# instance fields
.field protected final currentStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field protected currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field protected eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final hierarchicalStateStore:Lcom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ListMultimap<",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field protected isEntryAction:Ljava/lang/Boolean;

.field protected final reusableInstance:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected sqrlPrefix:Ljava/lang/String;

.field protected stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Converter<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->value:Ljava/lang/String;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->sqrlPrefix:Ljava/lang/String;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->hierarchicalStateStore:Lcom/google/common/collect/ListMultimap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->reusableInstance:Ljava/util/Map;

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/Conditions;->always()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->registerReusableInstance(Ljava/lang/Object;)V

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/Conditions;->never()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->registerReusableInstance(Ljava/lang/Object;)V

    return-void
.end method

.method private newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->reusableInstance:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->value:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "onentry"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    const-string p1, "onexit"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "state"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "final"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "parallel"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "transition"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/MutableState;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->hierarchicalStateStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {p0, p1}, Lcom/google/common/collect/ListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableState;->addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_2
    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    return-void
.end method

.method public getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/MutableState;

    return-object p0
.end method

.method public getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    return-object p0
.end method

.method public importFromFile(Ljava/io/File;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->importFromInputStream(Ljava/io/InputStream;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Canont find file"

    invoke-static {p1, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public importFromInputStream(Ljava/io/InputStream;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Incorrect content format."

    invoke-static {p1, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public importFromString(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->importFromInputStream(Ljava/io/InputStream;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0

    return-object p0
.end method

.method public isConstructState()Z
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConstructTransition()Z
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerReusableInstance(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->registerReusableInstance(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public registerReusableInstance(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->reusableInstance:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "fsm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->SQRL_NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "fsm-type"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "state-type"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->INSTANCE:Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    invoke-interface {p3, p2}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "event-type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3, v0}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object p3

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "context-type"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "extra-parameters"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->d(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v5, v4, [Ljava/lang/Class;

    move v4, v2

    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    aget-object v6, v3, v4

    invoke-static {v6}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, p3, v5}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    check-cast p1, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-virtual {p1, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->setScanAnnotations(Z)V

    const-string p1, "finish-event"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->defineFinishEvent(Ljava/lang/Object;)V

    :cond_1
    const-string p1, "start-event"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->defineStartEvent(Ljava/lang/Object;)V

    :cond_2
    const-string p1, "terminate-event"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->defineTerminateEvent(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    return-void

    :cond_4
    const-string v0, "state"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "parallel"

    const-string v5, "final"

    if-nez v0, :cond_17

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v0, "history"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "type"

    if-eqz v0, :cond_7

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deep"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    sget-object p1, Lorg/squirrelframework/foundation/fsm/HistoryType;->DEEP:Lorg/squirrelframework/foundation/fsm/HistoryType;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V

    return-void

    :cond_6
    const-string p2, "shallow"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    sget-object p1, Lorg/squirrelframework/foundation/fsm/HistoryType;->SHALLOW:Lorg/squirrelframework/foundation/fsm/HistoryType;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V

    return-void

    :cond_7
    const-string v0, "onentry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    return-void

    :cond_8
    const-string v0, "onexit"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    return-void

    :cond_9
    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "mvel"

    const-string v4, "instance"

    const-string v5, "#"

    if-eqz p2, :cond_13

    sget-object p2, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->SQRL_NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "content"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-lez p4, :cond_a

    invoke-virtual {p1, v2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p4, v3

    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object p4, p1

    move-object p1, v1

    goto :goto_1

    :cond_a
    const-string p4, ""

    :goto_1
    const-string v1, "method"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1, p2, p4}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isConstructState()Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    iget-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    if-ne p2, p3, :cond_b

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p4, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->onEntry(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/builder/When;->callMethod(Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p4, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->onExit(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/builder/When;->callMethod(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isConstructTransition()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->callMethod(Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isConstructState()Z

    move-result p2

    if-eqz p2, :cond_f

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    if-ne p2, p3, :cond_e

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->onEntry(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/builder/When;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void

    :cond_e
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, p3, :cond_1c

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->onExit(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/builder/When;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isConstructTransition()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void

    :cond_10
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isConstructState()Z

    move-result p2

    if-eqz p2, :cond_12

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isEntryAction:Ljava/lang/Boolean;

    if-ne p2, p3, :cond_11

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->onEntry(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/builder/When;->evalMvel(Ljava/lang/String;)V

    return-void

    :cond_11
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, p3, :cond_1c

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->onExit(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/builder/When;->evalMvel(Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->isConstructTransition()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->evalMvel(Ljava/lang/String;)V

    return-void

    :cond_13
    const-string p1, "transition"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "event"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->eventConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "target"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p3, p2}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->SQRL_NAMESPACE:Ljava/lang/String;

    invoke-interface {p4, p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :try_start_0
    sget-object v6, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->SQRL_NAMESPACE:Ljava/lang/String;

    const-string v7, "priority"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v6, "INTERNAL"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->internalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;

    move-result-object p3

    check-cast p3, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    goto :goto_2

    :cond_14
    const-string v6, "LOCAL"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iget-object v6, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    if-eqz p3, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {v6, p3}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->localTransition(I)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;

    move-result-object p3

    check-cast p3, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    goto :goto_2

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {v6, p3}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->externalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    move-result-object p3

    check-cast p3, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    :goto_2
    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentTranstionBuilder:Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    move-result-object p3

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->from(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/From;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/squirrelframework/foundation/fsm/builder/From;->to(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/builder/To;->on(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;

    const-string p1, "cond"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->when(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/builder/When;

    goto/16 :goto_5

    :cond_16
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentTranstionBuilder()Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->whenMvel(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/builder/When;

    goto :goto_5

    :cond_17
    :goto_3
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_18

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v1

    :cond_18
    const-string p1, "id"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->currentStates:Ljava/util/Stack;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    if-eqz p2, :cond_19

    invoke-interface {v2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->defineFinalState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_19
    invoke-interface {v2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    sget-object p2, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->PARALLEL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableState;->setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V

    :cond_1a
    :goto_4
    const-string p1, "initial"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateConverter:Lorg/squirrelframework/foundation/fsm/Converter;

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/Converter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p2

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->stateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-interface {p3, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    :cond_1b
    if-eqz v1, :cond_1c

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->hierarchicalStateStore:Lcom/google/common/collect/ListMultimap;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->getCurrentState()Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->SQRL_NAMESPACE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->sqrlPrefix:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public unregisterReusableInstance(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineImporterImpl;->reusableInstance:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

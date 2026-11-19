.class public Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/transport/spi/SOAPActionProcessor;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)[Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v5, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ActionArgument;->b:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/teleal/cling/model/action/ActionArgumentValue;

    move v0, v2

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-static {v3}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_4
    array-length v6, p1

    if-ge v5, v6, :cond_5

    aget-object v6, p1, v5

    iget-object v7, v6, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v3}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v8, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-direct {v8, v6, v7}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v8, p0, v0

    goto :goto_5

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    iget-object v1, v6, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong type or invalid value for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public static e(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Envelope"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Body"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/w3c/dom/Element;

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Response envelope did not contain \'Body\' child element"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string p0, "Response root element was not \'Envelope\'"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Lorg/w3c/dom/Element;)Lorg/teleal/cling/model/action/ActionException;
    .locals 15

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move-object v3, v1

    move-object v5, v3

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_a

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {v6}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Fault"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v6, v0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-eq v9, v8, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {v7}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "detail"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    move v9, v0

    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v8, :cond_2

    goto :goto_5

    :cond_2
    invoke-static {v10}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UPnPError"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    move v11, v0

    :goto_3
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v13, v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v12}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "errorCode"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v12}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {v12}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "errorDescription"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v12}, Lorg/teleal/cling/model/XMLUtil;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    move v4, v8

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_c

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/teleal/cling/model/types/ErrorCode;->a(I)Lorg/teleal/cling/model/types/ErrorCode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " - "

    const-string v4, "Reading fault element: "

    sget-object v6, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    if-eqz v2, :cond_b

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/ErrorCode;->b()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/action/ActionException;

    invoke-direct {p0, v2, v5, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Z)V

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/model/action/ActionException;

    invoke-direct {v0, p0, v5}, Lorg/teleal/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const-string p0, "Error code was not a number"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v1

    :cond_c
    if-nez v4, :cond_d

    return-object v1

    :cond_d
    const-string p0, "Received fault element but no error code"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v1
.end method

.method public static g(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7

    iget-object v0, p2, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Looking for action request element matching namespace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Reading action request element: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast v4, Lorg/w3c/dom/Element;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Could not read action request element matching namespace: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    iget-object p1, v0, Lorg/teleal/cling/model/meta/Action;->c:[Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-static {p0, p1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->b(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)[Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object p0

    array-length p1, p0

    :goto_3
    if-ge v1, p1, :cond_3

    aget-object v0, p0, v1

    iget-object v2, p2, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lorg/teleal/cling/model/action/ActionArgumentValue;->c:Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static h(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Reading action response element: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast v2, Lorg/w3c/dom/Element;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Could not read action response element"

    invoke-virtual {v3, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    iget-object v1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Action;->d:[Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-static {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->b(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)[Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object p0

    array-length v1, p0

    :goto_3
    if-ge v0, v1, :cond_3

    aget-object v2, p0, v0

    iget-object v3, p1, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lorg/teleal/cling/model/action/ActionArgumentValue;->c:Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static i(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/teleal/cling/model/XMLUtil;->d(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static l(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4

    const-string v0, "s:Envelope"

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-interface {p0, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v2, "s:encodingStyle"

    invoke-interface {p0, v1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    const-string v3, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "s:Body"

    invoke-interface {p0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static m(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 4

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "s:Fault"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p1, "faultcode"

    const-string v1, "s:Client"

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string p1, "faultstring"

    const-string v1, "UPnPError"

    invoke-static {p0, v0, p1, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string p1, "detail"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v0, "urn:schemas-upnp-org:control-1-0"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p1, p3, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    iget p3, p1, Lorg/teleal/cling/model/action/ActionException;->b:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Writing fault element: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "errorCode"

    invoke-static {p0, v0, v1, p3, v2}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string p3, "errorDescription"

    invoke-static {p0, v0, p3, p1, v2}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->i(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    iput-object p1, p2, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object p0, p2, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    return-void
.end method

.method public static n(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing action request element: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/teleal/cling/model/message/control/ActionMessage;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "u:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p1, p3, Lorg/teleal/cling/model/action/ActionInvocation;->b:Ljava/util/LinkedHashMap;

    iget-object p3, v3, Lorg/teleal/cling/model/meta/Action;->c:[Lorg/teleal/cling/model/meta/ActionArgument;

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing action input argument: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/action/ActionArgumentValue;

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v5}, Lorg/teleal/cling/model/VariableValue;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    const/4 v6, 0x0

    invoke-static {p0, v0, v4, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->i(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lorg/teleal/cling/model/message/control/ActionMessage;->a(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing action response element: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p2, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "u:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p1, p3, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    iget-object p3, v1, Lorg/teleal/cling/model/meta/Action;->d:[Lorg/teleal/cling/model/meta/ActionArgument;

    array-length v1, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing action output argument: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ActionArgument;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/action/ActionArgumentValue;

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v5}, Lorg/teleal/cling/model/VariableValue;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    const/4 v6, 0x0

    invoke-static {p0, v0, v4, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->i(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    iput-object p1, p2, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object p0, p2, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object p0, Lk/a;->a:Ljava/util/HashMap;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Reading body of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const-string p0, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->e(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->g(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    const-string p2, "Can\'t transform message payload: "

    invoke-static {p2, p0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string p0, "Can\'t transform empty or non-string body of: "

    invoke-static {p1, p0}, Lwp;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Reading body of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const-string p0, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NO REPONSE WITH SOAP-ACTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->e(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->f(Lorg/w3c/dom/Element;)Lorg/teleal/cling/model/action/ActionException;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {p0, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->h(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void

    :cond_2
    iput-object p1, p2, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object p1, Lk/a;->a:Ljava/util/HashMap;

    new-instance p1, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    const-string p2, "Can\'t transform message payload: "

    invoke-static {p2, p0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    const-string p0, "Can\'t transform empty or non-string body of: "

    invoke-static {p1, p0}, Lwp;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Writing body of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->l(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->n(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const-string p0, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    const-string p2, "Can\'t transform message payload: "

    invoke-static {p2, p0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final k(Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Writing body of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->l(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v2, p2, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    if-eqz v2, :cond_0

    invoke-static {p0, v1, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->m(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->o(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    :goto_0
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const-string p0, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    const-string p2, "Can\'t transform message payload: "

    invoke-static {p2, p0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

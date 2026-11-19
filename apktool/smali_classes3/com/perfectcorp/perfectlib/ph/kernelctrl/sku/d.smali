.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;)V
    .locals 17

    const-string v0, "room.xml"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-static/range {p2 .. p2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->normalize()V

    const-string v2, "skus"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sku"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    check-cast v9, Lorg/w3c/dom/Element;

    const-string v10, "guid"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p1

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_2

    invoke-interface {v9, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "image"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    check-cast v13, Lorg/w3c/dom/Element;

    const-string v14, "name"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "path"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    invoke-static/range {p2 .. p2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v4, "sku_thumbnail"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->c:Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :sswitch_1
    const-string v4, "menu_popup_n"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->b:Ljava/lang/String;

    goto :goto_3

    :sswitch_2
    const-string v4, "item_thumbnail"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "item_guid"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v13, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->d:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :sswitch_3
    const-string v4, "menu"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_0
    move-object/from16 v16, v0

    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_2

    :cond_2
    :goto_4
    move-object/from16 v16, v0

    goto :goto_5

    :cond_3
    move-object/from16 v11, p1

    goto :goto_4

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_1

    :cond_4
    move-object/from16 v11, p1

    move-object/from16 v16, v0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;

    return-void

    :catchall_1
    move-exception v0

    :goto_6
    :try_start_2
    const-string v1, "RoomXmlParer"

    const-string v3, "parseFeatureRoomXml failed"

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x33155f -> :sswitch_3
        0x1c5c4ac0 -> :sswitch_2
        0x34c7eebb -> :sswitch_1
        0x5f31084a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d$a;->c:Ljava/lang/String;

    return-object p0
.end method

.class public Lcom/networkbench/agent/impl/webview/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/networkbench/agent/impl/c/e; = null

.field private static final b:J = 0x1d4c0L

.field private static final c:I = 0xa

.field private static d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/webview/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/webview/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)J
    .locals 2

    .line 685
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;I)Lcom/networkbench/agent/impl/webview/b/d;
    .locals 4

    move/from16 v0, p28

    .line 686
    new-instance v1, Lcom/networkbench/agent/impl/webview/b/d$a;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/webview/b/d$a;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    long-to-int p0, p0

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/webview/b/d$a;->a(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 687
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/webview/b/d$a;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 688
    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/webview/b/d$a;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/networkbench/agent/impl/webview/b/d$a;->b(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/networkbench/agent/impl/webview/b/d$a;->c(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 689
    invoke-virtual {p0, p6}, Lcom/networkbench/agent/impl/webview/b/d$a;->d(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 690
    invoke-virtual {p0, p7}, Lcom/networkbench/agent/impl/webview/b/d$a;->e(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 691
    invoke-virtual {p0, p8}, Lcom/networkbench/agent/impl/webview/b/d$a;->f(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 692
    invoke-virtual {p0, p9}, Lcom/networkbench/agent/impl/webview/b/d$a;->g(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 693
    invoke-virtual {p0, p10}, Lcom/networkbench/agent/impl/webview/b/d$a;->h(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 694
    invoke-virtual {p0, p11}, Lcom/networkbench/agent/impl/webview/b/d$a;->i(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p12

    .line 695
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->j(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p13

    .line 696
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->k(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p14

    .line 697
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->l(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p15

    .line 698
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->m(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p16

    .line 699
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->n(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p17

    .line 700
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->o(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p18

    .line 701
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->p(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p19

    .line 702
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->q(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p20

    .line 703
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->r(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p21

    .line 704
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->s(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p22

    .line 705
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->t(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p23

    .line 706
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->u(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p24

    .line 707
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->v(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 708
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/webview/b/d$a;->w(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    const/16 p1, 0xc8

    const/4 p2, 0x0

    if-ne v0, p1, :cond_0

    move v0, p2

    .line 709
    :cond_0
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/webview/b/d$a;->x(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 710
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/webview/b/d$a;->y(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move-object/from16 p1, p26

    .line 711
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->c(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move-object/from16 p1, p27

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->d(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    move/from16 p1, p25

    .line 712
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/webview/b/d$a;->z(I)Lcom/networkbench/agent/impl/webview/b/d$a;

    move-result-object p0

    .line 713
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/webview/b/d$a;->a()Lcom/networkbench/agent/impl/webview/b/d;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JJJLcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    .line 642
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 643
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p0, "initiatorType"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 644
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p1, "renderBlockingStatus"

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 645
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p1, "encodedBodySize"

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 646
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p1, "decodedBodySize"

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 647
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p1, "responseStatus"

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 648
    const-string p0, "serverTiming"

    invoke-virtual {v0, p0, p8}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private static a([Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 716
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 15

    .line 594
    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 595
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_2

    .line 597
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 598
    const-string v5, "md"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 599
    const-string v6, "hf"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 600
    const-string v7, "ul"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 601
    const-string v8, "dr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 602
    const-string v9, "rt"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 603
    const-string v9, "sc"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 604
    const-string v10, "ec"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 605
    const-string v11, "rsz"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 606
    const-string v12, "rqz"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 607
    const-string v13, "st"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 608
    const-string v13, "ed"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 609
    const-string v13, "xData"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    new-instance v13, Lcom/networkbench/agent/impl/harvest/ActionData;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/networkbench/agent/impl/harvest/ActionData;-><init>(Z)V

    .line 611
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrl(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v13, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setStatusCode(I)V

    .line 613
    invoke-virtual {v13, v10}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorCode(I)V

    .line 614
    invoke-virtual {v13, v8}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTotalTime(I)V

    .line 615
    invoke-virtual {v13, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setCarrier(Ljava/lang/String;)V

    int-to-long v6, v11

    .line 616
    invoke-virtual {v13, v6, v7}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesReceived(J)V

    int-to-long v6, v12

    .line 617
    invoke-virtual {v13, v6, v7}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesSent(J)V

    .line 618
    invoke-virtual {v13, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppData(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTimestamp(Ljava/lang/Long;)V

    const/4 v4, 0x0

    .line 620
    invoke-virtual {v13, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrlParams(Ljava/lang/String;)V

    .line 621
    invoke-static {v5}, Lcom/networkbench/agent/impl/webview/j;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V

    .line 622
    sget-object v4, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebviewAJAX:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v13, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    .line 623
    invoke-virtual {v13, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    .line 624
    invoke-virtual {v13, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    .line 625
    invoke-virtual {v13, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_ssl_handshake(I)V

    .line 626
    invoke-virtual {v13, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_dns(I)V

    .line 627
    invoke-virtual {v13, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v13}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    invoke-virtual {v13}, Lcom/networkbench/agent/impl/harvest/ActionData;->correctDataInfo()V

    const v4, 0x493e0

    if-lt v8, v4, :cond_1

    goto :goto_1

    .line 630
    :cond_1
    invoke-static {v13}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 631
    sget-object v0, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseAjax error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;IJJJJJJJJLcom/networkbench/agent/impl/harvest/HttpLibType;JLcom/networkbench/com/google/gson/JsonObject;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p6

    .line 649
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v4

    .line 650
    new-instance v5, Lcom/networkbench/agent/impl/harvest/ActionData;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;-><init>(Z)V

    .line 651
    invoke-virtual {v5, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setSuuid(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setDataTag(Ljava/util/Map;)V

    .line 653
    invoke-virtual {v5, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrl(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v5, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setStatusCode(I)V

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    .line 655
    :cond_0
    invoke-virtual {v5, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorCode(I)V

    move-wide/from16 v6, p2

    long-to-int v1, v6

    .line 656
    invoke-virtual {v5, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTotalTime(I)V

    .line 657
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setCarrier(Ljava/lang/String;)V

    move-wide/from16 v7, p19

    .line 658
    invoke-virtual {v5, v7, v8}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesReceived(J)V

    const-wide/16 v7, 0x0

    .line 659
    invoke-virtual {v5, v7, v8}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesSent(J)V

    const/4 v9, 0x0

    .line 660
    invoke-virtual {v5, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppData(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTimestamp(Ljava/lang/Long;)V

    .line 662
    invoke-virtual {v5, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrlParams(Ljava/lang/String;)V

    .line 663
    sget-object v9, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v5, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V

    move-object/from16 v9, p18

    .line 664
    invoke-virtual {v5, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    sub-long v9, v2, p4

    cmp-long v11, v9, v7

    const-wide/16 v12, -0x1

    if-nez v11, :cond_1

    move-wide v9, v12

    :cond_1
    long-to-int v9, v9

    .line 665
    invoke-virtual {v5, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    sub-long v9, p8, p10

    long-to-int v9, v9

    .line 666
    invoke-virtual {v5, v9}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    move-wide/from16 v9, p12

    .line 667
    invoke-static {v0, v2, v3, v9, v10}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;JJ)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_ssl_handshake(I)V

    sub-long v2, p16, p14

    cmp-long v0, v2, v7

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v12, v2

    :goto_0
    long-to-int v0, v12

    .line 668
    invoke-virtual {v5, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_dns(I)V

    .line 669
    invoke-virtual {v5, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppPhase(I)V

    move-object/from16 v0, p21

    .line 671
    invoke-virtual {v5, v0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setWebviewData(Lcom/networkbench/com/google/gson/JsonObject;)V

    .line 672
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->correctDataInfo()V

    .line 673
    sget v0, Lcom/networkbench/agent/impl/util/r;->b:I

    if-lt v1, v0, :cond_3

    return-void

    .line 674
    :cond_3
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HttpLibType;->Webview:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne v0, v1, :cond_7

    .line 675
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x190

    if-lt v0, v2, :cond_4

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v0

    const/16 v3, 0x384

    if-lt v0, v3, :cond_5

    :cond_4
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 676
    :cond_5
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v0

    if-ge v0, v2, :cond_6

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 677
    :cond_6
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    new-instance v1, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v3

    .line 679
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getRequestMethod()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v6

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getCdnVendorName()Ljava/lang/String;

    move-result-object v7

    .line 680
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v8

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppPhase()I

    move-result v9

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->a()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    iget-object v12, v5, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v13

    invoke-virtual {v13}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v13

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    const-string v19, ""

    move-object/from16 p3, v0

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move/from16 p5, v3

    move-object/from16 p10, v6

    move-object/from16 p11, v7

    move-object/from16 p12, v8

    move/from16 p13, v9

    move-object/from16 p14, v10

    move-object/from16 p15, v11

    move-object/from16 p16, v12

    move-object/from16 p17, v13

    move-object/from16 p2, v14

    move-object/from16 p4, v15

    move-object/from16 p6, v16

    move-object/from16 p7, v17

    move-object/from16 p8, v18

    move-object/from16 p9, v19

    invoke-direct/range {p0 .. p17}, Lcom/networkbench/agent/impl/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/RequestMethodType;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 681
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/data/f;->a(Ljava/util/Map;)V

    .line 682
    invoke-virtual {v0, v4}, Lcom/networkbench/agent/impl/data/f;->c(Ljava/lang/String;)V

    .line 683
    invoke-static {v5, v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpError(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V

    return-void

    .line 684
    :cond_7
    invoke-static {v5}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;JI)V
    .locals 1

    if-lez p4, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/webview/b/c$a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/b/c$a;-><init>()V

    .line 633
    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/webview/b/c$a;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/networkbench/agent/impl/webview/b/c$a;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/networkbench/agent/impl/webview/b/c$a;->b(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    .line 634
    invoke-virtual {p2, p5}, Lcom/networkbench/agent/impl/webview/b/c$a;->c(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/networkbench/agent/impl/webview/b/c$a;->c(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    invoke-static {p7}, Lcom/networkbench/agent/impl/webview/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/networkbench/agent/impl/webview/b/c$a;->d(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    .line 635
    invoke-virtual {p2, p8}, Lcom/networkbench/agent/impl/webview/b/c$a;->d(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    invoke-virtual {p2, p9}, Lcom/networkbench/agent/impl/webview/b/c$a;->e(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object p2

    invoke-virtual {p2, p13}, Lcom/networkbench/agent/impl/webview/b/c$a;->a(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    .line 636
    new-instance p2, Lcom/networkbench/agent/impl/webview/b/a;

    invoke-direct {p2, v0}, Lcom/networkbench/agent/impl/webview/b/a;-><init>(Lcom/networkbench/agent/impl/webview/b/c$a;)V

    .line 637
    invoke-virtual {p2, p10}, Lcom/networkbench/agent/impl/webview/b/a;->c(Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/webview/b/a;->b(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/webview/b/a;->a(Ljava/lang/String;)V

    const-wide/16 p0, 0x3e8

    .line 640
    div-long/2addr p11, p0

    long-to-int p0, p11

    invoke-virtual {p2, p0}, Lcom/networkbench/agent/impl/webview/b/a;->a(I)V

    .line 641
    invoke-static {p2}, Lcom/networkbench/agent/impl/harvest/Harvest;->addJsError(Lcom/networkbench/agent/impl/webview/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/webview/b/c;",
            ">;)V"
        }
    .end annotation

    const-string v1, ""

    const-string v2, "parsePageData header warning "

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ns"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "ul"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "pvid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "es"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v8

    long-to-int v8, v8

    const-string v3, "ee"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v9

    const-string v3, "f"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v11

    const-string v3, "ds"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v13

    const-string v3, "de"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v17, v4

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v3

    const-string v5, "cs"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 p0, v7

    move v5, v8

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "ce"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v19, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "sl"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v21, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "qs"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v23, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "rs"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v25, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "re"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v27, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "doml"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v29, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "oi"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v31, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "os"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v33, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "oe"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v35, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "oc"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v37, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "ls"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v39, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "le"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v41, v7

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v15, "fp"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v15

    move-object/from16 v43, v1

    const-string v1, "fs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v44

    move-wide/from16 v46, v7

    invoke-static/range {v44 .. v45}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    move-result-wide v7

    const-string v1, "je"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v44, v1

    const-string v1, "sli"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v45, v1

    const-string v1, "dr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Lcom/networkbench/agent/impl/webview/m;->a(J)J

    cmp-long v1, v15, v39

    move-wide/from16 v48, v7

    if-lez v1, :cond_0

    move-wide/from16 v7, v39

    goto :goto_0

    :cond_0
    move-wide v7, v15

    :goto_0
    invoke-static {v6}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    :try_start_1
    const-string v1, "header"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "X-Tingyun-Tx-Data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v1, v43

    goto :goto_3

    :cond_2
    move-object/from16 v1, v43

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCdnHeaderName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object/from16 v0, v43

    move-object v1, v0

    :goto_2
    move-wide/from16 v15, v31

    move-object/from16 v31, v0

    goto :goto_4

    :goto_3
    :try_start_3
    sget-object v15, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    move-object/from16 v1, v16

    move-wide/from16 v15, v31

    move-object/from16 v31, v43

    :goto_4
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;Z)I

    move-result v0

    const/16 v2, 0x384

    if-gt v0, v2, :cond_9

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {v6, v0}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;I)I

    move-result v32

    sget-boolean v0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isUpdate:Z

    if-eqz v0, :cond_9

    long-to-int v9, v9

    long-to-int v10, v11

    long-to-int v11, v13

    long-to-int v12, v3

    move-wide/from16 v2, v19

    long-to-int v13, v2

    move-wide/from16 v2, v21

    long-to-int v14, v2

    move-wide/from16 v2, v23

    long-to-int v0, v2

    move-wide/from16 v2, v25

    long-to-int v2, v2

    move-wide/from16 v3, v27

    long-to-int v3, v3

    move-object v4, v1

    move/from16 v19, v2

    move-wide/from16 v1, v29

    long-to-int v1, v1

    move/from16 v20, v1

    move-wide v1, v15

    long-to-int v1, v1

    move v15, v1

    move-wide/from16 v1, v33

    long-to-int v1, v1

    move/from16 v16, v1

    move-wide/from16 v1, v35

    long-to-int v1, v1

    move/from16 v21, v1

    move-wide/from16 v1, v37

    long-to-int v1, v1

    move/from16 v22, v1

    move-wide/from16 v1, v39

    long-to-int v1, v1

    move/from16 v23, v1

    move-wide/from16 v1, v41

    long-to-int v1, v1

    move/from16 v24, v1

    move-wide/from16 v1, v46

    long-to-int v1, v1

    long-to-int v2, v7

    move-wide/from16 v7, v48

    long-to-int v7, v7

    move/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v30, v4

    move v8, v5

    move/from16 v27, v7

    move-wide/from16 v4, v17

    move/from16 v18, v20

    move/from16 v28, v44

    move/from16 v29, v45

    move-object/from16 v7, p0

    move/from16 v17, v3

    move/from16 v20, v16

    move/from16 v16, v19

    move/from16 v19, v15

    move v15, v0

    invoke-static/range {v4 .. v32}, Lcom/networkbench/agent/impl/webview/m;->a(JLjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;I)Lcom/networkbench/agent/impl/webview/b/d;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/webview/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/webview/b/e;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/d;->b()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/webview/b/b;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    goto :goto_5

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/webview/b/c;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/b/d;->c()Lcom/networkbench/agent/impl/webview/b/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/webview/b/b;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    goto :goto_6

    :cond_8
    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addPagePerfData(Lcom/networkbench/agent/impl/webview/b/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsePageData error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 718
    const-string v0, "params"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 719
    const-string v0, "event_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    const-string v1, "userAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_0

    .line 721
    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;->storeBitmapDelay(J)V

    return-void

    .line 722
    :cond_0
    const-string v1, "userEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;->storeBitmapDelay(J)V

    return-void

    .line 724
    :cond_1
    const-string v1, "newSession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "id"

    const-string v3, "data"

    if-eqz v1, :cond_2

    .line 725
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 726
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->startNextSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 728
    :cond_2
    const-string v1, "setUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 730
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 731
    invoke-static {p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setUserIdentifier(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 714
    array-length p0, p0

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/webview/b/c;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/networkbench/agent/impl/webview/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v11, 0x7

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    const/16 v12, 0x9

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-lez v6, :cond_3

    if-gtz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v12, Lcom/networkbench/agent/impl/webview/b/c$a;

    invoke-direct {v12}, Lcom/networkbench/agent/impl/webview/b/c$a;-><init>()V

    invoke-virtual {v12, v4}, Lcom/networkbench/agent/impl/webview/b/c$a;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/networkbench/agent/impl/webview/b/c$a;->b(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/networkbench/agent/impl/webview/b/c$a;->b(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/networkbench/agent/impl/webview/b/c$a;->c(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/networkbench/agent/impl/webview/b/c$a;->c(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/networkbench/agent/impl/webview/b/c$a;->d(Ljava/lang/String;)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/networkbench/agent/impl/webview/b/c$a;->d(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/networkbench/agent/impl/webview/b/c$a;->e(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/networkbench/agent/impl/webview/b/c$a;->a(I)Lcom/networkbench/agent/impl/webview/b/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/webview/b/c$a;->a()Lcom/networkbench/agent/impl/webview/b/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :goto_2
    sget-object v1, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "parseJsError failed:"

    invoke-interface {v1, v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 40

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "navigationStart"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v1, "entries"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "fetchStart"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v7, "domainLookupStart"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v7, "domainLookupEnd"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    const-string v7, "connectStart"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v7, "connectEnd"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v7, "secureConnectionStart"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v7, "requestStart"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v7, "responseStart"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v7, "responseEnd"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "transferSize"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v27

    const-string v9, "encodedBodySize"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v31

    const-string v9, "decodedBodySize"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v33

    const-string v9, "initiatorType"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v9, "renderBlockingStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v9, "responseStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v35

    const-string v9, "serverTiming"

    const-string v10, "[]"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v10}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    const-class v11, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v10, v9, v11}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v37, v9

    check-cast v37, Lcom/networkbench/com/google/gson/JsonArray;

    const-string v9, "entryType"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-gtz v11, :cond_0

    move-wide v5, v7

    :cond_0
    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x1

    invoke-static {v8, v4}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;Z)I

    move-result v4

    const-wide/32 v38, 0x1d4c0

    cmp-long v7, v5, v38

    if-ltz v7, :cond_2

    goto :goto_4

    :cond_2
    cmp-long v7, v27, v9

    if-nez v7, :cond_3

    const-wide/16 v9, 0x5

    cmp-long v7, v5, v9

    if-gez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-static/range {v29 .. v37}, Lcom/networkbench/agent/impl/webview/m;->a(Ljava/lang/String;Ljava/lang/String;JJJLcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v29

    invoke-static {v3}, Lcom/networkbench/agent/impl/webview/m;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebViewResource:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    :goto_1
    move-object/from16 v26, v3

    move v9, v4

    move-wide v10, v5

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/networkbench/agent/impl/harvest/HttpLibType;->Webview:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    goto :goto_1

    :goto_2
    invoke-static/range {v8 .. v29}, Lcom/networkbench/agent/impl/webview/m;->a(Ljava/lang/String;IJJJJJJJJLcom/networkbench/agent/impl/harvest/HttpLibType;JLcom/networkbench/com/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseResourceNew error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 6

    const-string v0, "current_pg_metric :"

    const-string v1, "errors_metrics:"

    const-string v2, "resource_metric :"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "cpm"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v4, Lcom/networkbench/agent/impl/webview/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const-string v4, "rm"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    :cond_0
    const-string v2, "em"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/webview/m;->b(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/webview/m;->a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parsePageInfo error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sli"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/webview/m;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSlowIndicator error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/webview/m;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/webview/m;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/networkbench/agent/impl/webview/m;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/m/b;->a()Lcom/networkbench/agent/impl/m/b;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object p0

    new-instance v0, Lcom/networkbench/agent/impl/webview/d;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/webview/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "navigation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

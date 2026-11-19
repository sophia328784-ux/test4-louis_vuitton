.class public abstract Lcom/networkbench/agent/impl/webview/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/webview/l$a;
    }
.end annotation


# static fields
.field private static g:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field private f:Lcom/networkbench/agent/impl/webview/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/webview/l;->g:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/l;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/webview/l;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/webview/l;->c:Z

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/networkbench/agent/impl/harvest/ActionData;
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " WebErrorBase addActionAndError :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpError(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/webview/l$a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/l;->f:Lcom/networkbench/agent/impl/webview/l$a;

    return-void
.end method

.method public c()V
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/webview/l;->a()Lcom/networkbench/agent/impl/harvest/ActionData;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setSuuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setDataTag(Ljava/util/Map;)V

    iget-object v3, v0, Lcom/networkbench/agent/impl/webview/l;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrl(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTotalTime(I)V

    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setCarrier(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesReceived(J)V

    invoke-virtual {v2, v5, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setBytesSent(J)V

    invoke-virtual {v2, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setAppData(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTimestamp(Ljava/lang/Long;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/networkbench/agent/impl/harvest/ActionData;->setUrlParams(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/networkbench/agent/impl/webview/l;->c:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/networkbench/agent/impl/harvest/HttpLibType;->Webview:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v2, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebViewResource:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v2, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_connect(I)V

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_first_package(I)V

    invoke-virtual {v2, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_ssl_handshake(I)V

    invoke-virtual {v2, v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->setTime_to_dns(I)V

    invoke-virtual {v2, v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->setIP(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/aj;->a(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v3

    if-ne v3, v6, :cond_4

    :cond_2
    :try_start_0
    iget-object v3, v0, Lcom/networkbench/agent/impl/webview/l;->f:Lcom/networkbench/agent/impl/webview/l$a;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lcom/networkbench/agent/impl/webview/l;->f:Lcom/networkbench/agent/impl/webview/l$a;

    invoke-interface {v4}, Lcom/networkbench/agent/impl/webview/l$a;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    goto :goto_1

    :catchall_0
    move-object v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v14, v5

    goto :goto_3

    :catchall_1
    :goto_2
    sget-object v3, Lcom/networkbench/agent/impl/webview/l;->g:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "get response header error !"

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v6, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v11

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getRequestMethod()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v16

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getCdnVendorName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object v18

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppPhase()I

    move-result v19

    iget-object v3, v0, Lcom/networkbench/agent/impl/webview/l;->e:Ljava/lang/String;

    iget-object v4, v2, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v23

    const-string v8, ""

    const-string v10, ""

    const-string v12, ""

    const-string v13, ""

    const-string v15, ""

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-direct/range {v6 .. v23}, Lcom/networkbench/agent/impl/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/RequestMethodType;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;)V

    invoke-virtual {v6, v1}, Lcom/networkbench/agent/impl/data/f;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/networkbench/agent/impl/data/f;->a(Ljava/util/Map;)V

    move-object v5, v6

    :cond_4
    iget-boolean v1, v0, Lcom/networkbench/agent/impl/webview/l;->d:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v2, v5}, Lcom/networkbench/agent/impl/webview/l;->a(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V

    :goto_4
    sget-object v1, Lcom/networkbench/agent/impl/webview/l;->g:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isForMainFrame  :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/networkbench/agent/impl/webview/l;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/networkbench/agent/impl/webview/l;->c:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/networkbench/agent/impl/webview/l;->d:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isUpdate:Z

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/networkbench/agent/impl/webview/l;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v30, ""

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v31

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, ""

    invoke-static/range {v3 .. v31}, Lcom/networkbench/agent/impl/webview/m;->a(JLjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;I)Lcom/networkbench/agent/impl/webview/b/d;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addPagePerfData(Lcom/networkbench/agent/impl/webview/b/d;)V

    :cond_6
    :goto_5
    return-void
.end method

.class public Lcom/dynatrace/android/agent/ApacheUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/HttpRequest;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lorg/apache/http/HttpRequest;)V
    .locals 1

    const-string v0, "x-dynatrace"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v0}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static c(Lcom/dynatrace/android/agent/DTXAutoAction;Lorg/apache/http/HttpRequest;)Lcom/dynatrace/android/agent/WebReqTag;
    .locals 12

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget-object v0, v0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v1, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v0, v1}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->s()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    const-string v1, "x-dynatrace"

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/dynatrace/android/agent/CustomSegment;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/dynatrace/android/agent/EventType;->PLACEHOLDER:Lcom/dynatrace/android/agent/EventType;

    iget-wide v7, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget-object v9, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v10, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    const/4 v11, 0x1

    const/16 v5, 0x6e

    invoke-direct/range {v3 .. v11}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    invoke-virtual {p0, v3}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lorg/apache/http/HttpRequest;)Lcom/dynatrace/android/agent/WebReqTag;
    .locals 3

    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/AgentUtil;->a()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v1, "x-dynatrace"

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

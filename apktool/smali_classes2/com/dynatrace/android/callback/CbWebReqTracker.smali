.class final Lcom/dynatrace/android/callback/CbWebReqTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dynatrace/android/agent/data/Session;

.field public final b:Lcom/dynatrace/android/agent/DTXAutoAction;

.field public c:Z

.field public d:Lcom/dynatrace/android/callback/OkRequestStateParms;

.field public e:Lcom/dynatrace/android/agent/WebReqTag;

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:Ljava/util/AbstractMap;

.field public l:Ljava/util/AbstractMap;

.field public m:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/DTXAutoAction;Lcom/dynatrace/android/agent/data/Session;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->i:J

    iput-wide v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->k:Ljava/util/AbstractMap;

    iput-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->l:Ljava/util/AbstractMap;

    iput-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->m:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iput-object p1, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->b:Lcom/dynatrace/android/agent/DTXAutoAction;

    iput-object p2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->a:Lcom/dynatrace/android/agent/data/Session;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "ManualTag \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is used"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->b:Lcom/dynatrace/android/agent/DTXAutoAction;

    const-string v4, "\'"

    if-nez v0, :cond_4

    sget-boolean p2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    invoke-virtual {p2}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "AutoTag "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " != ManualTag \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/dynatrace/android/agent/DTXAutoAction;->G(Ljava/lang/String;)V

    :cond_3
    iput-object v2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    return v1

    :cond_4
    if-eqz p2, :cond_7

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ManualTag x-dtc exists: \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/dynatrace/android/agent/DTXAutoAction;->G(Ljava/lang/String;)V

    :cond_6
    iput-object v2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method

.method public final b(Lcom/dynatrace/android/callback/WebReqStateParms;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Content-Type"

    const-string v3, "Host"

    iget-object v4, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->h:Ljava/lang/String;

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->h:Ljava/lang/String;

    :cond_0
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/dynatrace/android/callback/CbWebReqTracker$1;->a:[I

    iget-object v5, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    iget-object v6, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x2

    const/4 v5, 0x2

    iget-object v11, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->a:Lcom/dynatrace/android/agent/data/Session;

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    if-eq v4, v12, :cond_12

    if-eq v4, v5, :cond_c

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    const/4 v1, 0x4

    if-eq v4, v1, :cond_2

    goto/16 :goto_9

    :cond_2
    iput-boolean v12, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    iget-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    cmp-long v1, v1, v13

    if-gtz v1, :cond_21

    invoke-virtual {v11}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    return-void

    :cond_3
    instance-of v2, v1, Lcom/dynatrace/android/callback/ConnStateParms;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    if-eq v6, v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/android/callback/ConnStateParms;

    iget-object v3, v2, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    iget-wide v4, v2, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    cmp-long v4, v4, v13

    if-ltz v4, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/dynatrace/android/callback/ConnStateParms;->i(Ljava/util/Map;)J

    move-result-wide v4

    add-long/2addr v4, v9

    iput-wide v4, v2, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_5
    iput-wide v7, v2, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    :goto_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Server-Timing"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/callback/WebReqStateParms;->a(Ljava/util/List;)V

    :cond_6
    iget-wide v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    cmp-long v4, v2, v13

    if-ltz v4, :cond_7

    iput-wide v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->i:J

    :cond_7
    iget-wide v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    cmp-long v4, v2, v13

    if-ltz v4, :cond_8

    iput-wide v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->j:J

    :cond_8
    iget-object v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->l:Ljava/util/AbstractMap;

    if-eqz v2, :cond_9

    iput-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->l:Ljava/util/AbstractMap;

    :cond_9
    iget-object v1, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->k:Ljava/util/AbstractMap;

    if-eqz v1, :cond_a

    iput-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->k:Ljava/util/AbstractMap;

    :cond_a
    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    if-ne v6, v1, :cond_b

    invoke-virtual {v11}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    goto/16 :goto_9

    :cond_b
    iput-boolean v12, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    iget-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    cmp-long v1, v1, v13

    if-gtz v1, :cond_21

    invoke-virtual {v11}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    goto/16 :goto_9

    :cond_c
    iget-wide v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    cmp-long v4, v2, v13

    if-ltz v4, :cond_d

    iput-wide v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->i:J

    :cond_d
    iget-wide v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    cmp-long v4, v2, v13

    if-ltz v4, :cond_e

    iput-wide v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->j:J

    :cond_e
    iget-object v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->l:Ljava/util/AbstractMap;

    if-eqz v2, :cond_f

    iput-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->l:Ljava/util/AbstractMap;

    :cond_f
    iget-object v1, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->k:Ljava/util/AbstractMap;

    if-eqz v1, :cond_10

    iput-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->k:Ljava/util/AbstractMap;

    :cond_10
    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    if-ne v6, v1, :cond_11

    iget-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    cmp-long v1, v1, v13

    if-lez v1, :cond_11

    iput-wide v13, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    return-void

    :cond_11
    iput-boolean v12, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    invoke-virtual {v11}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    return-void

    :cond_12
    move-wide v15, v9

    iget-wide v9, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->f:J

    cmp-long v4, v9, v13

    if-gtz v4, :cond_13

    invoke-virtual {v11}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->f:J

    iget-boolean v4, v11, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v4, :cond_13

    sget-object v4, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/dynatrace/agent/OneAgentFacade;->d:Lcom/dynatrace/agent/useraction/UserActionController;

    sget-object v9, Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;->a:Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;

    invoke-virtual {v4, v9}, Lcom/dynatrace/agent/useraction/UserActionController;->c(Lcom/dynatrace/agent/useraction/SignificantEvent;)V

    :cond_13
    iget-wide v9, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->i:J

    cmp-long v4, v9, v13

    if-ltz v4, :cond_15

    iput-wide v9, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    :cond_14
    :goto_1
    move-wide v15, v13

    goto/16 :goto_8

    :cond_15
    instance-of v4, v1, Lcom/dynatrace/android/callback/ConnStateParms;

    if-eqz v4, :cond_14

    move-object v4, v1

    check-cast v4, Lcom/dynatrace/android/callback/ConnStateParms;

    sget-object v9, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->getOutputStream:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    if-ne v6, v9, :cond_16

    move v6, v12

    goto :goto_2

    :cond_16
    const/4 v6, 0x0

    :goto_2
    iget-object v9, v4, Lcom/dynatrace/android/callback/ConnStateParms;->m:Ljava/net/HttpURLConnection;

    iget-wide v10, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    cmp-long v10, v10, v13

    if-ltz v10, :cond_17

    goto :goto_1

    :cond_17
    :try_start_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v17, v10, 0xc

    if-eqz v11, :cond_19

    move/from16 v18, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v12, :cond_18

    goto :goto_3

    :cond_18
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v17

    goto :goto_4

    :cond_19
    move/from16 v18, v5

    :goto_3
    add-int/lit8 v5, v10, 0xd

    :goto_4
    int-to-long v10, v5

    iput-wide v10, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    invoke-virtual {v9}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v5

    iget-wide v10, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    invoke-static {v5}, Lcom/dynatrace/android/callback/ConnStateParms;->i(Ljava/util/Map;)J

    move-result-wide v19

    add-long v19, v19, v15

    add-long v10, v19, v10

    iput-wide v10, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    sget-object v10, Lcom/dynatrace/android/callback/ConnStateParms;->n:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v12, :cond_1a

    move-wide v15, v13

    :try_start_2
    iget-wide v13, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    int-to-long v11, v11

    add-long/2addr v13, v11

    iput-wide v13, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    goto :goto_6

    :cond_1a
    move-wide v15, v13

    :goto_6
    move-wide v13, v15

    goto :goto_5

    :catch_1
    move-wide v15, v13

    goto :goto_7

    :cond_1b
    move-wide v15, v13

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-wide v10, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    invoke-virtual {v9}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    int-to-long v12, v3

    add-long/2addr v10, v12

    iput-wide v10, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    :cond_1c
    if-eqz v6, :cond_1e

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-wide v2, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    sget v5, Lcom/dynatrace/android/callback/ConnStateParms;->o:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    :goto_7
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_1d
    iput-wide v7, v4, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    :cond_1e
    :goto_8
    iget-wide v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->j:J

    cmp-long v4, v2, v15

    if-ltz v4, :cond_1f

    iput-wide v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    :cond_1f
    iget-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->k:Ljava/util/AbstractMap;

    if-eqz v2, :cond_20

    iput-object v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->k:Ljava/util/AbstractMap;

    :cond_20
    iget-object v0, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->l:Ljava/util/AbstractMap;

    if-eqz v0, :cond_21

    iput-object v0, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->l:Ljava/util/AbstractMap;

    :cond_21
    :goto_9
    return-void
.end method

.method public final c(Lcom/dynatrace/android/callback/WebReqStateParms;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    if-eqz v2, :cond_7

    new-instance v3, Lcom/dynatrace/android/agent/WebReqSegment;

    iget-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    iget-wide v4, v2, Lcom/dynatrace/android/agent/WebReqTag;->d:J

    iget v6, v2, Lcom/dynatrace/android/agent/WebReqTag;->f:I

    iget-wide v7, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->f:J

    iget-wide v9, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    iget v11, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    iget-object v12, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->c()Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    move-object/from16 v16, v3

    iget-wide v2, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    move-wide/from16 v17, v2

    iget-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    iget v2, v2, Lcom/dynatrace/android/agent/WebReqTag;->a:I

    iget-object v3, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->i:Ljava/lang/String;

    move/from16 v19, v2

    iget-object v2, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->a:Lcom/dynatrace/android/agent/data/Session;

    move-object/from16 v20, v3

    iget-boolean v3, v2, Lcom/dynatrace/android/agent/data/Session;->k:Z

    move-object/from16 v21, v2

    const/4 v2, 0x1

    xor-int/2addr v3, v2

    move-object/from16 v22, v21

    move/from16 v21, v3

    move-object/from16 v3, v16

    move-wide/from16 v16, v17

    move-object/from16 v18, v22

    invoke-direct/range {v3 .. v21}, Lcom/dynatrace/android/agent/WebReqSegment;-><init>(JIJJILjava/lang/String;Ljava/lang/String;JJLcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V

    move-object/from16 v4, v18

    iget-boolean v5, v4, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v6, Lcom/dynatrace/android/agent/EventType;->EVENT_API:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v5, v6}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auto web request event shouldn\'t be collected, because of data collection level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->f()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/agent/WebRequestUtils;->a(Ljava/lang/String;)Lcom/dynatrace/android/agent/WebRequestUtils$FormattedUrl;

    move-result-object v5

    new-instance v6, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;

    invoke-direct {v6}, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;-><init>()V

    iget-object v5, v5, Lcom/dynatrace/android/agent/WebRequestUtils$FormattedUrl;->a:Ljava/lang/String;

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->f:Ljava/lang/Exception;

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->f()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->e:Ljava/lang/String;

    iget v5, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    iput v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->c:I

    iget-object v5, v1, Lcom/dynatrace/android/callback/WebReqStateParms;->f:Ljava/lang/String;

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->k:Ljava/util/AbstractMap;

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->g:Ljava/util/AbstractMap;

    iget-object v5, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->l:Ljava/util/AbstractMap;

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->h:Ljava/util/AbstractMap;

    iget-object v5, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->m:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iput-object v5, v6, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->i:Lcom/dynatrace/android/agent/mixed/WebRequestTraceContext;

    iget-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->a:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "characteristics.has_request"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "url.full"

    iget-object v8, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->a:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lcom/dynatrace/android/agent/mixed/AutoWebRequestEventGenerator;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    goto :goto_2

    :catch_0
    const-string v2, "auto generateRumRequestEvent failed with exception"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_0
    move-object v9, v7

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "auto generateRumRequestEvent failed for, url: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", networkProtocolName: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/dynatrace/android/agent/mixed/BaseWebRequestEventGenerator;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "auto web request event is generated: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    if-nez v9, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "invalid RUM Request event for url "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->f()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-wide v5, v4, Lcom/dynatrace/android/agent/data/Session;->a:J

    iget-wide v7, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->f:J

    add-long v10, v5, v7

    iget-wide v5, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    sub-long v12, v5, v7

    sget-object v2, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;

    invoke-static {v4}, Lcom/dynatrace/android/agent/mixed/SessionInformationGenerator;->a(Lcom/dynatrace/android/agent/data/Session;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v14

    invoke-virtual {v1}, Lcom/dynatrace/android/callback/WebReqStateParms;->g()Lcom/dynatrace/agent/events/enrichment/WebContext;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchEvent: event cannot be sent on this session, sessionInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v8, v2, Lcom/dynatrace/agent/OneAgentFacade;->c:Lcom/dynatrace/agent/RumEventDispatcher;

    invoke-interface/range {v8 .. v15}, Lcom/dynatrace/agent/RumEventDispatcher;->c(Lorg/json/JSONObject;JJLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/events/enrichment/WebContext;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto web request event not supported by: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v1, "web event can\'t be generated: Grail is disabled"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_3
    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    iget v1, v3, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {v3, v1}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    :cond_7
    iget-object v1, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->b:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    if-eqz v0, :cond_8

    iget-wide v2, v0, Lcom/dynatrace/android/agent/WebReqTag;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/dynatrace/android/agent/DTXAutoAction;->F(J)V

    :cond_8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->c:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    const-string v3, "NA&&"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p0, p0, Lcom/dynatrace/android/callback/CbWebReqTracker;->b:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->h()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p0, "NA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

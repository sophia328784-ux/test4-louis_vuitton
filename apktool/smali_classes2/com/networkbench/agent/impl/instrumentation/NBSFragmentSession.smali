.class public Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSFragmentSession"

.field private static beforeFragmentInstanceName:Ljava/lang/String;

.field public static custPageName:Ljava/lang/String;

.field private static fragmentPageSpans:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/n/g;",
            ">;"
        }
    .end annotation
.end field

.field private static fragmentTraces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/type/q;",
            ">;"
        }
    .end annotation
.end field

.field private static storeFragmentPageData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->storeFragmentPageData:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->beforeFragmentInstanceName:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentTraces:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentPageSpans:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentOnCreateViewBegin(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "NBSFragmentSession"

    const-string v1, "onCreateViewBegin real class:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/e;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getInstrumentClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instrument class:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/type/j;

    if-nez v1, :cond_4

    new-instance v1, Lcom/networkbench/agent/impl/data/type/j;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/data/type/j;-><init>()V

    iget-object v3, v1, Lcom/networkbench/agent/impl/data/type/j;->a:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v3, p0, v2}, Lcom/networkbench/agent/impl/data/type/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/view/View;

    const v2, 0xcccccce

    invoke-virtual {p1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    const-string p1, "#onCreateView"

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->g:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v1, p0, p1, v2}, Lcom/networkbench/agent/impl/data/type/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "NBSPageData.lastPageData == null"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, v1, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget p1, p0, Lcom/networkbench/agent/impl/data/type/m;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/data/type/m;->a:I

    return-void

    :cond_4
    iget-object p0, v1, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget p1, p0, Lcom/networkbench/agent/impl/data/type/m;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/data/type/m;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "fragmentOnCreateViewBegin has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fragmentOnCreateViewEnd(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "onCreateViewEnd real class:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/e;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getInstrumentClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSFragmentSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instrument class:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/networkbench/agent/impl/data/type/j;->a:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v2, p0, v1}, Lcom/networkbench/agent/impl/data/type/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v1, p0, Lcom/networkbench/agent/impl/data/type/m;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/type/m;->a:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/j;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "fragmentOnCreateViewEnd has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fragmentPause(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "fragmentSessionPause fragmentName:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUser_action_enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSFragmentSession"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/data/type/j;->a(Z)V

    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentPageSpans:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/n/g;

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/networkbench/agent/impl/n/g;->b(J)V

    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getPageSpanStack()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentPageSpans:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "fragmentSessionPause has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fragmentResumeBegin(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "resumeBegin real class:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/e;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getInstrumentClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSFragmentSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instrument class:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v2, v0, Lcom/networkbench/agent/impl/data/type/j;->c:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v2, p0, v1}, Lcom/networkbench/agent/impl/data/type/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v1, v1, Lcom/networkbench/agent/impl/data/type/m;->c:I

    if-nez v1, :cond_3

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->j:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/agent/impl/data/type/j;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    :cond_3
    iget-object p0, v0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v0, p0, Lcom/networkbench/agent/impl/data/type/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/networkbench/agent/impl/data/type/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "fragmentSessionResumeBegin has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fragmentResumeEnd(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "NBSFragmentSession"

    const-string v1, "resumeEnd real class:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/e;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getInstrumentClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instrument class:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/networkbench/agent/impl/data/type/j;->c:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v3, p0, v2}, Lcom/networkbench/agent/impl/data/type/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v3, v2, Lcom/networkbench/agent/impl/data/type/m;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/networkbench/agent/impl/data/type/m;->c:I

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/j;->a()Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->custPageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iput-object v2, v1, Lcom/networkbench/agent/impl/data/type/p;->h:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->custPageName:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_5

    new-instance v2, Lcom/networkbench/agent/impl/data/d/h;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v1}, Lcom/networkbench/agent/impl/data/d/h;-><init>(ILjava/lang/String;Lcom/networkbench/agent/impl/data/type/p;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->storeFragmentPageData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/h;->o()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "add data in harvest data "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/data/d/j;->a(Lcom/networkbench/agent/impl/data/d/h;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;->storeBitmapDelay(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "fragmentSessionResumeEnd has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fragmentStartBegin(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "startBegin real class:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/e;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getInstrumentClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NBSFragmentSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instrument class:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/networkbench/agent/impl/data/type/j;->b:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v3, v1, v2}, Lcom/networkbench/agent/impl/data/type/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v2, v2, Lcom/networkbench/agent/impl/data/type/m;->b:I

    if-nez v2, :cond_4

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->i:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/data/type/j;->b(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    :cond_4
    iget-object v0, v0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v2, v0, Lcom/networkbench/agent/impl/data/type/m;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/networkbench/agent/impl/data/type/m;->b:I

    :cond_5
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUser_action_enabled()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    return-void

    :cond_6
    new-instance v0, Lcom/networkbench/agent/impl/n/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/n/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/networkbench/agent/impl/n/g;->a(J)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/n/g;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentPageSpans:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "fragmentSessionStarted has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fragmentStartEnd(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "startEnd real class:"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/e;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getInstrumentClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NBSFragmentSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instrument class:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/networkbench/agent/impl/data/type/j;->b:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v2, p0, v1}, Lcom/networkbench/agent/impl/data/type/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    iget v1, p0, Lcom/networkbench/agent/impl/data/type/m;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/type/m;->b:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/j;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "fragmentStartEnd has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getFragmentPageSpans()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/n/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentPageSpans:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static getFragmentTrace(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/j;
    .locals 1

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->fragmentTraces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/type/j;

    return-object p0
.end method

.method private static getInstrumentClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoreFragmentPageData()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/data/d/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->storeFragmentPageData:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static setUserVisibleHint(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "isVisible:"

    :try_start_0
    const-string v1, "NBSFragmentSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", fragmentInstanceName:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ai()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "setUserVisibleHint has an error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

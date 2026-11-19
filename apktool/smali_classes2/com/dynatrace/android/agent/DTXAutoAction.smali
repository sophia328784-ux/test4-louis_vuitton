.class public Lcom/dynatrace/android/agent/DTXAutoAction;
.super Lcom/dynatrace/android/agent/DTXActionImpl;
.source "SourceFile"


# static fields
.field public static final J:Ljava/lang/String;

.field public static K:I

.field public static L:I

.field public static M:Z

.field public static volatile N:Lcom/dynatrace/android/agent/DTXAutoAction;

.field public static final O:Ljava/util/List;


# instance fields
.field public volatile A:I

.field public volatile B:I

.field public volatile C:Z

.field public volatile D:Z

.field public volatile E:Z

.field public volatile F:Z

.field public volatile G:Z

.field public volatile H:Z

.field public volatile I:Ljava/util/Timer;

.field public volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v0, "dtxDTXAutoAction"

    sput-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->J:Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;->a()Lcom/dynatrace/android/agent/conf/Configuration;

    const/16 v0, 0x1f4

    sput v0, Lcom/dynatrace/android/agent/DTXAutoAction;->K:I

    invoke-static {}, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;->a()Lcom/dynatrace/android/agent/conf/Configuration;

    const v0, 0xea60

    sput v0, Lcom/dynatrace/android/agent/DTXAutoAction;->L:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dynatrace/android/agent/DTXAutoAction;->M:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->O:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)V
    .locals 9

    sget-object v2, Lcom/dynatrace/android/agent/EventType;->ACTION_AUTO:Lcom/dynatrace/android/agent/EventType;

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/DTXActionImpl;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZLcom/dynatrace/android/agent/DTXActionImpl;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    iput v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->C:Z

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->D:Z

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->E:Z

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->F:Z

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->G:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->I:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x1

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/dynatrace/android/agent/Core;->a(Ljava/lang/String;IJLcom/dynatrace/android/agent/DTXActionImpl;Lcom/dynatrace/android/agent/data/Session;I[Ljava/lang/String;)Lcom/dynatrace/android/agent/CustomSegment;

    return-void
.end method

.method public static B(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)Lcom/dynatrace/android/agent/DTXAutoAction;
    .locals 3

    new-instance v0, Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/dynatrace/android/agent/DTXAutoAction;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)V

    const-class p1, Lcom/dynatrace/android/agent/DTXAutoAction;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    sput-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/dynatrace/android/agent/DTXAutoAction;->O:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "onUA: new GAUA %s @ %d"

    iget-wide v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final A(Ljava/util/Timer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->G:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->H:Z

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUA: cancel timer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " graceTimeOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->H:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    :cond_1
    return-void
.end method

.method public final declared-synchronized C(Z)Ljava/util/Timer;
    .locals 1

    monitor-enter p0

    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->I:Ljava/util/Timer;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->I:Ljava/util/Timer;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXAutoAction;->A(Ljava/util/Timer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    sget-object p1, Lcom/dynatrace/android/agent/DTXAutoAction;->J:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->I:Ljava/util/Timer;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->I:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized D()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "onUA: new eT=%d dur=%d"

    iget-wide v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    iget-wide v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final E(I)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->H:Z

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUA: onTimerPop for %s intv=%d WR=%d action=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->G:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p0, v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->y(Lcom/dynatrace/android/agent/DTXAutoAction;Z)V

    :cond_1
    iget v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    goto/16 :goto_3

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->G:Z

    if-nez v1, :cond_c

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->G:Z

    iget-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    if-lez p1, :cond_8

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->r()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/android/agent/CustomSegment;

    instance-of v4, v3, Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    if-eqz v4, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    instance-of v4, v3, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    move-object v1, v3

    goto :goto_1

    :cond_6
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_7

    const-string p1, "onUA: detected pending AppStart action after grace period; dropping AppStart action"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_7
    iget-object p1, v1, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXAutoAction;->G(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->F:Z

    invoke-virtual {v1}, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->y()V

    :cond_8
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUA: starting waiting period for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_9
    sget p1, Lcom/dynatrace/android/agent/DTXAutoAction;->L:I

    int-to-long v1, p1

    iget-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-lez p1, :cond_a

    const/16 p1, 0x3e8

    goto :goto_2

    :cond_a
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/16 v5, 0x64

    if-gez p1, :cond_b

    move-wide v1, v3

    :cond_b
    move p1, v5

    :goto_2
    long-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    int-to-long v3, p1

    const/4 v7, 0x1

    move-wide v5, v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/dynatrace/android/agent/DTXAutoAction;->I(JJZI)V

    return-void

    :cond_c
    move-object v2, p0

    if-lez p1, :cond_d

    return-void

    :cond_d
    :goto_3
    invoke-virtual {v2}, Lcom/dynatrace/android/agent/DTXAutoAction;->z()V

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_e

    iget-object p0, v2, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onUA: closing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v2}, Lcom/dynatrace/android/agent/DTXAutoAction;->a()V

    return-void
.end method

.method public final F(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    iget v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez v1, :cond_1

    iget-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->D()V

    iget p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    :cond_1
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MT_3_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    :goto_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->r()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/agent/CustomSegment;

    iget-object v2, v1, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/CalloutTable;->e(Lcom/dynatrace/android/agent/CustomSegment;)V

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_2

    const-string p0, "Removing child: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final H(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->z()V

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXAutoAction;->E(I)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUA: start grace period for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    int-to-long v2, p1

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-wide v4, v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/dynatrace/android/agent/DTXAutoAction;->I(JJZI)V

    return-void
.end method

.method public final I(JJZI)V
    .locals 6

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onUA: startTimer for %s delay=%dms period=%dms #period=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    move v0, p6

    move-wide v4, p1

    move p1, p5

    move-wide p5, p3

    move-wide p3, v4

    new-instance p2, Lcom/dynatrace/android/agent/DTXAutoAction$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/dynatrace/android/agent/DTXAutoAction$1;-><init>(Lcom/dynatrace/android/agent/DTXAutoAction;IZ)V

    const/4 p1, 0x3

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXAutoAction;->C(Z)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void
.end method

.method public final a()V
    .locals 10

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->z()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->G:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->H:Z

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v1}, Lcom/dynatrace/android/agent/DTXAutoAction;->y(Lcom/dynatrace/android/agent/DTXAutoAction;Z)V

    sget-object v2, Lcom/dynatrace/android/agent/DTXAutoAction;->O:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->C:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->D:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->E:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "onUA: leave %s - abandon=%b WR=%b action=%b modified=%b eT=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->C:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->D:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    :cond_2
    sget-boolean v2, Lcom/dynatrace/android/agent/DTXAutoAction;->M:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->E:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    if-nez v3, :cond_5

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->F:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUA: dropping AUA "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after already dropping AppStart action"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->r()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v1

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dynatrace/android/agent/CustomSegment;

    instance-of v7, v6, Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    if-eqz v7, :cond_7

    move v5, v0

    goto :goto_2

    :cond_7
    instance-of v7, v6, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    if-eqz v7, :cond_6

    check-cast v6, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;

    move-object v4, v6

    goto :goto_2

    :cond_8
    if-nez v5, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->y()V

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUA: dropping pending AppStart action because AUA "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is closed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v1, v2

    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/DTXActionImpl;->v(Z)V

    return-void
.end method

.method public final h()Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "et="

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&na="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&it="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&ca="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&t0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&t1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    iget-wide v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&mo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&fw="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->w:Z

    if-eqz p0, :cond_0

    const-string v1, "1"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final j()J
    .locals 5

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->C:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    iget-wide v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onUA (empty): use adjusted eT=%d dur=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    return-wide v0

    :cond_2
    return-wide v2

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    iget-wide v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onUA: use adjusted eT=%d dur=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    iget-wide v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->z:J

    return-wide v0
.end method

.method public final s()Lcom/dynatrace/android/agent/WebReqTag;
    .locals 1

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->H:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->s()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/dynatrace/android/agent/CustomSegment;)V
    .locals 4

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUA: add child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/dynatrace/android/agent/CustomSegment;->k()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/dynatrace/android/agent/DTXAutoAction$2;->a:[I

    iget-object p1, p1, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    :pswitch_0
    iput-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->E:Z

    return-void

    :cond_1
    iget p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->A:I

    iput-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->C:Z

    return-void

    :cond_2
    iget p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    iput-boolean v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->D:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized y(Lcom/dynatrace/android/agent/DTXAutoAction;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/dynatrace/android/agent/DTXAutoAction;->O:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->C(Z)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->A(Ljava/util/Timer;)V

    return-void
.end method

.class public Lcom/dynatrace/android/agent/CalloutTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/CalloutTable$CTElement;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/DTXActionImpl;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "Add segment %s (id=%d pid=%d) currTimeout=%s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->a:J

    iget-wide v3, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    if-ge v3, v4, :cond_3

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v4, v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v4, v1

    iget-object v5, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    if-ltz v4, :cond_2

    :try_start_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v5, v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    sub-long/2addr v5, v1

    iput-wide v5, v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    iget-object v4, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    invoke-direct {v5, p0, p1, v1, v2}, Lcom/dynatrace/android/agent/CalloutTable$CTElement;-><init>(Lcom/dynatrace/android/agent/CalloutTable;Lcom/dynatrace/android/agent/CustomSegment;J)V

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v4, v4, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    sub-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/dynatrace/android/agent/CalloutTable$CTElement;-><init>(Lcom/dynatrace/android/agent/CalloutTable;Lcom/dynatrace/android/agent/CustomSegment;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->a:J

    iput-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(J)V
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->a:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/dynatrace/android/agent/CalloutTable;->a:J

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    sub-long/2addr v2, p1

    iget-wide v4, v1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    :cond_1
    iput-wide p1, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lcom/dynatrace/android/agent/CustomSegment;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-object v2, v2, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 p1, v1, 0x1

    iget-object v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-object v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v2, v2, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    iget-wide v4, p1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-wide v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v2, p1, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    iput-wide v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    const-string v3, ";"

    invoke-static {v1, v2, v3, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v4, v2, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    invoke-static {v4, v5, v3, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

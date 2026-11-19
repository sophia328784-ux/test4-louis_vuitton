.class public Lcom/dynatrace/android/agent/data/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Lcom/dynatrace/android/agent/data/RandomFactory;

.field public static volatile n:Lcom/dynatrace/android/agent/data/Session;


# instance fields
.field public final a:J

.field public b:J

.field public c:I

.field public d:I

.field public e:Lcom/dynatrace/android/agent/data/SessionState;

.field public volatile f:I

.field public final g:Ljava/util/Random;

.field public volatile h:J

.field public i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

.field public final j:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

.field public k:Z

.field public volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Lcom/dynatrace/android/agent/data/RandomFactory;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/data/RandomFactory;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/data/Session;->m:Lcom/dynatrace/android/agent/data/RandomFactory;

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    return-void
.end method

.method public constructor <init>(JLjava/util/Random;Lcom/dynatrace/android/agent/conf/PrivacyRules;Lcom/dynatrace/android/agent/conf/RageTapConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dynatrace/android/agent/data/Session;->d:I

    sget-object v0, Lcom/dynatrace/android/agent/data/SessionState;->CREATED:Lcom/dynatrace/android/agent/data/SessionState;

    iput-object v0, p0, Lcom/dynatrace/android/agent/data/Session;->e:Lcom/dynatrace/android/agent/data/SessionState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/data/Session;->k:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/data/Session;->l:Z

    iput-wide p1, p0, Lcom/dynatrace/android/agent/data/Session;->a:J

    iput-wide p1, p0, Lcom/dynatrace/android/agent/data/Session;->h:J

    iput-object p3, p0, Lcom/dynatrace/android/agent/data/Session;->g:Ljava/util/Random;

    iput v0, p0, Lcom/dynatrace/android/agent/data/Session;->f:I

    iput-object p4, p0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    iput-object p5, p0, Lcom/dynatrace/android/agent/data/Session;->j:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    return-void
.end method

.method public static a()Lcom/dynatrace/android/agent/data/Session;
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    return-object v0

    :cond_0
    sget-object v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->b:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    invoke-static {v0}, Lcom/dynatrace/android/agent/data/Session;->i(Lcom/dynatrace/android/agent/conf/PrivacyRules;)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    return-object v0
.end method

.method public static b(JZ)Lcom/dynatrace/android/agent/data/Session;
    .locals 7

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    if-nez p2, :cond_1

    sget-object p2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object p2, p2, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-object p2, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iget-wide v1, v0, Lcom/dynatrace/android/agent/data/Session;->h:J

    iget v3, p2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    cmp-long v1, v3, p0

    if-ltz v1, :cond_0

    iget-wide v1, v0, Lcom/dynatrace/android/agent/data/Session;->a:J

    iget p2, p2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    mul-int/lit8 p2, p2, 0x3c

    int-to-long v3, p2

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    cmp-long p2, v3, p0

    if-gez p2, :cond_1

    :cond_0
    iget-object p2, v0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    const/4 v0, 0x1

    invoke-static {v0, p2, p0, p1}, Lcom/dynatrace/android/agent/Core;->i(ZLcom/dynatrace/android/agent/conf/PrivacyRules;J)V

    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    :cond_1
    iput-wide p0, v0, Lcom/dynatrace/android/agent/data/Session;->h:J

    return-object v0
.end method

.method public static h(Lcom/dynatrace/android/agent/conf/PrivacyRules;J)Lcom/dynatrace/android/agent/data/Session;
    .locals 8

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    sget-object v1, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/data/Session;->l:Z

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    :goto_0
    new-instance v2, Lcom/dynatrace/android/agent/data/Session;

    sget-object v3, Lcom/dynatrace/android/agent/data/Session;->m:Lcom/dynatrace/android/agent/data/RandomFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iget-object v7, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->f:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    move-object v6, p0

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/dynatrace/android/agent/data/Session;-><init>(JLjava/util/Random;Lcom/dynatrace/android/agent/conf/PrivacyRules;Lcom/dynatrace/android/agent/conf/RageTapConfiguration;)V

    sput-object v2, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    sget-object p0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/data/Session;->k:Z

    sget-object p0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/data/Session;->l:Z

    sget-object p0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    return-object p0
.end method

.method public static i(Lcom/dynatrace/android/agent/conf/PrivacyRules;)Lcom/dynatrace/android/agent/data/Session;
    .locals 3

    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    if-nez v0, :cond_1

    const-class v0, Lcom/dynatrace/android/agent/data/Session;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    if-nez v1, :cond_0

    sget-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/dynatrace/android/agent/data/Session;->h(Lcom/dynatrace/android/agent/conf/PrivacyRules;J)Lcom/dynatrace/android/agent/data/Session;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    sget-object p0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    return-object p0
.end method


# virtual methods
.method public final c()J
    .locals 4

    sget-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dynatrace/android/agent/data/Session;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/android/agent/data/Session;->e:Lcom/dynatrace/android/agent/data/SessionState;

    sget-object v1, Lcom/dynatrace/android/agent/data/SessionState;->CREATED:Lcom/dynatrace/android/agent/data/SessionState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->k:I

    iget p1, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "Session disabled by overload prevention (mp=0)"

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_5

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/dynatrace/android/agent/data/Session;->g:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ge v3, p1, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session disabled by traffic control: tc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    move v3, v1

    :cond_5
    if-eqz v3, :cond_6

    sget-object p1, Lcom/dynatrace/android/agent/data/SessionState;->ENABLED:Lcom/dynatrace/android/agent/data/SessionState;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/dynatrace/android/agent/data/SessionState;->DISABLED:Lcom/dynatrace/android/agent/data/SessionState;

    :goto_1
    iput-object p1, p0, Lcom/dynatrace/android/agent/data/Session;->e:Lcom/dynatrace/android/agent/data/SessionState;

    iput v0, p0, Lcom/dynatrace/android/agent/data/Session;->d:I

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/Session;->e:Lcom/dynatrace/android/agent/data/SessionState;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/data/SessionState;->a()Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/Session;->e:Lcom/dynatrace/android/agent/data/SessionState;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/data/SessionState;->b()Z

    move-result p0

    return p0
.end method

.method public final g()Z
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/Session;->e:Lcom/dynatrace/android/agent/data/SessionState;

    sget-object v0, Lcom/dynatrace/android/agent/data/SessionState;->DISABLED:Lcom/dynatrace/android/agent/data/SessionState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized j(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/dynatrace/android/agent/data/Session;->h:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/dynatrace/android/agent/data/Session;->h:J
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

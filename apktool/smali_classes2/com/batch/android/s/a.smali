.class public Lcom/batch/android/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/s/a$b;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "CampaignManager"

.field private static final m:Ljava/lang/String; = "com.batch.localcampaigns.persist.json"

.field private static final n:I = 0xea60

.field private static final o:J

.field private static final p:I = 0xa

.field private static final q:I = 0x3a98

.field private static final r:I = 0x7530


# instance fields
.field private final a:Lcom/batch/android/e/e;

.field private final b:Lcom/batch/android/s/d;

.field private final c:Lcom/batch/android/v/b;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/batch/android/g1/c$b;

.field private f:Lcom/batch/android/g1/c$c;

.field private final g:Ljava/lang/Object;

.field private h:J

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/t/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x4d3f6400

    sput-wide v0, Lcom/batch/android/s/a;->o:J

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/s/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/batch/android/e/i0;

    invoke-direct {v0}, Lcom/batch/android/e/i0;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    new-instance v0, Lcom/batch/android/v/a;

    invoke-direct {v0}, Lcom/batch/android/v/a;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/a;->c:Lcom/batch/android/v/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/s/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/a;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    iput-object p1, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/t/b;Lcom/batch/android/t/b;)I
    .locals 0

    .line 240
    iget p0, p0, Lcom/batch/android/t/b;->d:I

    .line 241
    iget p1, p1, Lcom/batch/android/t/b;->d:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic a(Landroid/content/Context;Lcom/batch/android/g1/c;)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/s/a;->b(Landroid/content/Context;Lcom/batch/android/g1/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/s/a;Landroid/content/Context;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/batch/android/s/a;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/t/b;Lcom/batch/android/t/b;)I
    .locals 0

    .line 251
    invoke-static {p0, p1}, Lcom/batch/android/s/a;->a(Lcom/batch/android/t/b;Lcom/batch/android/t/b;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/batch/android/s/a;Landroid/content/Context;Lcom/batch/android/g1/c;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/batch/android/s/a;->a(Landroid/content/Context;Lcom/batch/android/g1/c;)V

    return-void
.end method

.method private synthetic d(Landroid/content/Context;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/batch/android/s/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static l()Lcom/batch/android/s/a;
    .locals 2

    new-instance v0, Lcom/batch/android/s/a;

    new-instance v1, Lcom/batch/android/s/d;

    invoke-direct {v1}, Lcom/batch/android/s/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/batch/android/s/a;-><init>(Lcom/batch/android/s/d;)V

    return-object v0
.end method

.method private n()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/t/b;

    iget-object v3, v3, Lcom/batch/android/t/b;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/t/b$c;

    instance-of v5, v4, Lcom/batch/android/y/a;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/batch/android/y/a;

    iget-object v4, v4, Lcom/batch/android/y/a;->a:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/batch/android/s/a;->j:Ljava/util/Set;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b;)Lcom/batch/android/t/b$b$a;
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-boolean v1, p1, Lcom/batch/android/t/b;->q:Z

    if-nez v1, :cond_0

    .line 260
    sget-object p0, Lcom/batch/android/t/b$b$a;->b:Lcom/batch/android/t/b$b$a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    sget-object p0, Lcom/batch/android/t/b$b$a;->d:Lcom/batch/android/t/b$b$a;

    monitor-exit v0

    return-object p0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/t/b$b;

    if-nez p1, :cond_2

    .line 264
    sget-object p0, Lcom/batch/android/t/b$b$a;->d:Lcom/batch/android/t/b$b$a;

    monitor-exit v0

    return-object p0

    .line 265
    :cond_2
    iget-object p0, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {p0}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/i/a;->a()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/batch/android/t/b$b;->a:J

    const-wide/16 v5, 0x7530

    add-long/2addr v3, v5

    cmp-long p0, v1, v3

    if-ltz p0, :cond_3

    .line 266
    sget-object p0, Lcom/batch/android/t/b$b$a;->d:Lcom/batch/android/t/b$b$a;

    monitor-exit v0

    return-object p0

    .line 267
    :cond_3
    iget-boolean p0, p1, Lcom/batch/android/t/b$b;->b:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/batch/android/t/b$b$a;->b:Lcom/batch/android/t/b$b$a;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/batch/android/t/b$b$a;->c:Lcom/batch/android/t/b$b$a;

    :goto_0
    monitor-exit v0

    return-object p0

    .line 268
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/batch/android/x/d;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/x/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v2, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/t/b;

    .line 231
    iget-object v4, v3, Lcom/batch/android/t/b;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/batch/android/t/b$c;

    if-eqz v5, :cond_1

    .line 232
    invoke-interface {p1, v5}, Lcom/batch/android/x/d;->a(Lcom/batch/android/t/b$c;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {p0, v3}, Lcom/batch/android/s/a;->b(Lcom/batch/android/t/b;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 235
    :cond_3
    new-instance p0, Lx5;

    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lx5;-><init>(I)V

    .line 236
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    .line 237
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 238
    monitor-exit v0

    return-object v1

    .line 239
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    .line 270
    const-string v0, "Campaign "

    iget-object v1, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v1}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v1

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/t/b;

    .line 273
    iget-object v4, v3, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    const-string v5, "CampaignManager"

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/a;)I

    move-result v4

    if-gez v4, :cond_0

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring campaign "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since it is past its end_date"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 275
    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/batch/android/s/a;->a(Lcom/batch/android/t/b;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is over capping."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/s/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "View tracker is unavailable, campaign "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " capping can\'t be evaluated."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1
    iget-object v4, v3, Lcom/batch/android/t/b;->c:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    sget v4, Lcom/batch/android/e/a0;->k:I

    iget-object v6, v3, Lcom/batch/android/t/b;->c:Ljava/lang/Integer;

    .line 280
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v4, v6, :cond_2

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is over max API level"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v2
.end method

.method public a(I)V
    .locals 4

    if-gtz p1, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 298
    :goto_0
    iget-object p1, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {p1}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/i/a;->a()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/batch/android/s/a;->h:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 295
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/s/a;->c:Lcom/batch/android/v/b;

    const-string v0, "com.batch.localcampaigns.persist.json"

    invoke-interface {p0, p1, v0}, Lcom/batch/android/v/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/v/c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 296
    const-string p1, "CampaignManager"

    const-string v0, "Can\'t delete local campaigns"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/v/c;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 224
    iget-object v1, p0, Lcom/batch/android/s/a;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 225
    iget-object v1, p0, Lcom/batch/android/s/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p2, :cond_0

    .line 226
    iget-object p0, p0, Lcom/batch/android/s/a;->c:Lcom/batch/android/v/b;

    const-string p2, "com.batch.localcampaigns.persist.json"

    invoke-interface {p0, p1, p2}, Lcom/batch/android/v/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 227
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/batch/android/g1/c;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Lcom/batch/android/g1/c;->g()Lcom/batch/android/g1/c$c;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/s/a;->f:Lcom/batch/android/g1/c$c;

    .line 218
    invoke-virtual {p1}, Lcom/batch/android/g1/c;->e()Lcom/batch/android/g1/c$b;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/s/a;->e:Lcom/batch/android/g1/c$b;

    .line 219
    invoke-virtual {p1}, Lcom/batch/android/g1/c;->c()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/batch/android/s/a;->a(Ljava/util/List;Z)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/util/List;Lcom/batch/android/s/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;",
            "Lcom/batch/android/s/a$b;",
            ")V"
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {p2, v1}, Lcom/batch/android/s/a$b;->a(Lcom/batch/android/t/b;)V

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/s/a;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-interface {p2, v1}, Lcom/batch/android/s/a$b;->a(Lcom/batch/android/t/b;)V

    return-void

    .line 246
    :cond_1
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/s/a;->f:Lcom/batch/android/g1/c$c;

    new-instance v2, Lcom/batch/android/s/a$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/batch/android/s/a$a;-><init>(Lcom/batch/android/s/a;Lcom/batch/android/s/a$b;Ljava/util/List;)V

    .line 247
    invoke-static {v0, p1, v1, v2}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;Ljava/util/List;Lcom/batch/android/g1/c$c;Lcom/batch/android/n1/d;)Z

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 250
    iget-object v1, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v1}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/a;->a()J

    move-result-wide v1

    .line 251
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/t/b;

    .line 253
    iget-boolean v4, v3, Lcom/batch/android/t/b;->q:Z

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p3, :cond_1

    .line 255
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 256
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    iget-object v3, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    new-instance v6, Lcom/batch/android/t/b$b;

    invoke-direct {v6, v1, v2, v4}, Lcom/batch/android/t/b$b;-><init>(JZ)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/batch/android/s/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/t/b;

    iget-object v1, v1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    iget-object p2, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Lcom/batch/android/s/a;->a(Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    iget-object p1, p0, Lcom/batch/android/s/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/batch/android/s/a;->n()V

    sget-object p1, Lcom/batch/android/LoggerLevel;->INTERNAL:Lcom/batch/android/LoggerLevel;

    invoke-static {p1}, Lcom/batch/android/e/t;->a(Lcom/batch/android/LoggerLevel;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "CampaignManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " campaign(s)"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/batch/android/t/b;

    iget-object v1, p2, Lcom/batch/android/t/b;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string p2, "CampaignManager"

    invoke-static {p2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "CampaignManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/batch/android/s/a;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "CampaignManager"

    const-string p1, "No events to watch"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p1, "CampaignManager"

    const-string p2, "Watching events: "

    invoke-static {p1, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/s/a;->j:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "CampaignManager"

    invoke-static {p2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()Z
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/batch/android/s/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public a(Lcom/batch/android/t/b;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/batch/android/s/a;->f:Lcom/batch/android/g1/c$c;

    sget-object v1, Lcom/batch/android/g1/c$c;->c:Lcom/batch/android/g1/c$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 284
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 285
    :cond_0
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    iget-object v3, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/batch/android/s/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    iget-object v1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/s/c;->b(Ljava/lang/String;)Lcom/batch/android/s/e$a;

    move-result-object v0

    .line 288
    :goto_0
    iget-object v1, p1, Lcom/batch/android/t/b;->h:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    .line 289
    iget v1, v0, Lcom/batch/android/s/e$a;->c:I

    iget-object v4, p1, Lcom/batch/android/t/b;->h:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v1, v4, :cond_2

    return v3

    :cond_2
    if-nez p2, :cond_3

    .line 290
    iget p2, p1, Lcom/batch/android/t/b;->g:I

    if-lez p2, :cond_3

    iget-object p0, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    .line 291
    invoke-interface {p0}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/i/a;->a()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/batch/android/s/e$a;->d:J

    iget p0, p1, Lcom/batch/android/t/b;->g:I

    int-to-long p0, p0

    .line 292
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    cmp-long p0, v4, p0

    if-gtz p0, :cond_3

    .line 293
    const-string p0, "CampaignManager"

    const-string p1, "Campaign\'s minimum display interval has not been reached"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    return v2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 269
    iget-object p0, p0, Lcom/batch/android/s/a;->j:Ljava/util/Set;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/util/List;)Lcom/batch/android/t/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;)",
            "Lcom/batch/android/t/b;"
        }
    .end annotation

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/t/b;

    .line 247
    iget-boolean v0, p1, Lcom/batch/android/t/b;->q:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 250
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 261
    invoke-static {p1}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lw21;

    const/16 v2, 0x16

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/batch/android/g1/c;)V
    .locals 5

    const-string v0, "CampaignManager"

    .line 252
    :try_start_0
    new-instance v1, Lcom/batch/android/i1/a;

    invoke-direct {v1}, Lcom/batch/android/i1/a;-><init>()V

    .line 253
    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 254
    const-string v3, "campaigns_version"

    invoke-virtual {p2}, Lcom/batch/android/g1/c;->g()Lcom/batch/android/g1/c$c;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 255
    const-string v3, "campaigns"

    invoke-virtual {p2}, Lcom/batch/android/g1/c;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/batch/android/i1/a;->a(Ljava/util/List;)Lcom/batch/android/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 256
    const-string v3, "cappings"

    invoke-virtual {p2}, Lcom/batch/android/g1/c;->e()Lcom/batch/android/g1/c$b;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/batch/android/i1/a;->a(Lcom/batch/android/g1/c$b;)Lcom/batch/android/json/JSONObject;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/batch/android/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 257
    const-string p2, "cache_date"

    iget-object v1, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v1}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/a;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Lcom/batch/android/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 258
    iget-object p0, p0, Lcom/batch/android/s/a;->c:Lcom/batch/android/v/b;

    const-string p2, "com.batch.localcampaigns.persist.json"

    invoke-interface {p0, p1, v2, p2}, Lcom/batch/android/v/b;->a(Landroid/content/Context;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/v/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 259
    :goto_0
    const-string p1, "Can\'t serialize local campaigns response before the save operation"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 260
    :goto_1
    const-string p1, "Can\'t persist local campaigns response"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public b(Lcom/batch/android/t/b;)Z
    .locals 5

    iget-object v0, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v0}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v0

    iget-object v1, p1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    const-string v2, "Ignoring campaign "

    const-string v3, "CampaignManager"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/a;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since it has not begun yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    iget-object v1, p1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/batch/android/i/a;->a(Lcom/batch/android/i/a;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since it is past its end_date"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/batch/android/s/a;->a(Lcom/batch/android/t/b;Z)Z

    move-result v0
    :try_end_0
    .catch Lcom/batch/android/s/f; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Campaign "

    if-eqz v0, :cond_2

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is over capping/minimum display interval."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/batch/android/s/f; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    :cond_2
    iget-object v0, p1, Lcom/batch/android/t/b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    sget v0, Lcom/batch/android/e/a0;->k:I

    iget-object v2, p1, Lcom/batch/android/t/b;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is over max API level"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    iget-object v0, p1, Lcom/batch/android/t/b;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget v2, Lcom/batch/android/e/a0;->k:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has a minimum API level too high"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    iget-object v0, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/batch/android/s/a;->c(Lcom/batch/android/t/b;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is within quiet hours"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5
    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "View tracker is unavailable. Campaign "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " will be prevented from displaying."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/t/b;

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    iget-boolean v2, v1, Lcom/batch/android/t/b;->q:Z

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public c()V
    .locals 2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/s/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    invoke-virtual {p0}, Lcom/batch/android/s/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 124
    const-string v0, "CampaignManager"

    const-string v1, "Error while closing DB"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/batch/android/g1/c;)V
    .locals 3

    .line 119
    invoke-static {p1}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lb5;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, p1, p2, v2}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/e/k0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/s/a;->c:Lcom/batch/android/v/b;

    const-string v0, "com.batch.localcampaigns.persist.json"

    invoke-interface {p0, p1, v0}, Lcom/batch/android/v/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/batch/android/v/c; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 121
    const-string p1, "CampaignManager"

    const-string v0, "Can\'t determine if there is saved local campaigns"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public c(Lcom/batch/android/t/b;)Z
    .locals 5

    iget-object v0, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-object p0, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {p0}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/i/a;->a()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/batch/android/t/a;->a(Ljava/util/Calendar;)Lcom/batch/android/t/a;

    move-result-object p0

    iget-object v2, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v2}, Lcom/batch/android/t/c;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v2}, Lcom/batch/android/t/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v0

    iget-object v0, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v0}, Lcom/batch/android/t/c;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v2, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v2}, Lcom/batch/android/t/c;->j()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v0}, Lcom/batch/android/t/c;->g()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object p1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {p1}, Lcom/batch/android/t/c;->h()I

    move-result p1

    add-int/2addr p1, v0

    if-le v2, p1, :cond_4

    if-ge p0, v2, :cond_3

    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3

    :cond_4
    if-lt p0, v2, :cond_5

    if-ge p0, p1, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/batch/android/s/a;->d:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e()Lcom/batch/android/g1/c$c;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/s/a;->f:Lcom/batch/android/g1/c$c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e(Landroid/content/Context;)V
    .locals 6

    const-string v0, "Can\'t convert json to LocalCampaignsResponse : "

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/s/a;->c:Lcom/batch/android/v/b;

    const-string v2, "com.batch.localcampaigns.persist.json"

    invoke-interface {v1, p1, v2}, Lcom/batch/android/v/b;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lcom/batch/android/v/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "cache_date"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->reallyOptLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/batch/android/s/a;->o:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v4}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/i/a;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const-string v0, "CampaignManager"

    const-string v1, "Local campaign cache is too old, deleting it."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/s/a;->b(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance p1, Lcom/batch/android/h1/c;

    invoke-direct {p1, v1}, Lcom/batch/android/h1/c;-><init>(Lcom/batch/android/json/JSONObject;)V

    iget-object v1, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1}, Lcom/batch/android/h1/c;->e()Lcom/batch/android/g1/c$c;

    move-result-object v2

    iput-object v2, p0, Lcom/batch/android/s/a;->f:Lcom/batch/android/g1/c$c;

    invoke-virtual {p1}, Lcom/batch/android/h1/c;->d()Lcom/batch/android/g1/c$b;

    move-result-object v2

    iput-object v2, p0, Lcom/batch/android/s/a;->e:Lcom/batch/android/g1/c$b;

    iget-object v2, p0, Lcom/batch/android/s/a;->f:Lcom/batch/android/g1/c$c;

    sget-object v3, Lcom/batch/android/g1/c$c;->c:Lcom/batch/android/g1/c$c;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {p1, v2}, Lcom/batch/android/h1/c;->a(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/batch/android/s/a;->a(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "CampaignManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    :goto_2
    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "CampaignManager"

    const-string v0, "Can\'t load saved local campaigns"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f()Lcom/batch/android/g1/c$b;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/s/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/s/a;->e:Lcom/batch/android/g1/c$b;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/t/b$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/s/a;->k:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public h()Lcom/batch/android/s/e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    return-object p0
.end method

.method public declared-synchronized i()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v0}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/s/a;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    monitor-exit p0

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()Z
    .locals 9

    iget-object v0, p0, Lcom/batch/android/s/a;->e:Lcom/batch/android/g1/c$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/g1/c$b;->a()Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "CampaignManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    invoke-virtual {v0}, Lcom/batch/android/s/d;->f()I

    move-result v0

    iget-object v4, p0, Lcom/batch/android/s/a;->e:Lcom/batch/android/g1/c$b;

    invoke-virtual {v4}, Lcom/batch/android/g1/c$b;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v0, v4, :cond_1

    const-string p0, "Session capping has been reached"

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/batch/android/s/a;->e:Lcom/batch/android/g1/c$b;

    invoke-virtual {v0}, Lcom/batch/android/g1/c$b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/g1/c$b$a;

    invoke-virtual {v4}, Lcom/batch/android/g1/c$b$a;->a()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/batch/android/g1/c$b$a;->b()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/batch/android/s/a;->a:Lcom/batch/android/e/e;

    invoke-interface {v5}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/i/a;->a()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/batch/android/g1/c$b$a;->a()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    :try_start_0
    iget-object v7, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    invoke-virtual {v7, v5, v6}, Lcom/batch/android/s/c;->a(J)I

    move-result v5

    invoke-virtual {v4}, Lcom/batch/android/g1/c$b$a;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v5, v4, :cond_2

    const-string p0, "Time-based cappings have been reached"

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/s/f; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "View tracker is unavailable. Campaigns will be prevented from displaying."

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    invoke-virtual {v1}, Lcom/batch/android/s/c;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/s/a;->b:Lcom/batch/android/s/d;

    invoke-virtual {p0, v0}, Lcom/batch/android/s/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/batch/android/s/a;->a(I)V

    return-void
.end method

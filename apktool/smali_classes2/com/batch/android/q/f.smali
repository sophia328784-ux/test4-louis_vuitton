.class public Lcom/batch/android/q/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/q/f$e;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "InboxFetcher"

.field private static p:Z = false


# instance fields
.field private a:Lcom/batch/android/v0/k;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/batch/android/q/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/q/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Ljava/util/concurrent/Executor;

.field private l:Z

.field private m:Lcom/batch/android/q/d;

.field private n:Z


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/k;Lcom/batch/android/q/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/batch/android/q/f;->c:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    const/16 v0, 0x14

    .line 71
    iput v0, p0, Lcom/batch/android/q/f;->i:I

    const/16 v0, 0xc8

    .line 72
    iput v0, p0, Lcom/batch/android/q/f;->j:I

    .line 73
    new-instance v0, Lcom/batch/android/e/v;

    const-string v1, "inbox.fetcher"

    invoke-direct {v0, v1}, Lcom/batch/android/e/v;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q/f;->k:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/batch/android/q/f;->l:Z

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/batch/android/q/f;->n:Z

    .line 76
    iput-object p1, p0, Lcom/batch/android/q/f;->a:Lcom/batch/android/v0/k;

    .line 77
    iput-object p3, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    .line 78
    sget-object p1, Lcom/batch/android/q/a;->c:Lcom/batch/android/q/a;

    iput-object p1, p0, Lcom/batch/android/q/f;->e:Lcom/batch/android/q/a;

    .line 79
    iput-object p4, p0, Lcom/batch/android/q/f;->f:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/batch/android/q/f;->m:Lcom/batch/android/q/d;

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2, p1, p4}, Lcom/batch/android/q/d;->a(Lcom/batch/android/q/a;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/batch/android/q/f;->d:J

    return-void

    :cond_0
    const-wide/16 p1, -0x1

    .line 82
    iput-wide p1, p0, Lcom/batch/android/q/f;->d:J

    return-void
.end method

.method private constructor <init>(Lcom/batch/android/v0/k;Lcom/batch/android/q/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/q/f;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    const/16 v0, 0x14

    iput v0, p0, Lcom/batch/android/q/f;->i:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/batch/android/q/f;->j:I

    new-instance v0, Lcom/batch/android/e/v;

    const-string v1, "inbox.fetcher"

    invoke-direct {v0, v1}, Lcom/batch/android/e/v;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q/f;->k:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/q/f;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/q/f;->n:Z

    iput-object p1, p0, Lcom/batch/android/q/f;->a:Lcom/batch/android/v0/k;

    iput-object p3, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    sget-object p1, Lcom/batch/android/q/a;->d:Lcom/batch/android/q/a;

    iput-object p1, p0, Lcom/batch/android/q/f;->e:Lcom/batch/android/q/a;

    iput-object p4, p0, Lcom/batch/android/q/f;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/batch/android/q/f;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/q/f;->m:Lcom/batch/android/q/d;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p4}, Lcom/batch/android/q/d;->a(Lcom/batch/android/q/a;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/batch/android/q/f;->d:J

    return-void

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/batch/android/q/f;->d:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/q/f;
    .locals 3

    .line 276
    new-instance v0, Lcom/batch/android/q/f;

    .line 277
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v1

    .line 278
    invoke-static {p0}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/batch/android/q/f;-><init>(Lcom/batch/android/v0/k;Lcom/batch/android/q/d;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/q/f;
    .locals 6

    .line 281
    new-instance v0, Lcom/batch/android/q/f;

    .line 282
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v1

    .line 283
    invoke-static {p0}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/q/f;-><init>(Lcom/batch/android/v0/k;Lcom/batch/android/q/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/batch/android/q/f;
    .locals 6

    if-eqz p3, :cond_0

    .line 284
    invoke-static {p0, p1, p2}, Lcom/batch/android/n/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/q/f;

    move-result-object p0

    return-object p0

    .line 285
    :cond_0
    new-instance v0, Lcom/batch/android/q/f;

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/q/f;-><init>(Lcom/batch/android/v0/k;Lcom/batch/android/q/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/batch/android/q/f;
    .locals 2

    if-eqz p2, :cond_0

    .line 279
    invoke-static {p0, p1}, Lcom/batch/android/n/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/q/f;

    move-result-object p0

    return-object p0

    .line 280
    :cond_0
    new-instance p2, Lcom/batch/android/q/f;

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/batch/android/q/f;-><init>(Lcom/batch/android/v0/k;Lcom/batch/android/q/d;Landroid/content/Context;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/batch/android/q/f;)Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/batch/android/q/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/batch/android/q/f;Lcom/batch/android/q/i;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/q/f$e;
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/i;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/batch/android/q/f;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/batch/android/q/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/batch/android/q/g;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/q/g;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_3

    .line 345
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v2, p1, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object p1, p1, Lcom/batch/android/q/g;->i:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/batch/android/q/j;

    .line 350
    iget-object v4, v3, Lcom/batch/android/q/j;->d:Ljava/lang/String;

    .line 351
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/batch/android/q/f;->e:Lcom/batch/android/q/a;

    sget-object v6, Lcom/batch/android/q/a;->d:Lcom/batch/android/q/a;

    if-ne v5, v6, :cond_2

    .line 352
    iget-object v4, p0, Lcom/batch/android/q/f;->f:Ljava/lang/String;

    .line 353
    :cond_2
    :try_start_0
    new-instance v5, Lcom/batch/android/json/JSONObject;

    invoke-direct {v5}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 354
    const-string v6, "notificationId"

    iget-object v7, v3, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 355
    iget-object v6, v3, Lcom/batch/android/q/j;->c:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 356
    const-string v7, "notificationInstallId"

    invoke-virtual {v5, v7, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 357
    const-string v6, "notificationCustomId"

    invoke-virtual {v5, v6, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 358
    :cond_4
    iget-object v3, v3, Lcom/batch/android/q/j;->e:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 359
    const-string v4, "additionalData"

    invoke-virtual {v5, v4, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 360
    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :goto_2
    const-string v4, "InboxFetcher"

    const-string v5, "Could not make inbox event data"

    invoke-static {v4, v5, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    :goto_3
    return-object v0
.end method

.method private a(Lcom/batch/android/q/i;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/q/i;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/batch/android/q/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/q/f$e;
        }
    .end annotation

    iget-object v0, p1, Lcom/batch/android/q/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/batch/android/q/i;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/batch/android/q/i;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/batch/android/q/f$e;

    const-string p2, "Server didn\'t timeout, returned no notifications but told us there were more."

    const-string v0, "The server could not complete your request in time. Please try again later."

    invoke-direct {p1, p0, p2, v0}, Lcom/batch/android/q/f$e;-><init>(Lcom/batch/android/q/f;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/batch/android/q/f$e;

    const-string p2, "Server did timeout, but returned no notifications at all."

    const-string v0, "The server could not complete your request in time. Please try again later."

    invoke-direct {p1, p0, p2, v0}, Lcom/batch/android/q/f$e;-><init>(Lcom/batch/android/q/f;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    monitor-enter v0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/batch/android/q/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/q/g;

    iget-object v3, v2, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v3, v3, Lcom/batch/android/q/j;->b:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/batch/android/q/g;

    iget-object v6, v5, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v6, v6, Lcom/batch/android/q/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_a

    iget-boolean v4, v5, Lcom/batch/android/q/g;->e:Z

    if-eqz v4, :cond_8

    const-string v4, "InboxFetcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiving notification that has been deleted locally. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v7, v7, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v4, v2, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v4, v4, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    iget-object v6, v5, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v6, v6, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v3, "InboxFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InboxFetcher: Got the exact same notification twice, skipping. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v2, v2, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v4, "InboxFetcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Merging notifications for sendID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (identifiers: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v3, v3, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v3, v3, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    invoke-virtual {v5, v3}, Lcom/batch/android/q/g;->a(Lcom/batch/android/q/j;)V

    iget-boolean v2, v2, Lcom/batch/android/q/g;->d:Z

    if-nez v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/batch/android/q/g;->d:Z

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    iget-object v1, p1, Lcom/batch/android/q/i;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/batch/android/q/f;->c:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/batch/android/q/i;->a:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/q/f;->l:Z

    monitor-exit v0

    return-object p2

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/q/g;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/q/g;

    .line 302
    invoke-static {v1}, Lcom/batch/android/k;->a(Lcom/batch/android/q/g;)Lcom/batch/android/BatchInboxNotificationContent;

    move-result-object v1

    .line 303
    iget-boolean v2, p0, Lcom/batch/android/q/f;->n:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/BatchInboxNotificationContent;->isSilent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const-string v1, "InboxFetcher"

    const-string v2, "Filtering silent notification"

    invoke-static {v1, v2}, Lcom/batch/android/e/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private synthetic a(Lcom/batch/android/n1/c;Ljava/lang/String;)V
    .locals 12

    .line 321
    iget-object v0, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v11, "InboxFetcher"

    if-nez v2, :cond_1

    .line 322
    const-string p0, "No context available"

    invoke-static {v11, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string p0, "Internal error: No context available. If you are getting a Batch Inbox Fetcher in \'user identifier\' mode, you can improve this by using the Batch.Inbox.getFetcher(Context,String,String) variant."

    invoke-interface {p1, p0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_1
    sget-boolean v0, Lcom/batch/android/q/f;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/batch/android/q/f;->m:Lcom/batch/android/q/d;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 325
    sput-boolean v1, Lcom/batch/android/q/f;->p:Z

    .line 326
    invoke-virtual {v0}, Lcom/batch/android/q/d;->a()Z

    .line 327
    :cond_2
    :try_start_0
    new-instance v1, Lcom/batch/android/q/e;

    iget-object v3, p0, Lcom/batch/android/q/f;->e:Lcom/batch/android/q/a;

    iget-object v4, p0, Lcom/batch/android/q/f;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/batch/android/q/f;->g:Ljava/lang/String;

    iget v0, p0, Lcom/batch/android/q/f;->i:I

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, p0, Lcom/batch/android/q/f;->d:J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, p1

    move-object v7, p2

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/batch/android/q/e;-><init>(Landroid/content/Context;Lcom/batch/android/q/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLcom/batch/android/n1/c;)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/e;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, p1

    goto :goto_2

    .line 330
    :goto_3
    const-string p1, "Could not start inbox fetcher ws: "

    invoke-static {v11, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    const-string p0, "Internal network call error"

    invoke-interface {v10, p0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/n1/c;Ljava/lang/String;Ljava/util/List;)V
    .locals 12

    .line 333
    iget-object v1, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v1

    :goto_0
    const-string v11, "InboxFetcher"

    if-nez v1, :cond_1

    .line 334
    const-string v0, "No context available"

    invoke-static {v11, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "Internal error: No context available. If you are getting a Batch Inbox Fetcher in \'user identifier\' mode, you can improve this by using the Batch.Inbox.getFetcher(Context,String,String) variant."

    invoke-interface {p1, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_1
    sget-boolean v2, Lcom/batch/android/q/f;->p:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/batch/android/q/f;->m:Lcom/batch/android/q/d;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 337
    sput-boolean v3, Lcom/batch/android/q/f;->p:Z

    .line 338
    invoke-virtual {v2}, Lcom/batch/android/q/d;->a()Z

    .line 339
    :cond_2
    :try_start_0
    new-instance v2, Lcom/batch/android/q/h;

    move-object v3, v2

    iget-object v2, p0, Lcom/batch/android/q/f;->e:Lcom/batch/android/q/a;

    move-object v4, v3

    iget-object v3, p0, Lcom/batch/android/q/f;->f:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, p0, Lcom/batch/android/q/f;->g:Ljava/lang/String;

    iget v6, p0, Lcom/batch/android/q/f;->i:I

    .line 340
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, p0, Lcom/batch/android/q/f;->d:J

    move-object v10, p1

    move-object v9, p3

    move-object v0, v5

    move-object v5, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/batch/android/q/h;-><init>(Landroid/content/Context;Lcom/batch/android/q/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Lcom/batch/android/n1/c;)V

    .line 341
    invoke-virtual {v0}, Lcom/batch/android/q/h;->run()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 342
    const-string v1, "Could not start inbox fetcher ws: "

    invoke-static {v11, v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    const-string v0, "Internal network call error"

    invoke-interface {p1, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/q/f;Lcom/batch/android/n1/c;Ljava/lang/String;)V
    .locals 0

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/batch/android/q/f;->a(Lcom/batch/android/n1/c;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/batch/android/n1/c;)V
    .locals 3

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/batch/android/q/f;->b(Ljava/lang/String;Lcom/batch/android/n1/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/batch/android/q/f;->e:Lcom/batch/android/q/a;

    sget-object v1, Lcom/batch/android/q/a;->d:Lcom/batch/android/q/a;

    if-ne v0, v1, :cond_2

    .line 316
    iget-object v0, p0, Lcom/batch/android/q/f;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const-string p0, "Inbox API Error: User identifier can\'t be null or empty"

    invoke-interface {p2, p0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/batch/android/q/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string p0, "Inbox API Error: Authentication Key can\'t be null or empty in user mode"

    invoke-interface {p2, p0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/batch/android/q/f;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lb5;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, p2, p1, v2}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/q/f;Lcom/batch/android/n1/c;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/q/f;->a(Lcom/batch/android/n1/c;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/batch/android/n1/c;)Z
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/batch/android/q/f;->m:Lcom/batch/android/q/d;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/batch/android/q/f;->d:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 126
    iget v3, p0, Lcom/batch/android/q/f;->i:I

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/batch/android/q/d;->a(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/batch/android/q/f;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lxo;

    invoke-direct {v2, p0, p2, p1, v0}, Lxo;-><init>(Lcom/batch/android/q/f;Lcom/batch/android/n1/c;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/batch/android/q/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 364
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/batch/android/q/f;->j:I

    return-void
.end method

.method public a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 306
    new-instance p1, Lcom/batch/android/q/f$a;

    invoke-direct {p1, p0}, Lcom/batch/android/q/f$a;-><init>(Lcom/batch/android/q/f;)V

    .line 307
    :cond_0
    new-instance v0, Lcom/batch/android/q/f$b;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/q/f$b;-><init>(Lcom/batch/android/q/f;Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V

    const/4 p1, 0x0

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/batch/android/q/f;->a(Ljava/lang/String;Lcom/batch/android/n1/c;)V

    return-void
.end method

.method public a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/batch/android/q/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 310
    const-string p0, "The end of the inbox feed has been reached, either because you\'ve reached the fetch limit, or because the server doesn\'t have anything left for you."

    invoke-interface {p1, p0}, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 311
    new-instance p1, Lcom/batch/android/q/f$c;

    invoke-direct {p1, p0}, Lcom/batch/android/q/f$c;-><init>(Lcom/batch/android/q/f;)V

    .line 312
    :cond_2
    new-instance v0, Lcom/batch/android/q/f$d;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/q/f$d;-><init>(Lcom/batch/android/q/f;Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V

    .line 313
    iget-object p1, p0, Lcom/batch/android/q/f;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/q/f;->a(Ljava/lang/String;Lcom/batch/android/n1/c;)V

    return-void
.end method

.method public a(Lcom/batch/android/BatchInboxNotificationContent;)V
    .locals 7

    .line 288
    iget-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    monitor-enter v0

    .line 289
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/k;->a(Lcom/batch/android/BatchInboxNotificationContent;)Lcom/batch/android/q/g;

    move-result-object v1

    iget-object v1, v1, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v1, v1, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/q/g;

    .line 291
    iget-object v4, v3, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v4, v4, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 292
    invoke-direct {p0, v3}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/json/JSONObject;

    .line 293
    iget-object v5, p0, Lcom/batch/android/q/f;->a:Lcom/batch/android/v0/k;

    const-string v6, "_INBOX_MARK_DELETED"

    invoke-virtual {v5, v6, v4}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 294
    iget-object v4, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/batch/android/q/d;->b(Ljava/lang/String;)V

    .line 295
    invoke-static {p1}, Lcom/batch/android/k;->a(Lcom/batch/android/BatchInboxNotificationContent;)Lcom/batch/android/q/g;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/batch/android/q/g;->e:Z

    .line 296
    iput-boolean v5, v3, Lcom/batch/android/q/g;->e:Z

    .line 297
    iget-object v4, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 298
    :cond_2
    const-string p0, "InboxFetcher"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the specified notification ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to be marked as deleted"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/batch/android/q/e;)V
    .locals 0

    .line 332
    invoke-virtual {p1}, Lcom/batch/android/q/e;->run()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/batch/android/q/f;->n:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/batch/android/q/f;->i:I

    return-void
.end method

.method public b(Lcom/batch/android/BatchInboxNotificationContent;)V
    .locals 7

    iget-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/k;->a(Lcom/batch/android/BatchInboxNotificationContent;)Lcom/batch/android/q/g;

    move-result-object v1

    iget-object v1, v1, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v1, v1, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/q/g;

    iget-object v4, v3, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object v4, v4, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/json/JSONObject;

    iget-object v5, p0, Lcom/batch/android/q/f;->a:Lcom/batch/android/v0/k;

    const-string v6, "_INBOX_MARK_READ"

    invoke-virtual {v5, v6, v4}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    iget-object v4, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/batch/android/q/d;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/k;->a(Lcom/batch/android/BatchInboxNotificationContent;)Lcom/batch/android/q/g;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/batch/android/q/g;->d:Z

    iput-boolean v5, v3, Lcom/batch/android/q/g;->d:Z

    goto :goto_1

    :cond_2
    const-string p0, "InboxFetcher"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the specified notification ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to be marked as read"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/batch/android/q/f;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/batch/android/q/f;->j:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/q/g;

    invoke-direct {p0, v1}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/json/JSONObject;

    iget-object v4, p0, Lcom/batch/android/q/f;->a:Lcom/batch/android/v0/k;

    const-string v5, "_INBOX_MARK_ALL_READ"

    invoke-virtual {v4, v5, v3}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/batch/android/q/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/batch/android/q/f;->d:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/batch/android/q/d;->a(JJ)I

    iget-object p0, p0, Lcom/batch/android/q/f;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/q/g;

    iput-boolean v2, v1, Lcom/batch/android/q/g;->d:Z

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

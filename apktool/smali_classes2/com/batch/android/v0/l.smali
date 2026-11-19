.class public final Lcom/batch/android/v0/l;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/v0/l$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "User"

.field public static final g:Ljava/lang/String; = "label"

.field public static final h:Ljava/lang/String; = "attributes"

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:J = 0x7530L

.field private static final k:J = 0xa4cb800L

.field private static l:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/l1/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/BroadcastReceiver;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:J

.field private final e:Lcom/batch/android/v0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9_]{1,30}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/v0/l;->i:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/batch/android/v0/l;->m()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/batch/android/v0/l;->l:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/batch/android/v0/k;)V
    .locals 2

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/v0/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/v0/l;->d:J

    iput-object p1, p0, Lcom/batch/android/v0/l;->e:Lcom/batch/android/v0/k;

    return-void
.end method

.method public static a(JLjava/lang/Runnable;)V
    .locals 2

    .line 140
    sget-object v0, Lcom/batch/android/v0/l;->l:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/batch/android/v0/l;->l:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 142
    :cond_0
    const-string p0, "InstallDataEditor"

    const-string p1, "Could not perform User Data operation. Is this installation currently opted out from Batch?"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(JLjava/lang/String;)V
    .locals 3

    .line 132
    :try_start_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :try_start_1
    const-string v1, "user_profile.data.version"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, 0x0

    :goto_0
    cmp-long p1, v1, p1

    if-nez p1, :cond_0

    .line 134
    const-string p1, "user_profile.data.transactionID"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p3, p2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x3a98

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/v0/l;->c(J)V

    :cond_0
    return-void

    :catch_1
    move-exception p0

    .line 136
    const-string p1, "User"

    const-string p2, "Internal error while storing transaction ID"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/batch/android/l1/c;->a()V

    .line 129
    invoke-virtual {p0}, Lcom/batch/android/l1/c;->b()V

    return-void
.end method

.method private synthetic b(J)V
    .locals 8

    .line 97
    const-string v0, "user_profile.data.version"

    :try_start_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x0

    .line 98
    :try_start_1
    const-string v4, "0"

    invoke-virtual {v1, v0, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x1

    add-long/2addr p1, v6

    cmp-long v4, v4, p1

    if-gez v4, :cond_0

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v1, v0, p1, p2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    const-string p1, "user_profile.data.transactionID"

    invoke-virtual {v1, p1}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2, v3}, Lcom/batch/android/v0/l;->d(J)V

    :cond_0
    return-void

    :catch_1
    move-exception p0

    .line 102
    const-string p1, "User"

    const-string p2, "Internal error while bumping user data version"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/l1/i;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/v0/l$b;
        }
    .end annotation

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object v1

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    const-string v3, "0"

    const-string v4, "user_profile.data.version"

    invoke-virtual {v2, v4, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/batch/android/l1/c;->a(J)V
    :try_end_0
    .catch Lcom/batch/android/l1/f; {:try_start_0 .. :try_end_0} :catch_5

    invoke-virtual {v1}, Lcom/batch/android/l1/c;->getAttributes()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1}, Lcom/batch/android/l1/c;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "InstallDataEditor"

    if-eqz v7, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/batch/android/l1/i;

    :try_start_1
    invoke-interface {v7, v1}, Lcom/batch/android/l1/i;->a(Lcom/batch/android/l1/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Lcom/batch/android/l1/c;->e()V
    :try_end_2
    .catch Lcom/batch/android/l1/f; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Save - Error while rolling back transaction."

    invoke-static {v8, v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance v0, Lcom/batch/android/v0/l$b;

    const-string v1, "An internal error occurred while applying the changes (code 41)"

    const-string v2, "Save - Callable exception"

    invoke-direct {v0, v1, v2, p0}, Lcom/batch/android/v0/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/batch/android/l1/c;->d()V

    invoke-virtual {v1}, Lcom/batch/android/l1/c;->getAttributes()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v1}, Lcom/batch/android/l1/c;->c()Ljava/util/Map;

    move-result-object v7

    new-instance v9, Lcom/batch/android/l1/e;

    invoke-direct {v9, p0, v5, v7, v6}, Lcom/batch/android/l1/e;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p0, v9, Lcom/batch/android/l1/e;->a:Lcom/batch/android/l1/e$b;

    invoke-virtual {p0}, Lcom/batch/android/l1/e$b;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "user_profile.data.transactionID"

    invoke-virtual {v0, v4}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/batch/android/v0/l;->d(J)V
    :try_end_3
    .catch Lcom/batch/android/l1/f; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v0

    const-string v4, "_INSTALL_DATA_CHANGED"

    invoke-virtual {p0, v2, v3}, Lcom/batch/android/l1/e$b;->a(J)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_4
    .catch Lcom/batch/android/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/batch/android/l1/f; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    :try_start_5
    const-string p0, "Could not serialize install data diff"

    invoke-static {v8, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object p0

    const-string v0, "_INSTALL_DATA_CHANGED_TRACK_FAIL"

    invoke-virtual {p0, v0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;)V

    :goto_2
    const-string p0, "Changeset bumped"

    invoke-static {v8, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Changeset not bumped"

    invoke-static {v8, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/batch/android/l1/f; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Lcom/batch/android/l1/c;->e()V
    :try_end_6
    .catch Lcom/batch/android/l1/f; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v1, "Error while rolling back transaction."

    invoke-static {v8, v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v0, Lcom/batch/android/v0/l$b;

    const-string v1, "An internal error occurred while applying the changes (code 42)"

    const-string v2, "Save - Commit exception"

    invoke-direct {v0, v1, v2, p0}, Lcom/batch/android/v0/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/batch/android/v0/l$b;

    const-string v1, "An internal error occurred while applying the changes (code 40)"

    const-string v2, "Could not acquire transaction lock"

    invoke-direct {v0, v1, v2, p0}, Lcom/batch/android/v0/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lcom/batch/android/v0/l$b;

    const-string v0, "Error while applying. Make sure Batch is started beforehand, and not globally opted out from."

    const-string v1, "\'context\' was null while saving."

    invoke-direct {p0, v0, v1}, Lcom/batch/android/v0/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic g(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/l1/c;->clear()V

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "u_c_r"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    const-string v0, "u_c_l"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    const-string v0, "app.profile.version"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    const-string v0, "user_profile.data.version"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    const-string v0, "user_profile.data.transactionID"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/batch/android/v0/l;->l:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lc7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lc7;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Lcom/batch/android/v0/l;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/batch/android/v0/l;->j()V

    return-void
.end method

.method private synthetic j()V
    .locals 9

    const-string v0, "user_profile.data.version"

    iget-object v1, p0, Lcom/batch/android/v0/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "User"

    if-nez v1, :cond_1

    const-string p0, "Internal error while sending attributes check WS: null context"

    invoke-static {v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v4, 0x0

    :try_start_1
    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-wide v6, v4

    :goto_0
    const-string v2, "user_profile.data.transactionID"

    const-string v8, ""

    invoke-virtual {v1, v2, v8}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    invoke-virtual {p0, v4, v5}, Lcom/batch/android/v0/l;->d(J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    cmp-long p0, v6, v4

    if-gtz p0, :cond_4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-static {p0, v6, v7, v2}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;JLjava/lang/String;)Z

    return-void

    :catch_1
    move-exception p0

    const-string v0, "Internal error while sending attributes check WS"

    invoke-static {v2, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic j(Lcom/batch/android/l1/c;)V
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/batch/android/v0/l;->a(Lcom/batch/android/l1/c;)V

    return-void
.end method

.method private static synthetic k()V
    .locals 7

    const-string v0, "user_profile.data.version"

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "User"

    if-nez v1, :cond_0

    const-string v0, "Internal error while sending attributes send WS: null context"

    invoke-static {v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v3, 0x0

    :try_start_1
    const-string v5, "0"

    invoke-virtual {v2, v0, v5}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-wide v5, v3

    :goto_0
    cmp-long v3, v5, v3

    const/4 v4, 0x1

    if-gtz v3, :cond_1

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {v1}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/batch/android/l1/c;->getAttributes()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/batch/android/l1/d;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batch/android/l1/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v5, v6, v2, v0}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;JLjava/util/Map;Ljava/util/Map;)Z

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Internal error while sending attributes send WS"

    invoke-static {v2, v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic k(Lcom/batch/android/v0/l;J)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/l;->b(J)V

    return-void
.end method

.method private synthetic l()V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v1, "InstallDataEditor"

    const-string v2, "It looks like you are using many instances of BatchUserDataEditor. Please check our documentation to ensure you are using this api correctly: https://doc.batch.com/android/custom-data/custom-attributes#methods"

    invoke-static {v1, v2}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/l1/j;

    invoke-virtual {v2}, Lcom/batch/android/l1/j;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/batch/android/v0/l;->c(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/batch/android/v0/l$b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "User"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static m()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    new-instance v0, Lcom/batch/android/e/v;

    invoke-direct {v0}, Lcom/batch/android/e/v;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static n()Lcom/batch/android/v0/l;
    .locals 2

    new-instance v0, Lcom/batch/android/v0/l;

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/v0/l;-><init>(Lcom/batch/android/v0/k;)V

    return-object v0
.end method

.method public static o()V
    .locals 1

    sget-object v0, Lcom/batch/android/v0/l;->l:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/batch/android/v0/l;->m()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/batch/android/v0/l;->l:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method

.method public static synthetic w()V
    .locals 0

    invoke-static {}, Lcom/batch/android/v0/l;->k()V

    return-void
.end method

.method public static synthetic x(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/v0/l;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic y(Lcom/batch/android/v0/l;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/v0/l;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic z(Lcom/batch/android/v0/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/v0/l;->l()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 137
    new-instance v0, Lxb;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lxb;-><init>(Ljava/lang/Object;JI)V

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public a(JLcom/batch/android/l1/j;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/batch/android/j1/e;->i()Z

    move-result p3

    if-nez p3, :cond_0

    .line 147
    const-string p0, "InstallDataEditor"

    const-string p1, "Batch is not started, enqueuing user operations"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/v0/l;->e(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p0, "app.id.custom"

    if-eqz p2, :cond_0

    .line 138
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/batch/android/v0/l;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "User"

    if-gtz v0, :cond_1

    const-string v0, "Tracking location because no location has been tracked yet"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/batch/android/v0/l;->d:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    const-string v0, "Tracking location event since the elapsed time is greater than the minimum threshold"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v6, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;D)Lcom/batch/android/json/JSONObject;

    const-string v6, "lng"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;D)Lcom/batch/android/json/JSONObject;

    const-string v6, "acc"

    invoke-virtual {v0, v6, v4, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;D)Lcom/batch/android/json/JSONObject;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    const-string p1, "date"

    long-to-double v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;D)Lcom/batch/android/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/batch/android/v0/l;->e:Lcom/batch/android/v0/k;

    const-string v2, "_LOCATION_CHANGED"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/batch/android/v0/k;->b(Ljava/lang/String;JLcom/batch/android/json/JSONObject;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/batch/android/v0/l;->d:J
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string p1, "Failed to track location"

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const-string p0, "Not tracking location event"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v3, Lkd0;

    const/4 v8, 0x2

    move-object v4, p0

    move-object v7, p1

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Lkd0;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V

    invoke-static {v0, v1, v3}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string p1, "app.id.custom"

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 9

    invoke-super {p0}, Lcom/batch/android/v0/b;->b()V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/v0/l;->c(J)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    const-string v2, "ws.cipherv2.lastfailure"

    invoke-virtual {v1, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xa4cb800

    sub-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/batch/android/v0/l;->b:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/batch/android/v0/l$a;

    invoke-direct {v1, p0}, Lcom/batch/android/v0/l$a;-><init>(Lcom/batch/android/v0/l;)V

    iput-object v1, p0, Lcom/batch/android/v0/l;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/v0/l;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.batch.android.optout.disabled"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/d/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/v0/l;->e(J)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p0, "u_c_l"

    if-eqz p2, :cond_0

    .line 94
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string p1, "u_c_l"

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(J)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/batch/android/v0/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    new-instance v0, Lk91;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk91;-><init>(Lcom/batch/android/v0/l;I)V

    invoke-static {p1, p2, v0}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p0, "u_c_r"

    if-eqz p2, :cond_0

    .line 220
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 221
    :cond_0
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string p1, "u_c_r"

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(J)V
    .locals 1

    .line 11
    new-instance p0, Le5;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Le5;-><init>(I)V

    invoke-static {p1, p2, p0}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public e(Landroid/content/Context;)J
    .locals 2

    .line 28
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string p1, "app.profile.version"

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v0
.end method

.method public e(J)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/v0/l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lk91;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lk91;-><init>(Lcom/batch/android/v0/l;I)V

    invoke-static {p1, p2, v1}, Lcom/batch/android/v0/l;->a(JLjava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized f(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/v0/l;->e(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app.profile.version"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 42
    const-string p0, "user"

    return-object p0
.end method

.method public h()I
    .locals 0

    .line 16
    const/4 p0, 0x1

    return p0
.end method

.method public i()V
    .locals 3

    new-instance v0, Lcom/batch/android/l1/j;

    new-instance v1, Ll91;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/l1/j;-><init>(Ljava/util/List;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/batch/android/v0/l;->a(JLcom/batch/android/l1/j;)V

    return-void
.end method

.class public final Lcom/batch/android/Batch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/Batch$User;,
        Lcom/batch/android/Batch$b;,
        Lcom/batch/android/Batch$EventDispatcher;,
        Lcom/batch/android/Batch$Actions;,
        Lcom/batch/android/Batch$Messaging;,
        Lcom/batch/android/Batch$Profile;,
        Lcom/batch/android/Batch$Push;,
        Lcom/batch/android/Batch$Inbox;,
        Lcom/batch/android/Batch$Debug;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_IDENTIFIER_OBTAINED:Ljava/lang/String; = "com.batch.android.intent.action.push.REGISTRATION_IDENTIFIER_OBTAINED"

.field public static final BROADCAST_PERMISSION_SUFFIX:Ljava/lang/String; = ".batch.permission.INTERNAL_BROADCAST"

.field public static final EXTRA_REGISTRATION_IDENTIFIER:Ljava/lang/String; = "registration_id"

.field public static final EXTRA_REGISTRATION_PROVIDER_NAME:Ljava/lang/String; = "provider_name"

.field public static final EXTRA_REGISTRATION_SENDER_ID:Ljava/lang/String; = "sender_id"

.field public static final NOTIFICATION_TAG:Ljava/lang/String; = "batch"

.field private static a:Lcom/batch/android/g;

.field private static b:Landroid/content/BroadcastReceiver;

.field private static c:Landroid/content/Intent;

.field private static final d:Lcom/batch/android/e/l;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static final g:Lcom/batch/android/v0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/e/l;

    invoke-direct {v0}, Lcom/batch/android/e/l;-><init>()V

    sput-object v0, Lcom/batch/android/Batch;->d:Lcom/batch/android/e/l;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/batch/android/Batch;->f:Z

    invoke-static {}, Lcom/batch/android/n/c;->a()Lcom/batch/android/v0/c;

    move-result-object v0

    sput-object v0, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/batch/android/g;
    .locals 1

    .line 753
    sget-object v0, Lcom/batch/android/Batch;->a:Lcom/batch/android/g;

    return-object v0
.end method

.method private static synthetic a(Lcom/batch/android/j1/e;ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 12

    move-object/from16 v1, p6

    const/4 v2, 0x0

    if-nez p7, :cond_0

    const-string p0, "You must set the configuration before starting Batch. Please call setConfig on onCreate of your Application subclass"

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->k()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->d()Ljava/util/Date;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x7530

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    sget-object v6, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    if-ne v1, v6, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x4ef6d80

    sub-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    :cond_3
    :goto_0
    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v0, "_STOP"

    invoke-virtual {v6, v0, v7, v8}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;J)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "onStart called on state "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", should start : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    if-nez p2, :cond_6

    const-string p0, "Batch start called with null context, aborting start"

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    return-object v2

    :cond_6
    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean p0, Lcom/batch/android/Batch;->f:Z

    if-nez p0, :cond_7

    sput-boolean v5, Lcom/batch/android/Batch;->f:Z

    const-string p0, "Batch was opted out from: refusing to start."

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    :cond_7
    return-object v2

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->g()V

    :cond_9
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_18

    move-object v6, p2

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/batch/android/e/l;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "Started activity has exclusion meta-data, aborting start."

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-object v2

    :cond_a
    :try_start_0
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq v1, v0, :cond_d

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-nez v0, :cond_c

    instance-of v0, v6, Lcom/batch/android/MessagingActivity;

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v7, 0x1010058

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    xor-int/2addr v7, v5

    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v7, v5

    goto :goto_3

    :cond_c
    :goto_2
    move v7, v4

    goto :goto_4

    :cond_d
    move v7, v5

    goto :goto_4

    :goto_3
    const-string v8, "Error while trying to check if the current activity is transparent/floating. Reverting to default behaviour."

    invoke-static {v8, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    if-eqz v7, :cond_e

    invoke-virtual {p0, v6}, Lcom/batch/android/j1/e;->a(Landroid/app/Activity;)V

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/batch/android/h;

    invoke-direct {v7, v6}, Lcom/batch/android/h;-><init>(Landroid/app/Activity;)V

    sget-object v6, Lcom/batch/android/Batch;->c:Landroid/content/Intent;

    if-eqz v6, :cond_f

    const-string v6, "Adding intent from onNewIntent"

    invoke-static {v6}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    new-instance v6, Lcom/batch/android/h;

    sget-object v8, Lcom/batch/android/Batch;->c:Landroid/content/Intent;

    invoke-direct {v6, v8}, Lcom/batch/android/h;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/batch/android/Batch;->d:Lcom/batch/android/e/l;

    invoke-virtual {v6}, Lcom/batch/android/e/l;->a()Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Adding intent from an activity with exclusion meta-data"

    invoke-static {v8}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    new-instance v8, Lcom/batch/android/h;

    invoke-virtual {v6}, Lcom/batch/android/e/l;->b()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/batch/android/h;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v4

    :cond_11
    if-ge v8, v6, :cond_12

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/batch/android/h;

    invoke-virtual {v9}, Lcom/batch/android/h;->g()Z

    move-result v10

    if-eqz v10, :cond_11

    move-object v7, v9

    :cond_12
    invoke-virtual {v7}, Lcom/batch/android/h;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Activity has a push payload"

    invoke-static {v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    const-string v0, "Activity does not have a push payload"

    invoke-static {v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v7}, Lcom/batch/android/h;->a()Z

    move-result v0

    move-object/from16 v6, p4

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v7}, Lcom/batch/android/h;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object/from16 v3, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    move v3, v5

    :cond_15
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/g;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v7}, Lcom/batch/android/h;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v7}, Lcom/batch/android/h;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Trying to display an already shown landing message"

    invoke-static {v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    invoke-virtual {v7}, Lcom/batch/android/h;->b()Lcom/batch/android/BatchMessage;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v7}, Lcom/batch/android/h;->j()V

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v8

    invoke-virtual {v8, p2, v0, v4}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Z)V

    :cond_17
    :goto_6
    invoke-static {p2}, Lcom/batch/android/e/w;->b(Landroid/content/Context;)V

    sput-object v2, Lcom/batch/android/Batch;->c:Landroid/content/Intent;

    goto :goto_7

    :cond_18
    move-object/from16 v6, p4

    move-object v7, v2

    :goto_7
    sget-object v0, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    if-ne v1, v0, :cond_19

    if-nez v3, :cond_19

    return-object v2

    :cond_19
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-ne v1, v3, :cond_1e

    invoke-virtual {p0, v0}, Lcom/batch/android/j1/e;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    sget-object v1, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    invoke-virtual {v1, v0}, Lcom/batch/android/v0/b;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->b(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Landroid/content/Context;)V

    const-string v1, "android.permission.INTERNET"

    invoke-static {v1, v0}, Lcom/batch/android/e/o;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string p0, "Batch needs android.permission.INTERNET, please update your manifest, aborting start"

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    return-object v2

    :cond_1a
    invoke-virtual/range {p7 .. p7}, Lcom/batch/android/j1/b;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string p0, "API key provided in Batch.start is null, aborting start"

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    return-object v2

    :cond_1b
    sget-object v1, Lcom/batch/android/Batch;->a:Lcom/batch/android/g;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/batch/android/g;

    invoke-direct {v1, v0}, Lcom/batch/android/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/batch/android/Batch;->a:Lcom/batch/android/g;

    :cond_1c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/batch/android/Batch;->e:Ljava/lang/String;

    sget-object v1, Lcom/batch/android/Batch;->b:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/batch/android/Batch$b;

    invoke-direct {v1, v2}, Lcom/batch/android/Batch$b;-><init>(Lcom/batch/android/Batch$a;)V

    sput-object v1, Lcom/batch/android/Batch;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.batch.android.executor.finished"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.batch.android.optout.enabled"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object v3

    sget-object v4, Lcom/batch/android/Batch;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Lcom/batch/android/d/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1d
    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/batch/android/v0/h;->e(Landroid/content/Context;)V

    :cond_1e
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1f

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p0, v0, v5}, Lcom/batch/android/j1/e;->a(Landroid/app/Application;Z)V

    invoke-virtual {p0, v0}, Lcom/batch/android/j1/e;->a(Landroid/app/Application;)V

    goto :goto_8

    :cond_1f
    const-string v0, "Context isn\'t an Application, could not register the session manager."

    invoke-static {v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    :goto_8
    sget-object v0, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->e()V

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/batch/android/v0/e;->b(Landroid/content/Context;)V

    :try_start_2
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->n()V

    goto :goto_9

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :cond_20
    const-string p0, "silent"

    invoke-virtual {v0, p0, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    :goto_9
    const-string p0, "dispatchers"

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/v0/e;->i()Lcom/batch/android/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0}, Lcom/batch/android/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_21

    goto :goto_a

    :cond_21
    move-object v2, v0

    :goto_a
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object p0

    const-string p1, "_START"

    invoke-virtual {p0, p1, v2}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :goto_b
    const-string p1, "Could not track _START"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    if-eqz v7, :cond_25

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-virtual {v7}, Lcom/batch/android/h;->i()Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "Already tracked open"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    goto :goto_f

    :cond_22
    invoke-virtual {v7}, Lcom/batch/android/h;->d()Lcom/batch/android/e/r;

    move-result-object p0

    if-eqz p0, :cond_23

    new-instance p1, Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->h()Ljava/util/Map;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_d

    :cond_23
    new-instance p1, Lcom/batch/android/json/JSONObject;

    invoke-direct {p1}, Lcom/batch/android/json/JSONObject;-><init>()V

    :goto_d
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object p0

    const-string v0, "_OPEN_PUSH"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {v7}, Lcom/batch/android/h;->k()V

    :try_start_3
    invoke-virtual {v7}, Lcom/batch/android/h;->c()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-static {p0}, Lcom/batch/android/BatchPushPayload;->payloadFromReceiverExtras(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object p0

    new-instance p1, Lcom/batch/android/p/c;

    invoke-direct {p1, p0, v5}, Lcom/batch/android/p/c;-><init>(Lcom/batch/android/BatchPushPayload;Z)V

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object p0

    sget-object v0, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_OPEN:Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    goto :goto_e

    :cond_24
    const-string p0, "Could not get the push bundle."

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    move-object p0, v0

    const-string p1, "Could not dispatch NOTIFICATION_OPEN"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    const-string p0, "Activity was opened from a push"

    invoke-static {p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;)V

    :cond_25
    :goto_f
    sget-object p0, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    return-object p0
.end method

.method private static synthetic a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 1

    .line 777
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "doStop, called with state "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    .line 778
    sget-object p0, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    invoke-virtual {p0}, Lcom/batch/android/v0/b;->f()V

    .line 779
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object p0

    const-string p1, "_STOP"

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/batch/android/j1/e;->a(Landroid/content/Context;)V

    .line 781
    sput-object p1, Lcom/batch/android/Batch;->b:Landroid/content/BroadcastReceiver;

    .line 782
    sget-object p0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    return-object p0
.end method

.method private static synthetic a(ZLandroid/content/Context;ZLcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 1

    .line 759
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onStop called with state "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 760
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/batch/android/j1/e;->a()V

    .line 761
    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object p3

    .line 762
    instance-of p4, p1, Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 763
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 764
    invoke-static {p1}, Lcom/batch/android/e/l;->a(Landroid/app/Activity;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 765
    const-string p0, "Closing an excluded activity"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    if-eq p1, p3, :cond_3

    .line 766
    const-string p0, "Closing a sub activity"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
    if-nez p0, :cond_4

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    .line 767
    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 768
    const-string p0, "onStop called but activity is not finishing... saving date"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->l()V

    return-object v0

    :cond_4
    if-nez p0, :cond_5

    .line 770
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/batch/android/j1/e;->a(Landroid/app/Activity;)V

    .line 771
    :cond_5
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_7

    .line 772
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->j()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    .line 773
    :cond_6
    sget-object p0, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    invoke-virtual {p0}, Lcom/batch/android/v0/b;->d()V

    .line 774
    sget-object p0, Lcom/batch/android/j1/g;->d:Lcom/batch/android/j1/g;

    return-object p0

    .line 775
    :cond_7
    :goto_1
    const-string p0, "onStop called, but Batch is retained by a Service or Activity"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    .line 784
    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v0

    const-string v1, "false"

    const-string v2, "displayreceipts.jobs.already_cancelled"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 786
    :cond_0
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_1

    .line 787
    const-string p0, "JobScheduler service is unavailable. Skipping job cancellation."

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-void

    .line 788
    :cond_1
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 789
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.batch.android.BatchDisplayReceiptJobService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 790
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 791
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduled display receipt job service with id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was canceled"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-static {v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_3
    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "true"

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "New version detected : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 1

    .line 736
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p1

    .line 737
    invoke-virtual {p1}, Lcom/batch/android/j1/e;->m()V

    .line 738
    invoke-virtual {p1}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 731
    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v0

    .line 732
    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/h;->a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)Lcom/batch/android/e/c0;

    move-result-object p1

    new-instance v0, Lhd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhd;-><init>(Ljava/lang/Object;I)V

    .line 733
    invoke-virtual {p1, v0}, Lcom/batch/android/e/c0;->a(Lcom/batch/android/e/c0$f;)Lcom/batch/android/e/c0;

    move-result-object p0

    new-instance p1, Lid;

    invoke-direct {p1, p2}, Lid;-><init>(Lcom/batch/android/BatchOptOutResultListener;)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Lcom/batch/android/e/c0$b;)Lcom/batch/android/e/c0;

    return-void

    .line 735
    :cond_0
    const-string p0, "Context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;ZZ)V
    .locals 9

    .line 741
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    .line 744
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v8

    new-instance v0, Lkd;

    move v4, p1

    move-object v5, v2

    move-object v6, v3

    move-object v3, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lkd;-><init>(Lcom/batch/android/j1/e;ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;)V

    move-object v3, v6

    .line 745
    invoke-virtual {v8, v0}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 746
    sget-object p2, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    invoke-virtual {p2}, Lcom/batch/android/v0/b;->b()V

    :cond_0
    if-eqz p1, :cond_2

    .line 747
    sget-object p1, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    new-instance v0, Lld;

    move v4, v2

    move-object v2, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lld;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;ZI)V

    invoke-virtual {v1, p1, v0}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/h;)V

    .line 748
    new-instance p1, Lmd;

    invoke-direct {p1, v7}, Lmd;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/c;)V

    .line 749
    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 750
    const-string p2, "Installation ID: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/e/t;->b(Ljava/lang/String;)V

    .line 751
    :cond_1
    invoke-static {p0}, Lcom/batch/android/v0/j;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 752
    const-string p0, "The app is running in restricted backgrounding mode"

    invoke-static {p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchOptOutResultListener;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 740
    invoke-interface {p0}, Lcom/batch/android/BatchOptOutResultListener;->onError()Lcom/batch/android/BatchOptOutResultListener$ErrorPolicy;

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/batch/android/LoggerDelegate;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 727
    invoke-virtual {p1, p0}, Lcom/batch/android/j1/b;->a(Lcom/batch/android/LoggerDelegate;)V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/LoggerLevel;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 728
    invoke-virtual {p1, p0}, Lcom/batch/android/j1/b;->a(Lcom/batch/android/LoggerLevel;)V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/j1/b;)V
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/batch/android/j1/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/j1/b;->b()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dev"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 758
    const-string p0, "Batch (3.1.1) is running in dev mode (your API key is a dev one)"

    invoke-static {p0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/batch/android/j1/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;ZLcom/batch/android/j1/g;)V
    .locals 0

    .line 754
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    .line 755
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 756
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;ZLjava/lang/String;Z)Z

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 725
    invoke-virtual {p1, p0}, Lcom/batch/android/j1/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 729
    sget-object p1, Lcom/batch/android/Batch;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/util/EnumSet;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 726
    invoke-static {p0}, Lcom/batch/android/BatchMigration;->toValue(Ljava/util/EnumSet;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/batch/android/j1/b;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V
    .locals 0

    const/4 p1, 0x1

    .line 776
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 56
    invoke-static {}, Lcom/batch/android/Batch;->g()V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 5

    const-string v0, "app.version.current"

    :try_start_0
    const-string v1, "3.1.1"

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v2, v1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "app.version.previous"

    invoke-virtual {p0, v0, v2, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error on updateVersionManagement"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method private static b(Landroid/content/Context;ZZ)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    sget-object v1, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    new-instance v2, Ljd;

    invoke-direct {v2, p0, p1, p2}, Ljd;-><init>(Landroid/content/Context;ZZ)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/a;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 59
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/e/k0;->a()Z

    move-result p0

    if-nez p0, :cond_0

    .line 60
    const-string p0, "onStop, should stop directly : true"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/batch/android/Batch;->e()V

    return-void

    .line 62
    :cond_0
    const-string p0, "onStop, should stop directly : false"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 4
    invoke-static {}, Lcom/batch/android/Batch;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/batch/android/LoggerLevel;Lcom/batch/android/j1/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Lcom/batch/android/LoggerLevel;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public static copyBatchExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/h;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static copyBatchExtras(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/batch/android/h;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method private static d()V
    .locals 2

    const-string v0, "OptOut"

    const-string v1, "Clearing cached install data"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/Batch;->a:Lcom/batch/android/g;

    return-void
.end method

.method public static synthetic d(Ljava/util/EnumSet;Lcom/batch/android/j1/b;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Ljava/util/EnumSet;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public static disableMigration(Ljava/util/EnumSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/batch/android/BatchMigration;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "You cannot use disableMigration with null value."

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Ls3;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->b(Lcom/batch/android/j1/c;)V

    return-void
.end method

.method public static synthetic e(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p0

    return-object p0
.end method

.method private static e()V
    .locals 4

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    sget-object v1, Lcom/batch/android/j1/g;->d:Lcom/batch/android/j1/g;

    new-instance v2, Lmd;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmd;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/batch/android/Batch;->g:Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->c()V

    :cond_0
    return-void
.end method

.method public static f()Lcom/batch/android/g;
    .locals 1

    .line 4
    sget-object v0, Lcom/batch/android/Batch;->a:Lcom/batch/android/g;

    return-object v0
.end method

.method public static synthetic f(Lcom/batch/android/j1/b;)V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/Batch;->a(Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public static synthetic g(Lcom/batch/android/j1/e;ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 0

    .line 49
    invoke-static/range {p0 .. p7}, Lcom/batch/android/Batch;->a(Lcom/batch/android/j1/e;ZLandroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p0

    return-object p0
.end method

.method private static g()V
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    sget-object v2, Lcom/batch/android/j1/g;->d:Lcom/batch/android/j1/g;

    new-instance v3, Ls3;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/h;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWebserviceExecutorWorkFinished called, should stop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/batch/android/Batch;->e()V

    :cond_0
    return-void
.end method

.method public static getBroadcastPermissionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".batch.permission.INTERNAL_BROADCAST"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSessionID()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    new-instance v2, Ls3;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic i(Lcom/batch/android/BatchOptOutResultListener;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Lcom/batch/android/BatchOptOutResultListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public static isOptedOut(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/batch/android/j1/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Ljava/lang/String;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public static synthetic k(ZLandroid/content/Context;ZLcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/batch/android/Batch;->a(ZLandroid/content/Context;ZLcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/batch/android/LoggerDelegate;Lcom/batch/android/j1/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Lcom/batch/android/LoggerDelegate;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic n(Lcom/batch/android/j1/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;ZLcom/batch/android/j1/g;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/batch/android/Batch;->a(Lcom/batch/android/j1/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;ZLcom/batch/android/j1/g;)V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/e/l;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/batch/android/Batch;->d:Lcom/batch/android/e/l;

    invoke-virtual {v0, p0}, Lcom/batch/android/e/l;->b(Landroid/app/Activity;)V

    const-string p0, "Created activity has exclusion meta-data"

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    sput-object p1, Lcom/batch/android/Batch;->c:Landroid/content/Intent;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static onServiceCreate(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static onServiceDestroy(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/batch/android/Batch;->b(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static optIn(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/h;->d(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p0, "Context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static optOut(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)V

    return-void
.end method

.method public static optOut(Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0, p1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)V

    return-void
.end method

.method public static optOutAndWipeData(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)V

    return-void
.end method

.method public static optOutAndWipeData(Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0, p1}, Lcom/batch/android/Batch;->a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)V

    return-void
.end method

.method public static setFindMyInstallationEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/batch/android/j/a;->e:Z

    return-void
.end method

.method public static setLoggerDelegate(Lcom/batch/android/LoggerDelegate;)V
    .locals 3

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Ls3;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->b(Lcom/batch/android/j1/c;)V

    return-void
.end method

.method public static setLoggerLevel(Lcom/batch/android/LoggerLevel;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "You cannot setLoggerLevel with null value"

    invoke-static {p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Ls3;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->b(Lcom/batch/android/j1/c;)V

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Lt7;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->b(Lcom/batch/android/j1/c;)V

    return-void
.end method

.method public static updateAutomaticDataCollection(Lcom/batch/android/BatchDataCollectionConfig$Editor;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/g;->a()Lcom/batch/android/v0/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/d;->a(Lcom/batch/android/BatchDataCollectionConfig$Editor;)V

    return-void
.end method

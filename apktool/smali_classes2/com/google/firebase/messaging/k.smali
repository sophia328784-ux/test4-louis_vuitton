.class public final synthetic Lcom/google/firebase/messaging/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final synthetic d:Lcom/google/firebase/messaging/Metadata;

.field public final synthetic e:Lcom/google/firebase/FirebaseApp;

.field public final synthetic f:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic g:Lcom/google/firebase/installations/FirebaseInstallationsApi;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/k;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p3, p0, Lcom/google/firebase/messaging/k;->d:Lcom/google/firebase/messaging/Metadata;

    iput-object p4, p0, Lcom/google/firebase/messaging/k;->e:Lcom/google/firebase/FirebaseApp;

    iput-object p5, p0, Lcom/google/firebase/messaging/k;->f:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p6, p0, Lcom/google/firebase/messaging/k;->g:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v4, p0, Lcom/google/firebase/messaging/k;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/firebase/messaging/k;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/google/firebase/messaging/k;->d:Lcom/google/firebase/messaging/Metadata;

    iget-object v0, p0, Lcom/google/firebase/messaging/k;->e:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/firebase/messaging/k;->f:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object p0, p0, Lcom/google/firebase/messaging/k;->g:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const-class v3, Lcom/google/firebase/messaging/TopicsStore;

    monitor-enter v3

    :try_start_0
    sget-object v6, Lcom/google/firebase/messaging/TopicsStore;->b:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/messaging/TopicsStore;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    const-string v6, "com.google.android.gms.appid"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/messaging/TopicsStore;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v6, v5}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->a(Landroid/content/SharedPreferences;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lcom/google/firebase/messaging/SharedPreferencesQueue;

    move-result-object v6

    iput-object v6, v7, Lcom/google/firebase/messaging/TopicsStore;->a:Lcom/google/firebase/messaging/SharedPreferencesQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v7

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/google/firebase/messaging/TopicsStore;->b:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    move-object v3, v0

    new-instance v0, Lcom/google/firebase/messaging/TopicsSubscriber;

    move-object v7, v3

    new-instance v3, Lcom/google/firebase/messaging/TopicSubscriptionClient;

    invoke-direct {v3, v7, v2, p0}, Lcom/google/firebase/messaging/TopicSubscriptionClient;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/TopicsSubscriber;-><init>(Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/TopicsStore;Lcom/google/firebase/messaging/TopicSubscriptionClient;Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    return-object v0

    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

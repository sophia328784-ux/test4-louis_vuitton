.class Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/callback/CallbackCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnRegistration"
.end annotation


# static fields
.field private static requests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conn:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->requests:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/HttpURLConnection;Lcom/dynatrace/android/callback/CallbackCore$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;-><init>(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;)Lcom/dynatrace/android/callback/CbWebReqTracker;
    .locals 0

    invoke-direct {p0}, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->register()Lcom/dynatrace/android/callback/CbWebReqTracker;

    move-result-object p0

    return-object p0
.end method

.method private register()Lcom/dynatrace/android/callback/CbWebReqTracker;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->c:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/callback/CbWebReqTracker;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    const-string v3, "x-dynatrace"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    :catch_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v2, :cond_3

    :try_start_2
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/android/callback/CbWebReqTracker;

    iget-object v4, v4, Lcom/dynatrace/android/callback/CbWebReqTracker;->e:Lcom/dynatrace/android/agent/WebReqTag;

    invoke-virtual {v4}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore;->c:Ljava/util/WeakHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/android/callback/CbWebReqTracker;

    invoke-virtual {v1, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/callback/CbWebReqTracker;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_3
    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->requests:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    return-object v0

    :cond_5
    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->requests:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_6

    :try_start_7
    iget-object v1, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/dynatrace/android/callback/CallbackCore;->a(Ljava/net/HttpURLConnection;)Lcom/dynatrace/android/callback/CbWebReqTracker;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    const-wide/16 v3, 0x64

    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move v1, v2

    goto :goto_1

    :cond_6
    :goto_2
    sget-object v1, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->requests:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/dynatrace/android/callback/CallbackCore$ConnRegistration;->register()Lcom/dynatrace/android/callback/CbWebReqTracker;

    return-void
.end method

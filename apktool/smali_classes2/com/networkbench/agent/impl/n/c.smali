.class public final Lcom/networkbench/agent/impl/n/c;
.super Lcom/networkbench/agent/impl/n/d;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# static fields
.field private static final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/n/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/n/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/n/c;->i:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/n/d;->b:Landroid/content/Context;

    const-string p1, "NBSEventAction"

    iput-object p1, p0, Lcom/networkbench/agent/impl/n/d;->d:Ljava/lang/String;

    const/4 p1, 0x7

    iput p1, p0, Lcom/networkbench/agent/impl/n/d;->e:I

    sget-object p1, Lcom/networkbench/agent/impl/harvest/a/r;->h:Lcom/networkbench/agent/impl/harvest/a/r;

    iput-object p1, p0, Lcom/networkbench/agent/impl/n/d;->g:Lcom/networkbench/agent/impl/harvest/a/r;

    return-void
.end method

.method public static a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/n/h;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    return-object v0
.end method

.method public static a(Lcom/networkbench/agent/impl/n/h;)V
    .locals 3

    if-eqz p0, :cond_1

    new-instance v0, Lcom/networkbench/agent/impl/n/h;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/n/h;-><init>(Lcom/networkbench/agent/impl/n/h;)V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/h;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TingyunSDK_userBehavior"

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSessionInfo debuglog has error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 11
    const-string p0, "userBehavior"

    const-string v0, "\n"

    .line 12
    invoke-static {p0, p1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/harvest/HarvestConnection;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/b;->d()V

    .line 50
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->e()V

    .line 51
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->formatInfo()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    sget-object p1, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "stop  timer to add data!"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 54
    sget-object p1, Lcom/networkbench/agent/impl/harvest/HarvestData;->customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/b;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "custEvents"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/n/h;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/n/h;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    const-string v1, "sessions"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public b()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "timer to handle user actions"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->d()V

    return-void
.end method

.method public c()Z
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/b;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkData()Z
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/b;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/b;->d()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->e()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->formatInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->USERACTION_DATA_STORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/m/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/n/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestData;->customEvents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/m/a;->b()V

    return-void
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->checkData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/c;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/b;->e()V

    sget-object v0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userBehavior"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/n/b;->b()Lcom/networkbench/agent/impl/n/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/b;->e()V

    sget-object p0, Lcom/networkbench/agent/impl/n/c;->h:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

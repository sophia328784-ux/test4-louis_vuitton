.class public Lcom/networkbench/agent/impl/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BlackListManager"

.field private static volatile b:Lcom/networkbench/agent/impl/e/a;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/e/a;
    .locals 2

    .line 69
    sget-object v0, Lcom/networkbench/agent/impl/e/a;->b:Lcom/networkbench/agent/impl/e/a;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/networkbench/agent/impl/e/a;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/e/a;->b:Lcom/networkbench/agent/impl/e/a;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/networkbench/agent/impl/e/a;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/e/a;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/e/a;->b:Lcom/networkbench/agent/impl/e/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/e/a;->b:Lcom/networkbench/agent/impl/e/a;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 2

    instance-of p0, p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    const/16 p1, 0xc

    if-gt p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    instance-of p0, p1, Lcom/networkbench/agent/impl/PrivacyDataType;

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private c()V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataAppVersion:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/e/a;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "BlackListManager"

    const-string v2, "addToBlacklist : \u65e0\u6548\u7684\u9879 , \u4e0d\u652f\u6301\u6dfb\u52a0\u5230\u9ed1\u540d\u5355."

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string p1, "BlackListManager"

    const-string v0, "addToBlacklist : \u4f20\u5165\u7684\u5217\u8868\u4e3a\u7a7a . "

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/e/a;->c()V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/e/a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

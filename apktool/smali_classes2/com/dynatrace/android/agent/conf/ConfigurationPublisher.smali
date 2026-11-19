.class public final Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;,
        Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;,
        Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB#\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;",
        "",
        "",
        "maxSubscribers",
        "",
        "Lcom/dynatrace/android/agent/conf/ConfigurationSubscriber;",
        "subscribers",
        "<init>",
        "(ILjava/util/Set;)V",
        "ConfigurationTransform",
        "ConfigurationUpdate",
        "ConfigChange",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/Set;

.field public b:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;-><init>(ILjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;-><init>(ILjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/dynatrace/android/agent/conf/ConfigurationSubscriber;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a:Ljava/util/Set;

    new-instance v1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->a()Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->b:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0xa

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 50
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;-><init>(ILjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->b:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a()Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;)Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->a()Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    move-result-object p1

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->b:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    invoke-virtual {p1, v1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->b:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b()Ljava/util/Map;

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/android/agent/conf/ConfigurationSubscriber;

    invoke-interface {p1}, Lcom/dynatrace/android/agent/conf/ConfigurationSubscriber;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

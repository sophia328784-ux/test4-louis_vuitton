.class public abstract Lcom/dynatrace/agent/lifecycle/AppStartupManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/lifecycle/AppStartupManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/AppStartupManager;",
        "",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;",
        "appStartupLogger",
        "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;",
        "rumEventDispatcher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/view/NavigationTracker;",
        "navigationTracker",
        "Lkotlin/Function0;",
        "Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;",
        "visibilityStatusProvider",
        "Lcom/dynatrace/agent/lifecycle/NewUserChecker;",
        "newUserChecker",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V",
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
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final b:Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

.field public final c:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

.field public final d:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final e:Lcom/dynatrace/agent/view/NavigationTracker;

.field public final f:Lkotlin/jvm/functions/Function0;

.field public final g:Lcom/dynatrace/agent/lifecycle/NewUserChecker;

.field public final h:Lcom/dynatrace/agent/useraction/UserActionController;

.field public final i:Ljava/util/ArrayList;

.field public volatile j:Z

.field public volatile k:Lcom/dynatrace/agent/view/NavigationEvent;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/agent/common/time/TimeProvider;",
            "Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;",
            "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;",
            "Lcom/dynatrace/agent/di/SessionInformationProvider;",
            "Lcom/dynatrace/agent/view/NavigationTracker;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;",
            ">;",
            "Lcom/dynatrace/agent/lifecycle/NewUserChecker;",
            "Lcom/dynatrace/agent/useraction/UserActionController;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p2, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b:Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

    iput-object p3, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->c:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iput-object p4, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p5, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iput-object p6, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->g:Lcom/dynatrace/agent/lifecycle/NewUserChecker;

    iput-object p8, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->h:Lcom/dynatrace/agent/useraction/UserActionController;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-object v0, v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b()Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b:Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App startup type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not finished"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->k:Lcom/dynatrace/agent/view/NavigationEvent;

    :cond_1
    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/dynatrace/agent/lifecycle/model/AppStartupType;
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    sget-object v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupType;->HOT:Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupType;->WARM:Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupType;->COLD:Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    return-object p0
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b()Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b:Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "App startup type "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " phase between "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    invoke-static {v0, v1}, Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] -> ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    invoke-static {v0, v1}, Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void
.end method

.method public abstract d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V
.end method

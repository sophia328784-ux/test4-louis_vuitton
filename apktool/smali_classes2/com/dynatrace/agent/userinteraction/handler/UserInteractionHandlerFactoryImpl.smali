.class public final Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;",
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactory;",
        "Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;",
        "userInteractionLogger",
        "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;",
        "userInteractionTracker",
        "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;",
        "touchUserInteractionGenerator",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigurationDataSource",
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;",
        "userInteractionConfig",
        "<init>",
        "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V",
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
.field public final a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

.field public final b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

.field public final c:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;

.field public final d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final e:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;

.field public final h:Lkotlin/Lazy;

.field public final i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->c:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;

    iput-object p4, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p5, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->e:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;

    new-instance p1, Lj51;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lj51;-><init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->f:Lkotlin/Lazy;

    new-instance p1, Lj51;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lj51;-><init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->g:Lkotlin/Lazy;

    new-instance p1, Lj51;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lj51;-><init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->h:Lkotlin/Lazy;

    sget-object p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler$Type;->TOUCH:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler$Type;

    new-instance p2, Lj51;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lj51;-><init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler$Type;->GESTURE:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler$Type;

    new-instance p2, Lj51;

    const/4 p4, 0x4

    invoke-direct {p2, p0, p4}, Lj51;-><init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V

    new-instance p4, Lkotlin/Pair;

    invoke-direct {p4, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler$Type;->ROTATION:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler$Type;

    new-instance p2, Lj51;

    const/4 p5, 0x5

    invoke-direct {p2, p0, p5}, Lj51;-><init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V

    new-instance p5, Lkotlin/Pair;

    invoke-direct {p5, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p3, p4, p5}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->i:Ljava/util/Map;

    return-void
.end method

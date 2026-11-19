.class public abstract Lcom/dynatrace/agent/compose/userinteraction/sensor/UserInteractionsApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/compose/userinteraction/sensor/UserInteractionsApi;",
        "",
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


# static fields
.field public static final a:Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;

    invoke-direct {v0}, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;-><init>()V

    sput-object v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/UserInteractionsApi;->a:Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 2

    sget-object v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/UserInteractionsApi;->a:Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

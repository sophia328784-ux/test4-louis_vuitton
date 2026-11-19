.class public interface abstract Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008`\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;",
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


# virtual methods
.method public abstract a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;
.end method

.method public abstract b(Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;
.end method

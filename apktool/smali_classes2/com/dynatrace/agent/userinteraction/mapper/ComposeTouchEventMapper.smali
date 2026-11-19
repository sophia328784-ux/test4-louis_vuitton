.class public abstract Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper;",
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


# direct methods
.method public static a(Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;)Lcom/dynatrace/agent/userinteraction/model/UiElement;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/UiElement;

    new-instance v1, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;

    iget-object v2, p0, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->c:Lcom/dynatrace/agent/compose/userinteraction/model/Label;

    iget-object v3, v2, Lcom/dynatrace/agent/compose/userinteraction/model/Label;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/dynatrace/agent/compose/userinteraction/model/Label;->b:Lcom/dynatrace/agent/compose/userinteraction/model/Label$Origin;

    sget-object v4, Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;->COMPONENT:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;->MASKED:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;->TEXT:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;

    :goto_0
    invoke-direct {v1, v3, v2}, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;-><init>(Ljava/lang/String;Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;)V

    iget-object v2, p0, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->e:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/dynatrace/agent/userinteraction/model/UiElement;-><init>(Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

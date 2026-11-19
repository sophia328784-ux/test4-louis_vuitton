.class public final Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000eB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;",
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;",
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
        "Companion",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->c:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;

    iput-object p4, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p5, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->e:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Landroid/view/View;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;J)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->e:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;

    invoke-interface {v0}, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {v0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v0

    iget-object v0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    const-string v3, "all"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p4

    move-wide p4, p5

    move p6, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p4

    move-wide p4, p5

    move p6, v1

    :goto_1
    if-eqz p6, :cond_2

    const-string v3, "Touch User Interaction suppressed, userInteractions config disabled for touches"

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->c:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;

    if-eqz v0, :cond_7

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v4, 0x0

    invoke-interface {v3, p3, p2, v4}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;->b(Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p3, p2, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/UiElement;

    iget-object p3, p3, Lcom/dynatrace/agent/userinteraction/model/UiElement;->b:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    instance-of v4, p3, Ljava/util/Collection;

    if-eqz v4, :cond_4

    move-object v4, p3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ComposeView"

    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "AndroidViewsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    invoke-interface {v3, p1, v0}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;->a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;

    move-result-object p2

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1, p2, p3}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;->b(Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;

    move-result-object p2

    :cond_8
    :goto_3
    if-eqz p2, :cond_e

    iget-object p1, p2, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/UiElement;

    iget-object p3, p2, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;->c:Lcom/dynatrace/agent/userinteraction/model/UiElement;

    if-nez p6, :cond_b

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Responder view "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NULL"

    if-eqz p3, :cond_9

    invoke-static {p3}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;->a(Lcom/dynatrace/agent/userinteraction/model/UiElement;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    move-object v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tElement view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;->a(Lcom/dynatrace/agent/userinteraction/model/UiElement;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;->a:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, v2, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    float-to-int v4, v4

    const-string v5, "x"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v2, v2, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    float-to-int v2, v2

    const-string v4, "y"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "characteristics.has_user_interaction"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "interaction.type"

    const-string v2, "touch"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_d

    iget-object v1, p3, Lcom/dynatrace/agent/userinteraction/model/UiElement;->a:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;

    const-string v2, "ui_element.responder.detected_name"

    iget-object v3, v1, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;->a:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;->b:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;

    invoke-static {v1}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionKt;->a(Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ui_element.responder.name_origin"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p3, Lcom/dynatrace/agent/userinteraction/model/UiElement;->b:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "ui_element.responder.components"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ui_element.responder.id"

    iget-object p3, p3, Lcom/dynatrace/agent/userinteraction/model/UiElement;->c:Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object p3, p1, Lcom/dynatrace/agent/userinteraction/model/UiElement;->a:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;

    iget-object p3, p3, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;->a:Ljava/lang/String;

    const-string v1, "ui_element.detected_name"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p1, Lcom/dynatrace/agent/userinteraction/model/UiElement;->a:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;

    iget-object p3, p3, Lcom/dynatrace/agent/userinteraction/model/UiElement$Name;->b:Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;

    invoke-static {p3}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionKt;->a(Lcom/dynatrace/agent/userinteraction/model/UiElement$Name$Origin;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "ui_element.name_origin"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p3, Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/dynatrace/agent/userinteraction/model/UiElement;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "ui_element.components"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ui_element.id"

    iget-object p1, p1, Lcom/dynatrace/agent/userinteraction/model/UiElement;->c:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p3, "positions"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p1, p2

    const-wide/16 p2, 0x0

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    invoke-virtual/range {p0 .. p6}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->a(Lorg/json/JSONObject;JJZ)V

    :cond_e
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->e:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;

    invoke-interface {v0}, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    invoke-static {p1}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;->b(Landroid/view/MotionEvent;)Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, v3, p1}, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;-><init>(Lcom/dynatrace/agent/userinteraction/model/TouchAction;FF)V

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->MOVE:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    iget-object p1, v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->a:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    if-eq p1, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Received Touch event "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with coordinates ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

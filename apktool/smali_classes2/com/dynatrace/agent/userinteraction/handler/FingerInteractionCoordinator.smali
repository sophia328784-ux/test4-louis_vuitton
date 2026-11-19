.class public final Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;
.super Lcom/dynatrace/agent/util/CoroutineHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;",
        "Lcom/dynatrace/agent/util/CoroutineHandler;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;",
        "touchHandler",
        "Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;",
        "gestureHandler",
        "Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;",
        "uptimeToEpochConverter",
        "Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;",
        "nativeGestureCoordinator",
        "Lcom/dynatrace/agent/userinteraction/util/RectHelper;",
        "rectHelper",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;Lcom/dynatrace/agent/userinteraction/util/RectHelper;)V",
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
.field public final b:Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

.field public final c:Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

.field public final d:Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;

.field public final e:Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;

.field public final f:Lcom/dynatrace/agent/userinteraction/util/RectHelper;

.field public g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

.field public h:Lkotlinx/coroutines/Job;

.field public i:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;Lcom/dynatrace/agent/userinteraction/util/RectHelper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/util/CoroutineHandler;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b:Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->c:Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

    iput-object p4, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->d:Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;

    iput-object p5, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->e:Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;

    iput-object p6, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->f:Lcom/dynatrace/agent/userinteraction/util/RectHelper;

    sget-object p1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;->a:Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    return-void
.end method


# virtual methods
.method public final b(Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;

    iget-object v3, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->e:Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;

    invoke-interface {v3, v2}, Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;->b(Z)Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    move-result-object v3

    sget-object v4, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->SKIP_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    instance-of v3, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;

    iget-object v3, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;->c:Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    iget-object v4, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;->d:Landroid/view/ViewGroup;

    iget-object v6, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;->e:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;

    iget-wide v7, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Touch;->b:J

    iget-object v2, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b:Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;->a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Landroid/view/ViewGroup;Landroid/view/View;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;J)V

    return-void

    :cond_1
    if-eqz v2, :cond_7

    check-cast v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;

    iget-object v2, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->a:Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;

    iget-wide v5, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->b:J

    iget-wide v7, v1, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending$Gesture;->c:J

    iget-object v0, v0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->c:Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->a:Ljava/util/List;

    iget-object v3, v2, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->c:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->b:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    iget-object v9, v0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {v9}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v9

    iget-object v9, v9, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    const-string v10, "all"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    move v10, v9

    xor-int/lit8 v9, v10, 0x1

    if-nez v10, :cond_2

    const-string v10, "Gesture User Interaction suppressed, userInteractions config disabled"

    invoke-static {v10}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v10, v0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Gesture intention "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n\tintention score "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "%\n\tduration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->d:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms\n\tpositions "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, v0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    iget v14, v11, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->a:F

    float-to-int v14, v14

    const-string v15, "x"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v14, v11, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->b:F

    float-to-int v14, v14

    const-string v15, "y"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v14, v11, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->c:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "pointer"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v14, v11, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->d:J

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-lez v16, :cond_3

    const-string v12, "start_time"

    invoke-virtual {v13, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    iget-boolean v11, v11, Lcom/dynatrace/agent/userinteraction/model/GesturePosition;->e:Z

    if-eqz v11, :cond_4

    const-string v11, "released"

    const/4 v12, 0x1

    invoke-virtual {v13, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "characteristics.has_user_interaction"

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v11, "interaction.type"

    const-string v12, "gesture"

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "interaction.pointers"

    iget v2, v2, Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;->e:I

    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "interaction.intention"

    invoke-virtual {v4}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "interaction.intention_score"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "positions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;->a(Lorg/json/JSONObject;JJZ)V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void
.end method

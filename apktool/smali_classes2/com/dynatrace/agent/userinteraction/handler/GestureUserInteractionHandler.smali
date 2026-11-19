.class public final Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;",
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;",
        "Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;",
        "userInteractionLogger",
        "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;",
        "userInteractionTracker",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigurationDataSource",
        "<init>",
        "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V",
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

.field public final c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final d:Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    new-instance p1, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;

    invoke-direct {p1}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->d:Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;->d:Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->f(Landroid/view/MotionEvent;J)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->e(Landroid/view/MotionEvent;J)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->d(Landroid/view/MotionEvent;J)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/dynatrace/agent/userinteraction/model/GestureInteractionDetector;->c(Landroid/view/MotionEvent;J)V

    return-void
.end method

.class public final Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;
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
        "Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;",
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

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    return-void
.end method

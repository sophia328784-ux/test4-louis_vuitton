.class public final Lcom/dynatrace/agent/di/UserInteractionModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/di/UserInteractionModule;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigurationDataSource",
        "Lcom/dynatrace/agent/common/InstrumentationFlavor;",
        "instrumentationFlavor",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/common/InstrumentationFlavor;Lcom/dynatrace/agent/useraction/UserActionController;)V",
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
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final e:Lcom/dynatrace/agent/useraction/UserActionController;

.field public final f:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;

.field public final g:Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/common/InstrumentationFlavor;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p4, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p6, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->e:Lcom/dynatrace/agent/useraction/UserActionController;

    new-instance p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;

    invoke-direct {p1, p5}, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;-><init>(Lcom/dynatrace/agent/common/InstrumentationFlavor;)V

    iput-object p1, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->f:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;

    new-instance p1, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;)V

    iput-object p1, p0, Lcom/dynatrace/agent/di/UserInteractionModule;->g:Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;

    return-void
.end method

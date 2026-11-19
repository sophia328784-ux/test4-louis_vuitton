.class public interface abstract Lcom/sightcall/universal/di/SdkComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sightcall/universal/di/SdkScope;
.end annotation

.annotation runtime Ldagger/Component;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001J\u0008\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH&R\u0014\u0010\u0002\u001a\u00020\u00038\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006 \u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/di/SdkComponent;",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "mainScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getMainScheduler",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "ioScheduler",
        "getIoScheduler",
        "networkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "getNetworkConnector",
        "()Lcom/sightcall/libraries/network/NetworkConnector;",
        "callComponent",
        "Lcom/sightcall/universal/CallComponent$Builder;",
        "referenceComponent",
        "Lcom/sightcall/universal/ReferenceComponent$Builder;",
        "inject",
        "",
        "universalAr",
        "Lcom/sightcall/universal/ar/UniversalAr;",
        "screenCastOverlay",
        "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;",
        "myScreenshareConsumerView",
        "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;",
        "fetchReferenceStep",
        "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;",
        "agentUsecaseStep",
        "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract callComponent()Lcom/sightcall/universal/CallComponent$Builder;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
    .annotation runtime Lcom/sightcall/universal/di/ApplicationContext;
    .end annotation
.end method

.method public abstract getIoScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .annotation runtime Lcom/sightcall/universal/di/IOScheduler;
    .end annotation
.end method

.method public abstract getMainScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .annotation runtime Lcom/sightcall/universal/di/MainScheduler;
    .end annotation
.end method

.method public abstract getNetworkConnector()Lcom/sightcall/libraries/network/NetworkConnector;
.end method

.method public abstract inject(Lcom/sightcall/universal/ar/UniversalAr;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V
.end method

.method public abstract referenceComponent()Lcom/sightcall/universal/ReferenceComponent$Builder;
.end method

.class public interface abstract Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Component$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u0010\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tH\'J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\'J\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rH\'J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\'J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\'J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\'\u00a8\u0006\u0015\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;",
        "",
        "build",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;",
        "context",
        "Landroid/content/Context;",
        "mainScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "url",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
        "networkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "messageSender",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
        "stateHandler",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
        "senderIdGetter",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
        "initialSenderColor",
        "color",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
        "advancedannotations_release"
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
.method public abstract build()Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;
.end method

.method public abstract context(Landroid/content/Context;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract mainScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract messageSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract url(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

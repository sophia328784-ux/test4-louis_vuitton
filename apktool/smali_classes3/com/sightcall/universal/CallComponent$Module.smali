.class public final Lcom/sightcall/universal/CallComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/CallComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0008\u000cJ\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0001\u00a2\u0006\u0002\u0008\u0013JJ\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/sightcall/universal/CallComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideCallCoordinator",
        "Lcom/sightcall/universal/CallCoordinatorImpl;",
        "component",
        "Lcom/sightcall/universal/CallComponent;",
        "provideCallCoordinator$sdk_installedRelease",
        "provideCoordinator",
        "Lcom/sightcall/universal/CallCoordinator;",
        "coordinator",
        "provideCoordinator$sdk_installedRelease",
        "provideAdvancedAnnotationTouchWrapper",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
        "advancedAnnotationsAPI",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
        "sessionConfig",
        "Lcom/sightcall/universal/model/Config;",
        "provideAdvancedAnnotationTouchWrapper$sdk_installedRelease",
        "advancedAnnotationsApi",
        "context",
        "Landroid/content/Context;",
        "mainScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "networkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "senderColor",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
        "senderIdGetter",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
        "newAnnotationSender",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
        "stateHandler",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
        "settingsUrl",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
        "advancedAnnotationsContainer",
        "Landroid/view/ViewGroup;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final advancedAnnotationsApi(Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 0
    .param p2    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/sightcall/universal/di/MainScheduler;
        .end annotation
    .end param
    .annotation runtime Lcom/sightcall/universal/CallScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent;->builder()Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->context(Landroid/content/Context;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p5}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->mainScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p6}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->messageSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p7}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p8}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->url(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;->build()Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;->getApi()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    return-object p0
.end method

.method public final advancedAnnotationsContainer(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;)Landroid/view/ViewGroup;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/CallScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->getContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/CallScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)V

    return-object p0
.end method

.method public final provideCallCoordinator$sdk_installedRelease(Lcom/sightcall/universal/CallComponent;)Lcom/sightcall/universal/CallCoordinatorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/CallScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/CallCoordinatorImpl;-><init>(Lcom/sightcall/universal/CallComponent;)V

    return-object p0
.end method

.method public final provideCoordinator$sdk_installedRelease(Lcom/sightcall/universal/CallCoordinatorImpl;)Lcom/sightcall/universal/CallCoordinator;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/CallScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

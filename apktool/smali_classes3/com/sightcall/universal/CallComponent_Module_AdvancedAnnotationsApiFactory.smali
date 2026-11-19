.class public final Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mainSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/universal/CallComponent$Module;

.field private final networkConnectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;"
        }
    .end annotation
.end field

.field private final newAnnotationSenderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;"
        }
    .end annotation
.end field

.field private final senderColorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
            ">;"
        }
    .end annotation
.end field

.field private final senderIdGetterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final stateHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/CallComponent$Module;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->module:Lcom/sightcall/universal/CallComponent$Module;

    iput-object p2, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->contextProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->mainSchedulerProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->networkConnectorProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->senderColorProvider:Ldagger/internal/Provider;

    iput-object p6, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->senderIdGetterProvider:Ldagger/internal/Provider;

    iput-object p7, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->newAnnotationSenderProvider:Ldagger/internal/Provider;

    iput-object p8, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->stateHandlerProvider:Ldagger/internal/Provider;

    iput-object p9, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->settingsUrlProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static advancedAnnotationsApi(Lcom/sightcall/universal/CallComponent$Module;Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/sightcall/universal/CallComponent$Module;->advancedAnnotationsApi(Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/CallComponent$Module;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;)",
            "Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;-><init>(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->module:Lcom/sightcall/universal/CallComponent$Module;

    iget-object v1, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->mainSchedulerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v3, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->networkConnectorProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/libraries/network/NetworkConnector;

    iget-object v4, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->senderColorProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    iget-object v5, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->senderIdGetterProvider:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    iget-object v6, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->newAnnotationSenderProvider:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    iget-object v7, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->stateHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    iget-object p0, p0, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->settingsUrlProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    invoke-static/range {v0 .. v8}, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->advancedAnnotationsApi(Lcom/sightcall/universal/CallComponent$Module;Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->get()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    return-object p0
.end method

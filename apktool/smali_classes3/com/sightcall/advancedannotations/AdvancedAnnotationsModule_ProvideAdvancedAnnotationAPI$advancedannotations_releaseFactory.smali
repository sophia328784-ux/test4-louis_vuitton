.class public final Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;
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
.field private final drawerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;",
            ">;"
        }
    .end annotation
.end field

.field private final drawingModeSelectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInterpreterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field private final interactorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
            ">;"
        }
    .end annotation
.end field

.field private final messageSenderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

.field private final parserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;",
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

.field private final viewGroupProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->viewGroupProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->interactorProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->drawingModeSelectorProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->drawerProvider:Ldagger/internal/Provider;

    iput-object p6, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->eventInterpreterProvider:Ldagger/internal/Provider;

    iput-object p7, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->parserProvider:Ldagger/internal/Provider;

    iput-object p8, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->messageSenderProvider:Ldagger/internal/Provider;

    iput-object p9, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->stateHandlerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;)",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideAdvancedAnnotationAPI$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;->provideAdvancedAnnotationAPI$advancedannotations_release(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 9

    iget-object v0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->viewGroupProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->interactorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;

    iget-object v3, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->drawingModeSelectorProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;

    iget-object v4, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->drawerProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;

    iget-object v5, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->eventInterpreterProvider:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;

    iget-object v6, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->parserProvider:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    iget-object v7, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->messageSenderProvider:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->stateHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    invoke-static/range {v0 .. v8}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->provideAdvancedAnnotationAPI$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideAdvancedAnnotationAPI$advancedannotations_releaseFactory;->get()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object p0

    return-object p0
.end method

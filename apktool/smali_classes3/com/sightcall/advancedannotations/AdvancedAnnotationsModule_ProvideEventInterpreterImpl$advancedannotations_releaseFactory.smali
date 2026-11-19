.class public final Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final drawingModeSelectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
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

.field private final module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

.field private final settingsInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
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
.method private constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->viewGroupProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->drawingModeSelectorProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->settingsInteractorProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->mainSchedulerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideEventInterpreterImpl$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;->provideEventInterpreterImpl$advancedannotations_release(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->viewGroupProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->drawingModeSelectorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;

    iget-object v3, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->settingsInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->mainSchedulerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->provideEventInterpreterImpl$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideEventInterpreterImpl$advancedannotations_releaseFactory;->get()Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    move-result-object p0

    return-object p0
.end method

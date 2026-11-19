.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final liveTranslationInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

.field private final settingsPanelCoordinatorImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final startStopTranslationProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            ">;"
        }
    .end annotation
.end field

.field private final textSizeSelectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->liveTranslationInteractorProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->settingsPanelCoordinatorImplProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->startStopTranslationProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->textSizeSelectorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ">;)",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideInteractorImpl(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ")",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;->provideInteractorImpl(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iget-object v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->liveTranslationInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    iget-object v2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->settingsPanelCoordinatorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;

    iget-object v3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->startStopTranslationProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->textSizeSelectorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/domain/TextSizeSelector;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->provideInteractorImpl(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->get()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    move-result-object p0

    return-object p0
.end method

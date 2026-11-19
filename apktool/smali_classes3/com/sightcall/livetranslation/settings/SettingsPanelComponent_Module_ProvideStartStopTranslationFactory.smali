.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
        ">;"
    }
.end annotation


# instance fields
.field private final liveTranslationInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->liveTranslationInteractorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;)",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideStartStopTranslation(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/livetranslation/domain/StartStopTranslation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;->provideStartStopTranslation(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/domain/StartStopTranslation;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->liveTranslationInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    invoke-static {v0, p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->provideStartStopTranslation(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->get()Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final interactorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
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
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->interactorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;)",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideInteractor(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;->provideInteractor(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->interactorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    invoke-static {v0, p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->provideInteractor(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->get()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    move-result-object p0

    return-object p0
.end method

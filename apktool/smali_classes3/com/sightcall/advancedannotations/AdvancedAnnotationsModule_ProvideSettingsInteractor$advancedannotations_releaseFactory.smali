.class public final Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

.field private final repositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->repositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
            ">;)",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideSettingsInteractor$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;->provideSettingsInteractor$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->repositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

    invoke-static {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->provideSettingsInteractor$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideSettingsInteractor$advancedannotations_releaseFactory;->get()Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;

    move-result-object p0

    return-object p0
.end method

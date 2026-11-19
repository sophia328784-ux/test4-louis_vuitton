.class public final Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final interactorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

.field private final settingsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->interactorProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->settingsProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->componentProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
            ">;)",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;-><init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideAPI(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ljavax/inject/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
            ")",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;->provideAPI(Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    iget-object v1, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->interactorProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->settingsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->componentProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/LiveTranslationComponent;

    invoke-static {v0, v1, v2, p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->provideAPI(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->get()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    return-object p0
.end method

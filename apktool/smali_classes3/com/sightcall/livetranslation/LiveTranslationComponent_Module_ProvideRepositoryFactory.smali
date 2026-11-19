.class public final Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final liveTranslationUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

.field private final networkApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/data/API;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/data/API;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->networkApiProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->liveTranslationUrlProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/data/API;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;)",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;-><init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideRepository(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;->provideRepository(Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    iget-object v1, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->networkApiProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/livetranslation/data/API;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->liveTranslationUrlProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    invoke-static {v0, v1, p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->provideRepository(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->get()Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;

    move-result-object p0

    return-object p0
.end method

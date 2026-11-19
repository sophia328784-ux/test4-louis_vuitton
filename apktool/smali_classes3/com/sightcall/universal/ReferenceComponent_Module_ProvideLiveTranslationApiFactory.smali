.class public final Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;
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
.field private final liveTranslationUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final localeLanguageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/universal/ReferenceComponent$Module;

.field private final networkConnectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseSettingsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;"
        }
    .end annotation
.end field

.field private final userRoleProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/ReferenceComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/ReferenceComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->module:Lcom/sightcall/universal/ReferenceComponent$Module;

    iput-object p2, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->useCaseSettingsProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->userRoleProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->localeLanguageProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->liveTranslationUrlProvider:Ldagger/internal/Provider;

    iput-object p6, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->networkConnectorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/ReferenceComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/ReferenceComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;)",
            "Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;-><init>(Lcom/sightcall/universal/ReferenceComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideLiveTranslationApi(Lcom/sightcall/universal/ReferenceComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/sightcall/universal/ReferenceComponent$Module;->provideLiveTranslationApi(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->module:Lcom/sightcall/universal/ReferenceComponent$Module;

    iget-object v1, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->useCaseSettingsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iget-object v2, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->userRoleProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    iget-object v3, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->localeLanguageProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    iget-object v4, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->liveTranslationUrlProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    iget-object p0, p0, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->networkConnectorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/sightcall/libraries/network/NetworkConnector;

    invoke-static/range {v0 .. v5}, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->provideLiveTranslationApi(Lcom/sightcall/universal/ReferenceComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->get()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    return-object p0
.end method

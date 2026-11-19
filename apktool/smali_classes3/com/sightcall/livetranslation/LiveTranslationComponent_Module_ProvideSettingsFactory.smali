.class public final Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final localeLanguageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

.field private final roleProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
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


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->useCaseSettingsProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->roleProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->localeLanguageProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;)",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;-><init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideSettings(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;->provideSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->module:Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    iget-object v1, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->useCaseSettingsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iget-object v2, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->roleProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    iget-object p0, p0, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->localeLanguageProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    invoke-static {v0, v1, v2, p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->provideSettings(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->get()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    move-result-object p0

    return-object p0
.end method

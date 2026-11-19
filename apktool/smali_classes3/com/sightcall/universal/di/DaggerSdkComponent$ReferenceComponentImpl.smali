.class final Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/ReferenceComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/DaggerSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReferenceComponentImpl"
.end annotation


# instance fields
.field liveTranslationUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;"
        }
    .end annotation
.end field

.field localeLanguageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;"
        }
    .end annotation
.end field

.field provideLiveTranslationApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;

.field private final sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

.field useCaseSettingsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;"
        }
    .end annotation
.end field

.field userRoleProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;Lcom/sightcall/universal/ReferenceComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->referenceComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->initialize(Lcom/sightcall/universal/ReferenceComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/universal/ReferenceComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V
    .locals 6

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->useCaseSettingsProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->userRoleProvider:Ldagger/internal/Provider;

    invoke-static {p4}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->localeLanguageProvider:Ldagger/internal/Provider;

    invoke-static {p5}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v4

    iput-object v4, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->liveTranslationUrlProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->useCaseSettingsProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->userRoleProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->localeLanguageProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    iget-object v5, p2, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideNetworkConnectorProvider:Ldagger/internal/Provider;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;->create(Lcom/sightcall/universal/ReferenceComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/ReferenceComponent_Module_ProvideLiveTranslationApiFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->provideLiveTranslationApiProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;->provideLiveTranslationApiProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/LiveTranslationAPI;

    return-object p0
.end method

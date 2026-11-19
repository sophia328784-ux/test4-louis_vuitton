.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

.field private localLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

.field private networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

.field private useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

.field private userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/livetranslation/LiveTranslationComponent;
    .locals 9

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    const-class v1, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->localLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

    const-class v1, Lcom/sightcall/libraries/network/NetworkConnector;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    new-instance v3, Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;

    invoke-direct {v3}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;-><init>()V

    iget-object v4, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iget-object v5, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    iget-object v6, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->localLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    iget-object v7, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    iget-object v8, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

    invoke-direct/range {v2 .. v8}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;-><init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)V

    return-object v2
.end method

.method public liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    return-object p0
.end method

.method public bridge synthetic liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public localLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->localLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    return-object p0
.end method

.method public bridge synthetic localLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->localLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

    return-object p0
.end method

.method public bridge synthetic networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    return-object p0
.end method

.method public bridge synthetic useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    return-object p0
.end method

.method public bridge synthetic userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;->userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;

    move-result-object p0

    return-object p0
.end method

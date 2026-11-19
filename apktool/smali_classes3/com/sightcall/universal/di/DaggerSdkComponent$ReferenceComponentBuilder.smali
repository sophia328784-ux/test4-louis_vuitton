.class final Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/ReferenceComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/DaggerSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReferenceComponentBuilder"
.end annotation


# instance fields
.field private liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

.field private localeLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

.field private final sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

.field private useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

.field private userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;-><init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/ReferenceComponent;
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    const-class v1, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->localeLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;

    iget-object v3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    new-instance v4, Lcom/sightcall/universal/ReferenceComponent$Module;

    invoke-direct {v4}, Lcom/sightcall/universal/ReferenceComponent$Module;-><init>()V

    iget-object v5, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    iget-object v6, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    iget-object v7, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->localeLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    iget-object v8, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    invoke-direct/range {v2 .. v8}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentImpl;-><init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;Lcom/sightcall/universal/ReferenceComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V

    return-object v2
.end method

.method public bridge synthetic liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/universal/ReferenceComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    return-object p0
.end method

.method public bridge synthetic localeLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/universal/ReferenceComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->localeLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public localeLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->localeLanguage:Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    return-object p0
.end method

.method public bridge synthetic useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/universal/ReferenceComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->useCaseSettings:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    return-object p0
.end method

.method public bridge synthetic userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/universal/ReferenceComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;->userRole:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    return-object p0
.end method

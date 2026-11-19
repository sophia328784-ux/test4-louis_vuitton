.class public final Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/LiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0007J\u001e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J,\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00080\u00192\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J \u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0007\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "provideInteractorImpl",
        "settings",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
        "repository",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
        "provideRepository",
        "networkApi",
        "Lcom/sightcall/livetranslation/data/API;",
        "liveTranslationUrl",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
        "provideNetworkApi",
        "networkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "provideAPI",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        "interactorProvider",
        "Ljavax/inject/Provider;",
        "component",
        "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
        "provideSettings",
        "useCaseSettings",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "role",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
        "localeLanguage",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
        "livetranslation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAPI(Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;-><init>(Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)V

    return-object p0
.end method

.method public final provideInteractor(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideInteractorImpl(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
            ")",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;

    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V

    return-object p0
.end method

.method public final provideNetworkApi(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/data/API;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/sightcall/livetranslation/data/API;

    invoke-interface {p1, p0}, Lcom/sightcall/libraries/network/NetworkConnector;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/data/API;

    return-object p0
.end method

.method public final provideRepository(Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;-><init>(Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V

    return-object p0
.end method

.method public final provideSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/sightcall/livetranslation/data/MappersKt;->toLiveTranslationSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;

    move-result-object p0

    return-object p0
.end method

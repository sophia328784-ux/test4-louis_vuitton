.class public interface abstract Lcom/sightcall/universal/di/SDKInjectorI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/di/SDKInjectorI$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u0000 )2\u00020\u0001:\u0001)J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J:\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0012H&J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J(\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH&J\u0008\u0010\u001d\u001a\u00020\u0012H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H&J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020(H&\u00a8\u0006*\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/di/SDKInjectorI;",
        "",
        "getCallComponent",
        "Lcom/sightcall/universal/CallComponent;",
        "createCallComponent",
        "senderIdGetter",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
        "senderColor",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
        "annotationSender",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
        "stateHandler",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
        "settingsUrl",
        "",
        "sessionConfig",
        "Lcom/sightcall/universal/model/Config;",
        "destroyCallComponent",
        "",
        "getReferenceComponent",
        "Lcom/sightcall/universal/ReferenceComponent;",
        "createReferenceComponent",
        "useCaseSettings",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "role",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
        "localeLanguage",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
        "baseUrlEnvironment",
        "destroyReferenceComponent",
        "inject",
        "universalAr",
        "Lcom/sightcall/universal/ar/UniversalAr;",
        "screenCastOverlay",
        "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;",
        "myScreenshareConsumerView",
        "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;",
        "fetchReferenceStep",
        "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;",
        "agentUsecaseStep",
        "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;",
        "Companion",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/universal/di/SDKInjectorI$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/di/SDKInjectorI$Companion;->$$INSTANCE:Lcom/sightcall/universal/di/SDKInjectorI$Companion;

    sput-object v0, Lcom/sightcall/universal/di/SDKInjectorI;->Companion:Lcom/sightcall/universal/di/SDKInjectorI$Companion;

    return-void
.end method


# virtual methods
.method public abstract createCallComponent(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Ljava/lang/String;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/CallComponent;
.end method

.method public abstract createReferenceComponent(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Ljava/lang/String;)Lcom/sightcall/universal/ReferenceComponent;
.end method

.method public abstract destroyCallComponent()V
.end method

.method public abstract destroyReferenceComponent()V
.end method

.method public abstract getCallComponent()Lcom/sightcall/universal/CallComponent;
.end method

.method public abstract getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;
.end method

.method public abstract inject(Lcom/sightcall/universal/ar/UniversalAr;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V
.end method

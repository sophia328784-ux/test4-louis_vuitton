.class public interface abstract Lcom/sightcall/universal/CallComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Subcomponent$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/CallComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008H\'J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\'J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH\'J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\'\u00a8\u0006\u0011\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/CallComponent$Builder;",
        "",
        "build",
        "Lcom/sightcall/universal/CallComponent;",
        "senderIdGetter",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
        "initialSenderColor",
        "senderColor",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
        "newAnnotationSender",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
        "stateHandler",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
        "settingsUrl",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
        "sessionConfig",
        "Lcom/sightcall/universal/model/Config;",
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


# virtual methods
.method public abstract build()Lcom/sightcall/universal/CallComponent;
.end method

.method public abstract initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/universal/CallComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract newAnnotationSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/universal/CallComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/universal/CallComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract sessionConfig(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/CallComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract settingsUrl(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/universal/CallComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/universal/CallComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

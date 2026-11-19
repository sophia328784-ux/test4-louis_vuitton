.class public interface abstract Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;,
        Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008f\u0018\u00002\u00020\u0001:\n%&\'()*+,-.J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0003H&J\u0008\u0010\u0016\u001a\u00020\u0003H&J\u0008\u0010\u0017\u001a\u00020\u0003H&J\u0008\u0010\u0018\u001a\u00020\u0003H&J\u0008\u0010\u0019\u001a\u00020\u0003H&J\u0008\u0010\u001a\u001a\u00020\u0003H&R\u0012\u0010\u001b\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u00020\u0010X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010$\u00a8\u0006/\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
        "",
        "processAnnotation",
        "",
        "annotation",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;",
        "selectDrivenMode",
        "request",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;",
        "selectUpdateCapability",
        "capability",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;",
        "selectStandaloneMode",
        "mode",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;",
        "processTouch",
        "",
        "touch",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;",
        "fromView",
        "Landroid/view/View;",
        "clear",
        "processDeleteAll",
        "pauseAnnotations",
        "resumeAnnotations",
        "enableLocalTouch",
        "disableLocalTouch",
        "ready",
        "getReady",
        "()Z",
        "container",
        "Landroid/view/ViewGroup;",
        "getContainer",
        "()Landroid/view/ViewGroup;",
        "isEphemeral",
        "setEphemeral",
        "(Z)V",
        "InbandMessageAnnotation",
        "AnnotationRequest",
        "UpdateCapability",
        "StandaloneMode",
        "Touch",
        "AdvancedAnnotationsSettingsUrl",
        "MessageSender",
        "StateHandler",
        "SenderIdGetter",
        "InitialSenderColor",
        "advancedannotations_release"
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
.method public abstract clear()V
.end method

.method public abstract disableLocalTouch()V
.end method

.method public abstract enableLocalTouch()V
.end method

.method public abstract getContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getReady()Z
.end method

.method public abstract isEphemeral()Z
.end method

.method public abstract pauseAnnotations()V
.end method

.method public abstract processAnnotation(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V
.end method

.method public abstract processDeleteAll()V
.end method

.method public abstract processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z
.end method

.method public abstract resumeAnnotations()V
.end method

.method public abstract selectDrivenMode(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V
.end method

.method public abstract selectStandaloneMode(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V
.end method

.method public abstract selectUpdateCapability(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;)V
.end method

.method public abstract setEphemeral(Z)V
.end method

.class public interface abstract Lcom/sightcall/universal/CallComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sightcall/universal/CallScope;
.end annotation

.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/CallComponent$Builder;,
        Lcom/sightcall/universal/CallComponent$Module;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001:\u0002\u001a\u001bJ\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/CallComponent;",
        "",
        "advancedAnnotationsAPI",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
        "getAdvancedAnnotationsAPI",
        "()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
        "inject",
        "",
        "myVideoProducerCameraView",
        "Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;",
        "progressivexImageView",
        "Lcom/sightcall/universal/internal/view/ProgressivexImageView;",
        "callActivity",
        "Lcom/sightcall/universal/internal/ui/CallActivity;",
        "myVideoConsumerView",
        "Lcom/sightcall/universal/internal/view/MyVideoConsumerView;",
        "myVideoProducerWrapper",
        "Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;",
        "myScreenshareConsumerView",
        "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;",
        "myScreenshareProducerWebView",
        "Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;",
        "screenCastOverlay",
        "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;",
        "callStep",
        "Lcom/sightcall/universal/scenario/steps/CallStep;",
        "Builder",
        "Module",
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
.method public abstract getAdvancedAnnotationsAPI()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/ui/CallActivity;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V
.end method

.method public abstract inject(Lcom/sightcall/universal/scenario/steps/CallStep;)V
.end method

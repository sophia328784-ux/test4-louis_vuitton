.class public interface abstract Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0001H&J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0001H&J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0007H&J\u0008\u0010\u0012\u001a\u00020\tH&J\u0008\u0010\u0013\u001a\u00020\tH&R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u0001X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
        "",
        "processTouch",
        "",
        "touch",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;",
        "fromView",
        "Landroid/view/View;",
        "processDeleteAll",
        "",
        "selectStandaloneMode",
        "anchor",
        "mode",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;",
        "resumeAnnotations",
        "pauseAnnotations",
        "layoutOver",
        "view",
        "enableLocalTouch",
        "disableLocalTouch",
        "getAnchor",
        "()Ljava/lang/Object;",
        "setAnchor",
        "(Ljava/lang/Object;)V",
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
.method public abstract disableLocalTouch()V
.end method

.method public abstract enableLocalTouch()V
.end method

.method public abstract getAnchor()Ljava/lang/Object;
.end method

.method public abstract layoutOver(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract pauseAnnotations(Ljava/lang/Object;)V
.end method

.method public abstract processDeleteAll()V
.end method

.method public abstract processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z
.end method

.method public abstract resumeAnnotations(Ljava/lang/Object;)V
.end method

.method public abstract selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V
.end method

.method public abstract setAnchor(Ljava/lang/Object;)V
.end method

.class public interface abstract Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008`\u0018\u00002\u00020\u0001:\u0001\u000fJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0003H&R\u0018\u0010\u000b\u001a\u00020\u0005X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;",
        "",
        "clear",
        "",
        "processEvent",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "fromView",
        "Landroid/view/View;",
        "processDeleteAll",
        "isEphemeral",
        "()Z",
        "setEphemeral",
        "(Z)V",
        "Out",
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

.method public abstract isEphemeral()Z
.end method

.method public abstract processDeleteAll()V
.end method

.method public abstract processEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
.end method

.method public abstract setEphemeral(Z)V
.end method

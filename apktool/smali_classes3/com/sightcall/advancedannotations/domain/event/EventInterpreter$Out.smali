.class public interface abstract Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Out"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001f\u0010\u0007\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
        "",
        "annotationCommands",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
        "getAnnotationCommands",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "touchEventsHandled",
        "",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "getTouchEventsHandled",
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
.method public abstract getAnnotationCommands()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchEventsHandled()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

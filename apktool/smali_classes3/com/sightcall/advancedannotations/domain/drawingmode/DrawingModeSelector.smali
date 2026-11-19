.class public interface abstract Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008`\u0018\u00002\u00020\u0001:\u0005\u0017\u0018\u0019\u001a\u001bJ\u0008\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H&R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
        "",
        "actions",
        "Lio/reactivex/rxjava3/core/Observer;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "getActions",
        "()Lio/reactivex/rxjava3/core/Observer;",
        "state",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
        "getState",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "clear",
        "",
        "selectDrivenMode",
        "request",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;",
        "selectUpdateCapability",
        "capability",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;",
        "selectStandaloneMode",
        "mode",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;",
        "Mode",
        "ModeConfiguration",
        "UpdateCapability",
        "DrivenMode",
        "StandaloneMode",
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

.method public abstract getActions()Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectDrivenMode(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V
.end method

.method public abstract selectStandaloneMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)V
.end method

.method public abstract selectUpdateCapability(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;)V
.end method

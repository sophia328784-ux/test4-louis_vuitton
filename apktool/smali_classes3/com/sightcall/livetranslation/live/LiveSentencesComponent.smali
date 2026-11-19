.class public interface abstract Lcom/sightcall/livetranslation/live/LiveSentencesComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sightcall/livetranslation/live/LiveSentencesScope;
.end annotation

.annotation runtime Ldagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;,
        Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008g\u0018\u00002\u00020\u0001:\u0002\u000f\u0010R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
        "",
        "viewHolder",
        "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;",
        "getViewHolder",
        "()Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;",
        "coordinator",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
        "getCoordinator",
        "()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
        "getInteractor",
        "()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Builder",
        "Module",
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


# virtual methods
.method public abstract getCoordinator()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;
.end method

.method public abstract getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewHolder()Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;
.end method

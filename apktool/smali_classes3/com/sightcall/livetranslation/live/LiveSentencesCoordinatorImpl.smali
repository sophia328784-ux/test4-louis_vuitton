.class public final Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;
.super Lcom/sightcall/libraries/archi/coordinator/Coordinator;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
        "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
        ">;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;",
        "component",
        "<init>",
        "(Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)V",
        "onStart",
        "",
        "onRelease",
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
.method public constructor <init>(Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;

    invoke-interface {v0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;->getViewHolder()Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->removeFromRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;->getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->clear()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;->getViewHolder()Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->addOnRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    return-void
.end method

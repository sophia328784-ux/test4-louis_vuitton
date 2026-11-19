.class public final Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;
.super Lcom/sightcall/libraries/archi/coordinator/Coordinator;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/history/HistoryCoordinator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
        "Lcom/sightcall/livetranslation/history/HistoryComponent;",
        ">;",
        "Lcom/sightcall/livetranslation/history/HistoryCoordinator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0014J\u0008\u0010\u000c\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "Lcom/sightcall/livetranslation/history/HistoryComponent;",
        "Lcom/sightcall/livetranslation/history/HistoryCoordinator;",
        "component",
        "closeFeature",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
        "<init>",
        "(Lcom/sightcall/livetranslation/history/HistoryComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V",
        "onStart",
        "",
        "onRelease",
        "close",
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


# instance fields
.field private final closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/history/HistoryComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;->invoke()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/livetranslation/history/HistoryComponent;

    invoke-interface {v0}, Lcom/sightcall/livetranslation/history/HistoryComponent;->getViewHolder()Lcom/sightcall/livetranslation/history/HistoryViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->removeFromRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/history/HistoryComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/history/HistoryComponent;->getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->clear()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->getComponent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/history/HistoryComponent;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/history/HistoryComponent;->getViewHolder()Lcom/sightcall/livetranslation/history/HistoryViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->addOnRootView()Lcom/sightcall/libraries/archi/nucleus/ViewHolder;

    return-void
.end method

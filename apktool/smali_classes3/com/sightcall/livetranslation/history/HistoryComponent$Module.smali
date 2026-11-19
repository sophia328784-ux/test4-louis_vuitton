.class public final Lcom/sightcall/livetranslation/history/HistoryComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/history/HistoryComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0001\u00a2\u0006\u0002\u0008\u000bJ\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001\u00a2\u0006\u0002\u0008\u0010J\u001d\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0001\u00a2\u0006\u0002\u0008\u0016J\u001c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018H\u0007J$\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00182\u0006\u0010\u001a\u001a\u00020\r2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\tH\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/history/HistoryComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideViewHolder",
        "Lcom/sightcall/livetranslation/history/HistoryViewHolder;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
        "provideViewHolder$livetranslation_release",
        "provideCoordinator",
        "Lcom/sightcall/livetranslation/history/HistoryCoordinator;",
        "coordinatorImpl",
        "Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;",
        "provideCoordinator$livetranslation_release",
        "provideCoordinatorImpl",
        "component",
        "Lcom/sightcall/livetranslation/history/HistoryComponent;",
        "closeFeature",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
        "provideCoordinatorImpl$livetranslation_release",
        "provideInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "provideInteractorImpl",
        "coordinator",
        "liveTranslationInteractor",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCoordinator$livetranslation_release(Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;)Lcom/sightcall/livetranslation/history/HistoryCoordinator;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/history/HistoryScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideCoordinatorImpl$livetranslation_release(Lcom/sightcall/livetranslation/history/HistoryComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/history/HistoryScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;-><init>(Lcom/sightcall/livetranslation/history/HistoryComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V

    return-object p0
.end method

.method public final provideInteractor(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/history/HistoryScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideInteractorImpl(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/history/HistoryScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/history/HistoryCoordinator;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;-><init>(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    return-object p0
.end method

.method public final provideViewHolder$livetranslation_release(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/livetranslation/history/HistoryViewHolder;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/history/HistoryScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/history/HistoryViewHolder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/history/HistoryViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    return-object p0
.end method

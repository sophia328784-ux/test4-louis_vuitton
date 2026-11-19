.class public final Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/live/LiveSentencesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u001c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0014H\u0007J$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\t2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideViewHolder",
        "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
        "provideCoordinator",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;",
        "coordinator",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
        "provideCoordinatorImpl",
        "component",
        "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
        "provideInteractor",
        "liveSentencesInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "provideInteractorImpl",
        "liveTranslationInteractor",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "settings",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;",
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
.method public final provideCoordinator(Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/live/LiveSentencesScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideCoordinatorImpl(Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/live/LiveSentencesScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;-><init>(Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)V

    return-object p0
.end method

.method public final provideInteractor(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/live/LiveSentencesScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final provideInteractorImpl(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/live/LiveSentencesScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;",
            ")",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;

    invoke-virtual {p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getHeight()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V

    return-object p0
.end method

.method public final provideViewHolder(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;
    .locals 0
    .annotation runtime Lcom/sightcall/livetranslation/live/LiveSentencesScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    return-object p0
.end method

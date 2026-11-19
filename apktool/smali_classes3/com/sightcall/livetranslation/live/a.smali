.class public final synthetic Lcom/sightcall/livetranslation/live/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;

    check-cast p2, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;->d(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;

    move-result-object p0

    return-object p0
.end method

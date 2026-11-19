.class public final synthetic Lcom/sightcall/livetranslation/history/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sightcall/livetranslation/history/HistoryInteractor$State;

    check-cast p2, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->f(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/history/HistoryInteractor$State;

    move-result-object p0

    return-object p0
.end method

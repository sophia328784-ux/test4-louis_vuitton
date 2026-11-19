.class public final Lcom/sightcall/livetranslation/history/HistoryViewHolderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "mapToAdapter",
        "",
        "Lcom/sightcall/livetranslation/history/HistoryAdapter$Item;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
        "livetranslation_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$mapToAdapter(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/history/HistoryViewHolderKt;->mapToAdapter(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final mapToAdapter(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/history/HistoryAdapter$Item;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/history/HistoryInteractor$State;->getSentences()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/livetranslation/domain/Sentence;

    new-instance v2, Lcom/sightcall/livetranslation/history/HistoryAdapter$Item;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Sentence;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Sentence;->getColor()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sightcall/livetranslation/history/HistoryAdapter$Item;-><init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

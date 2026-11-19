.class final Lcom/sightcall/livetranslation/domain/TimeOutSentence$execute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/livetranslation/domain/TimeOutSentence;->execute()Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/livetranslation/domain/TimeOutSentence;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/domain/TimeOutSentence;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence$execute$1;->this$0:Lcom/sightcall/livetranslation/domain/TimeOutSentence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Long;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence$execute$1;->this$0:Lcom/sightcall/livetranslation/domain/TimeOutSentence;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/TimeOutSentence;->getSentence()Lcom/sightcall/livetranslation/domain/Sentence;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;-><init>(Lcom/sightcall/livetranslation/domain/Sentence;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/domain/TimeOutSentence$execute$1;->apply(Ljava/lang/Long;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0
.end method

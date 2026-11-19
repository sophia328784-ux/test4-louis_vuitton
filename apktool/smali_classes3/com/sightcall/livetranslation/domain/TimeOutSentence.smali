.class public final Lcom/sightcall/livetranslation/domain/TimeOutSentence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/domain/TimeOutSentence;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "sentence",
        "Lcom/sightcall/livetranslation/domain/Sentence;",
        "sentenceTimeOut",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;",
        "<init>",
        "(Lcom/sightcall/livetranslation/domain/Sentence;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;)V",
        "getSentence",
        "()Lcom/sightcall/livetranslation/domain/Sentence;",
        "getSentenceTimeOut",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;",
        "execute",
        "Lio/reactivex/rxjava3/core/Single;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
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
.field private final sentence:Lcom/sightcall/livetranslation/domain/Sentence;

.field private final sentenceTimeOut:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/domain/Sentence;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence;->sentence:Lcom/sightcall/livetranslation/domain/Sentence;

    iput-object p2, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence;->sentenceTimeOut:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;

    return-void
.end method


# virtual methods
.method public execute()Lio/reactivex/rxjava3/core/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence;->sentenceTimeOut:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;

    invoke-virtual {v0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;->getValue()J

    move-result-wide v0

    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->a:Lio/reactivex/rxjava3/core/Scheduler;

    const-string v3, "unit is null"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "scheduler is null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/single/SingleTimer;

    invoke-direct {v3, v0, v1, v4, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleTimer;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/TimeOutSentence$execute$1;

    invoke-direct {v0, p0}, Lcom/sightcall/livetranslation/domain/TimeOutSentence$execute$1;-><init>(Lcom/sightcall/livetranslation/domain/TimeOutSentence;)V

    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/core/Single;->d(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    move-result-object p0

    return-object p0
.end method

.method public final getSentence()Lcom/sightcall/livetranslation/domain/Sentence;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence;->sentence:Lcom/sightcall/livetranslation/domain/Sentence;

    return-object p0
.end method

.method public final getSentenceTimeOut()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/TimeOutSentence;->sentenceTimeOut:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;

    return-object p0
.end method

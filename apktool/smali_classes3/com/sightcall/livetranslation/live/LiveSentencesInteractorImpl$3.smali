.class final Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V
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


# static fields
.field public static final INSTANCE:Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;

    invoke-direct {v0}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;-><init>()V

    sput-object v0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;->INSTANCE:Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Pair;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;+",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
            ">;)",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;

    iget-object v0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    invoke-direct {p0, v0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;-><init>(Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;->apply(Lkotlin/Pair;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;

    move-result-object p0

    return-object p0
.end method

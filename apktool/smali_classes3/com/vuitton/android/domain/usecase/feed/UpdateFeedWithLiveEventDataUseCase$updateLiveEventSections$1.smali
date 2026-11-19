.class final Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.domain.usecase.feed.UpdateFeedWithLiveEventDataUseCase"
    f = "UpdateFeedWithLiveEventDataUseCase.kt"
    l = {
        0x22
    }
    m = "updateLiveEventSections"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/util/Collection;

.field public c:Ljava/util/Iterator;

.field public d:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

.field public e:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

.field public f:Ljava/util/Collection;

.field public g:I

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;

.field public k:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->j:Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->i:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->k:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase$updateLiveEventSections$1;->j:Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/feed/UpdateFeedWithLiveEventDataUseCase;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

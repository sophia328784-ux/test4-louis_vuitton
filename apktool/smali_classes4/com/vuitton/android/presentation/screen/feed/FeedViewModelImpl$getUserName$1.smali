.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl"
    f = "FeedViewModelImpl.kt"
    l = {
        0x1e9,
        0x1e9
    }
    m = "getUserName"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

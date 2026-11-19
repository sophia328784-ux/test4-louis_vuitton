.class final Landroidx/paging/PageFetcher$generateNewPagingSource$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.PageFetcher"
    f = "PageFetcher.kt"
    l = {
        0xd2
    }
    m = "generateNewPagingSource"
.end annotation


# instance fields
.field public b:Landroidx/paging/PageFetcher;

.field public c:Landroidx/paging/PagingSource;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/paging/PageFetcher;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->e:Landroidx/paging/PageFetcher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->d:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->f:I

    iget-object p1, p0, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->e:Landroidx/paging/PageFetcher;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroidx/paging/PageFetcher;->a(Landroidx/paging/PageFetcher;Landroidx/paging/PagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

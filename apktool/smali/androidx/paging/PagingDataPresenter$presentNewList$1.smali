.class final Landroidx/paging/PagingDataPresenter$presentNewList$1;
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
    c = "androidx.paging.PagingDataPresenter"
    f = "PagingDataPresenter.kt"
    l = {
        0x1de
    }
    m = "presentNewList"
.end annotation


# instance fields
.field public b:Landroidx/paging/PagingDataPresenter;

.field public c:Ljava/util/List;

.field public d:Landroidx/paging/LoadStates;

.field public e:Landroidx/paging/LoadStates;

.field public f:Landroidx/paging/HintReceiver;

.field public g:Landroidx/paging/PageStore;

.field public h:I

.field public i:I

.field public j:Z

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroidx/paging/PagingDataPresenter;

.field public m:I


# direct methods
.method public constructor <init>(Landroidx/paging/PagingDataPresenter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->l:Landroidx/paging/PagingDataPresenter;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->k:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->l:Landroidx/paging/PagingDataPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroidx/paging/PagingDataPresenter;->a(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

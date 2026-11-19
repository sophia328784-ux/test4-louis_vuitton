.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;
.super Landroidx/paging/PagingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001Bi\u00127\u0010\u000c\u001a3\u0008\u0001\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004\u0012\'\u0010\u0010\u001a#\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000f0\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "pageIndex",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "",
        "requestPage",
        "Lkotlin/Function1;",
        "page",
        "",
        "pageMapper",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "presentation"
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
.field public final b:Lkotlin/jvm/functions/Function2;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;->c:Lkotlin/jvm/functions/Function1;

    const-class p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;

    sget-object p1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p1, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/paging/PagingState;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p1, Landroidx/paging/PagingState;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->b:I

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadParams;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    iput p1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->b:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource$load$1;->e:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Page;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;->d:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    :goto_3
    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->h:Ljava/lang/Integer;

    invoke-direct {v1, v0, v3, p2}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;->d:I

    return-object v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    new-instance p0, Landroidx/paging/PagingSource$LoadResult$Error;

    invoke-direct {p0, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

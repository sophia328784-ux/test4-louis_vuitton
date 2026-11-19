.class final Landroidx/paging/FlattenedPageController$record$1;
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
    c = "androidx.paging.FlattenedPageController"
    f = "CachedPageEventFlow.kt"
    l = {
        0x11f
    }
    m = "record"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlin/collections/IndexedValue;

.field public d:Lkotlinx/coroutines/sync/MutexImpl;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/paging/FlattenedPageController;

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/paging/FlattenedPageController;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/FlattenedPageController$record$1;->f:Landroidx/paging/FlattenedPageController;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/paging/FlattenedPageController$record$1;->e:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/FlattenedPageController$record$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/FlattenedPageController$record$1;->g:I

    iget-object p1, p0, Landroidx/paging/FlattenedPageController$record$1;->f:Landroidx/paging/FlattenedPageController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/paging/FlattenedPageController;->b(Lkotlin/collections/IndexedValue;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

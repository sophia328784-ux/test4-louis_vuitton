.class final Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;
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
    c = "com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl"
    f = "PersonalSelectionsInStoreViewModelImpl.kt"
    l = {
        0x10a,
        0x114
    }
    m = "enrichProducts"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field public h:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/Collection;

.field public l:Ljava/util/Collection;

.field public m:Ljava/util/Iterator;

.field public n:Ljava/util/Map;

.field public o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->x:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->x:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

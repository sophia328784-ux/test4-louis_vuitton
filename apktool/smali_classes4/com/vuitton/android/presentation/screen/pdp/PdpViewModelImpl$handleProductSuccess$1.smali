.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl"
    f = "PdpViewModelImpl.kt"
    l = {
        0x245,
        0x258,
        0x265
    }
    m = "handleProductSuccess-yew4Fnc"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

.field public e:Z

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->g:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->g:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

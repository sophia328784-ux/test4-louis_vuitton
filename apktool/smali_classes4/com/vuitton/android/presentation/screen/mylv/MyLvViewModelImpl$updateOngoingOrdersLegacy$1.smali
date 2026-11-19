.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl"
    f = "MyLvViewModelImpl.kt"
    l = {
        0x218,
        0x21b,
        0x21c,
        0x21d
    }
    m = "updateOngoingOrdersLegacy"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public d:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->h:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$1;->g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Dc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

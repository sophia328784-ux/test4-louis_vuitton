.class final Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl"
    f = "StoreModeViewModelImpl.kt"
    l = {
        0x105,
        0x10b
    }
    m = "getStoreModeInfo"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->i:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->i:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

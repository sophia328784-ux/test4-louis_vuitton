.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl"
    f = "MyInformationViewModelImpl.kt"
    l = {
        0xa5,
        0xa6,
        0xa7
    }
    m = "initFlags"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->i:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->j:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$initFlags$1;->i:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity"
    f = "ProductArActivity.kt"
    l = {
        0x1d1,
        0x1d7,
        0x1eb
    }
    m = "startUx"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

.field public c:Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->e:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$startUx$1;->e:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->I(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    return-object p0
.end method

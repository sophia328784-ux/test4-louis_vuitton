.class final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;
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
        0x1a9
    }
    m = "ensureArCoreInstalled"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->c:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->d:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$ensureArCoreInstalled$1;->c:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->J(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

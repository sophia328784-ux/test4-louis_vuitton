.class final Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1"
    f = "CertificateNfcScanComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->e:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->d:Lkotlin/jvm/functions/Function0;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->c:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->yc(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

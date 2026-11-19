.class final Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;
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
    c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl"
    f = "ThankYouViewModelImpl.kt"
    l = {
        0xe9,
        0xe9
    }
    m = "resolveDisplayName"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl"
    f = "AuthenticationViewModelImpl.kt"
    l = {
        0x1c9,
        0x1cc,
        0x1cd,
        0x1cd,
        0x1cf,
        0x1d1,
        0x1d4
    }
    m = "callAfterLogin"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$1;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->yc(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

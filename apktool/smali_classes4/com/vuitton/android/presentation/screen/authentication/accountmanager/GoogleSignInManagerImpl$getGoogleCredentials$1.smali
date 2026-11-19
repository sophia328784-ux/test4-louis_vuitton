.class final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManagerImpl"
    f = "GoogleSignInManagerImpl.kt"
    l = {
        0x38
    }
    m = "getGoogleCredentials"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public c:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->g:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->h:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->g:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

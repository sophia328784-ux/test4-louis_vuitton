.class final Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;
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
    c = "com.vuitton.android.data.net.interceptor.RefreshAuthenticator"
    f = "RefreshAuthenticator.kt"
    l = {
        0x38,
        0x41
    }
    m = "authenticateSuspendable"
    v = 0x2
.end annotation


# instance fields
.field public b:Lokhttp3/Response;

.field public c:Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->f:Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->f:Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->a(Lokhttp3/Response;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

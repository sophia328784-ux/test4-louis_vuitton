.class final Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;
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
    c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl"
    f = "ATGSessionManagerImpl.kt"
    l = {
        0x8c,
        0x8d,
        0x9a,
        0x9b
    }
    m = "retrieveATGSessionStatus"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->f:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    sget p1, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->f:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

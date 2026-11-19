.class final Lcoil3/intercept/EngineInterceptor$fetch$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0xa9
    }
    m = "fetch"
    v = 0x1
.end annotation


# instance fields
.field public b:Lcoil3/ComponentRegistry;

.field public c:Lcoil3/request/ImageRequest;

.field public d:Ljava/lang/Object;

.field public e:Lcoil3/request/Options;

.field public f:Lcoil3/EventListener;

.field public g:Lcoil3/fetch/Fetcher;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcoil3/intercept/EngineInterceptor;

.field public k:I


# direct methods
.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$fetch$1;->j:Lcoil3/intercept/EngineInterceptor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$fetch$1;->i:Ljava/lang/Object;

    iget p1, p0, Lcoil3/intercept/EngineInterceptor$fetch$1;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil3/intercept/EngineInterceptor$fetch$1;->k:I

    sget p1, Lcoil3/intercept/EngineInterceptor;->f:I

    iget-object v0, p0, Lcoil3/intercept/EngineInterceptor$fetch$1;->j:Lcoil3/intercept/EngineInterceptor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcoil3/intercept/EngineInterceptor;->d(Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

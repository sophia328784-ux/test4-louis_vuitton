.class final Lcoil3/RealImageLoader$execute$3;
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
    c = "coil3.RealImageLoader"
    f = "RealImageLoader.kt"
    l = {
        0x76,
        0x82,
        0x86
    }
    m = "execute"
    v = 0x1
.end annotation


# instance fields
.field public b:Lcoil3/request/RequestDelegate;

.field public c:Lcoil3/request/ImageRequest;

.field public d:Lcoil3/EventListener;

.field public e:Lcoil3/Image;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcoil3/RealImageLoader;

.field public i:I


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcoil3/RealImageLoader$execute$3;->h:Lcoil3/RealImageLoader;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcoil3/RealImageLoader$execute$3;->g:Ljava/lang/Object;

    iget p1, p0, Lcoil3/RealImageLoader$execute$3;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil3/RealImageLoader$execute$3;->i:I

    sget p1, Lcoil3/RealImageLoader;->f:I

    iget-object p1, p0, Lcoil3/RealImageLoader$execute$3;->h:Lcoil3/RealImageLoader;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcoil3/RealImageLoader;->f(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

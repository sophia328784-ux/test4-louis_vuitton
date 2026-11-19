.class final Lcoil3/network/NetworkFetcher$writeToDiskCache$1;
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
    c = "coil3.network.NetworkFetcher"
    f = "NetworkFetcher.kt"
    l = {
        0xb8,
        0xc7
    }
    m = "writeToDiskCache"
    v = 0x1
.end annotation


# instance fields
.field public b:Lcoil3/disk/DiskCache$Snapshot;

.field public c:Lcoil3/network/NetworkResponse;

.field public d:Lcoil3/network/NetworkResponse;

.field public e:Lcoil3/disk/DiskCache$Editor;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcoil3/network/NetworkFetcher;

.field public h:I


# direct methods
.method public constructor <init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->g:Lcoil3/network/NetworkFetcher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->g:Lcoil3/network/NetworkFetcher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcoil3/network/NetworkFetcher;->d(Lcoil3/network/NetworkFetcher;Lcoil3/disk/DiskCache$Snapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkRequest;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

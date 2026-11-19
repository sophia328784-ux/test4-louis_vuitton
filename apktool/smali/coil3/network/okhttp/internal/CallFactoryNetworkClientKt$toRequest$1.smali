.class final Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;
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
    c = "coil3.network.okhttp.internal.CallFactoryNetworkClientKt"
    f = "CallFactoryNetworkClient.kt"
    l = {
        0x20
    }
    m = "toRequest"
    v = 0x1
.end annotation


# instance fields
.field public b:Lcoil3/network/NetworkRequest;

.field public c:Lokhttp3/Request$Builder;

.field public d:Lokhttp3/Request$Builder;

.field public e:Ljava/lang/String;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;->g:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt;->b(Lcoil3/network/NetworkRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

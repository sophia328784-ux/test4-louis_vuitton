.class final Lcoil3/network/UncoordinatedConcurrentRequestStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/network/ConcurrentRequestStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcoil3/network/UncoordinatedConcurrentRequestStrategy;",
        "Lcoil3/network/ConcurrentRequestStrategy;",
        "<init>",
        "()V",
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcoil3/network/NetworkFetcher$fetch$2;

    invoke-virtual {p2, p1}, Lcoil3/network/NetworkFetcher$fetch$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

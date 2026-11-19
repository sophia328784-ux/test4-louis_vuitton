.class public final Lcoil3/network/okhttp/internal/CallsKt$await$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "coil3/network/okhttp/internal/CallsKt$await$2$2",
        "Lokhttp3/Callback;",
        "io.coil-kt.coil3:coil-network-okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$2;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->d(Lokhttp3/Call;Ljava/io/IOException;)V

    :try_start_0
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$2;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget p1, Lcom/dynatrace/android/callback/OkCallback;->a:I

    throw p0
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->e(Lokhttp3/Call;Lokhttp3/Response;)V

    :try_start_0
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallsKt$await$2$2;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object p1, Lcoil3/network/okhttp/internal/CallsKt$await$2$2$onResponse$1;->b:Lcoil3/network/okhttp/internal/CallsKt$await$2$2$onResponse$1;

    invoke-interface {p0, p2, p1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget p1, Lcom/dynatrace/android/callback/OkCallback;->a:I

    throw p0
.end method

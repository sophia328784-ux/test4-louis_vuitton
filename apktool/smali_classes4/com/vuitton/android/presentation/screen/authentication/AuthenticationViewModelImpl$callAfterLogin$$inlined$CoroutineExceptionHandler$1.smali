.class public final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p2, "AuthenticationViewModelImpl"

    const-string v0, "Unable to execute all actions after login"

    invoke-interface {p0, p2, v0, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

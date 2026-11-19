.class public final Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;",
        "",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "<init>",
        "(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of v1, v0, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;

    iget-object v3, v0, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;->a:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    iget-object v0, v0, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;->b:Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;

    invoke-direct {p1, v3, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$RedirectAfterLogin;-><init>(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccount;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of v1, p1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;

    if-nez v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    return-void
.end method

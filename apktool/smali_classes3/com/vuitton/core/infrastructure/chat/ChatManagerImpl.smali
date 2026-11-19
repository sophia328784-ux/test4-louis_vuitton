.class public final Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/contracts/chat/ChatManager;
.implements Lcom/vuitton/foundation/contracts/chat/ChatTracker;
.implements Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\rB)\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;",
        "Lcom/vuitton/foundation/contracts/chat/ChatManager;",
        "Lcom/vuitton/foundation/contracts/chat/ChatTracker;",
        "Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;",
        "Lcom/powerfront/insidewebsdkandroid/InsideClient;",
        "insideClient",
        "chatTracker",
        "Lcom/vuitton/foundation/contracts/link/UrlVerifier;",
        "urlVerifier",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/contracts/chat/ChatTracker;Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lcom/vuitton/foundation/logger/Logger;)V",
        "Companion",
        "chat"
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
.field public final a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

.field public final b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

.field public final c:Lcom/vuitton/foundation/logger/Logger;

.field public d:Ljava/lang/ref/WeakReference;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/StateFlow;

.field public final g:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final h:Lkotlinx/coroutines/flow/SharedFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/contracts/chat/ChatTracker;Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->h:Lkotlinx/coroutines/flow/SharedFlow;

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    move-object v4, p1

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;-><init>(Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/logger/Logger;)V

    iput-object v0, v4, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final a(Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;)V
    .locals 8

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "initialize: currentActivity is null"

    const/4 p1, 0x0

    const-string v1, "ChatManager"

    invoke-interface {v0, v1, p0, p1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iput-boolean v0, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->v:Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->e:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->d:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->h:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k()Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i:Landroid/webkit/ValueCallback;

    :cond_0
    return-void
.end method

.method public final g()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final i(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->s()V

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final j(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->t:Ljava/lang/String;

    if-eqz p3, :cond_3

    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->t:Ljava/lang/String;

    if-eqz p3, :cond_3

    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    iget-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    :cond_5
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final l(II)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "attachChatPane: currentActivity is null"

    const/4 p1, 0x0

    const-string p2, "ChatManager"

    invoke-interface {v0, p2, p0, p1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v1, v0, p1, p2}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c(Landroid/app/Activity;II)V

    sget-object p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsVisible;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsVisible;

    invoke-static {p1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m()V
    .locals 1

    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ClearChatEvent;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ClearChatEvent;

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatManagerImpl;->b:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->z()V

    return-void
.end method

.class public final Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/powerfront/insidewebsdkandroid/interfaces/InsideChatInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;",
        "Lcom/powerfront/insidewebsdkandroid/interfaces/InsideChatInterface;",
        "Lcom/vuitton/foundation/contracts/link/UrlVerifier;",
        "linkHelper",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "isChatAvailable",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;",
        "chatEvent",
        "Lcom/powerfront/insidewebsdkandroid/InsideClient;",
        "insideClient",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public final a:Lcom/vuitton/foundation/contracts/link/UrlVerifier;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field public final d:Lcom/powerfront/insidewebsdkandroid/InsideClient;

.field public final e:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/contracts/link/UrlVerifier;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/powerfront/insidewebsdkandroid/InsideClient;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/contracts/link/UrlVerifier;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;",
            ">;",
            "Lcom/powerfront/insidewebsdkandroid/InsideClient;",
            "Lcom/vuitton/foundation/logger/Logger;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->a:Lcom/vuitton/foundation/contracts/link/UrlVerifier;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p3, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->d:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iput-object p5, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->d:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f()V

    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsClosing;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsClosing;

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$DisConnectedToChat;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$DisConnectedToChat;

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ViewProductDetails;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ViewProductDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$RequirePermissions;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$RequirePermissions;

    invoke-static {p1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

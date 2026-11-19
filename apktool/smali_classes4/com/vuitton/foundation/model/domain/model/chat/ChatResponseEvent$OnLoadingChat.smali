.class public final Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnLoadingChat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;",
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x3415cf4d    # -3.0695782E7f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "OnLoadingChat"

    return-object p0
.end method

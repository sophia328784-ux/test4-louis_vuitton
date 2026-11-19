.class public final Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;",
        "",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;
    .locals 5

    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$AddToBasket;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatEndedBy;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsClosing;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsClosing;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsClosedUiNotification;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsClosedUiNotification;

    return-object p0

    :cond_2
    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsLoading;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsLoading;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;

    return-object p0

    :cond_3
    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsVisible;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsVisible;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsVisibleUiNotification;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsVisibleUiNotification;

    return-object p0

    :cond_4
    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatMinimising;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatMinimising;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsMinimisedUiNotification;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsMinimisedUiNotification;

    return-object p0

    :cond_5
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$MessageChatUiNotificationReceived;

    check-cast p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->a:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    iget-boolean v3, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->b:Z

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->c:Ljava/lang/String;

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move-object v2, v4

    :goto_0
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$MessageChatUiNotificationReceived;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$DisConnectedToChat;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$DisConnectedToChat;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Error;

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$RequirePermissions;

    if-eqz v0, :cond_b

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$AppShouldAskForPermissions;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$AppShouldAskForPermissions;

    return-object p0

    :cond_b
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;

    check-cast p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;

    iget p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;->a:I

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;-><init>(I)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;

    check-cast p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$WebAppLinkUrl;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_d
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$DeepLinkUrl;

    check-cast p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$DeepLinkUrl;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$DeepLinkUrl;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$UnknownUrl;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UrlType$UnknownUrl;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$UnknownUrl;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$UnknownUrl;

    return-object p0

    :cond_f
    instance-of v0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ViewProductDetails;

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    instance-of p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ClearChatEvent;

    if-eqz p0, :cond_11

    :goto_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UnhandledChatEvent;->a:Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UnhandledChatEvent;

    return-object p0

    :cond_11
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

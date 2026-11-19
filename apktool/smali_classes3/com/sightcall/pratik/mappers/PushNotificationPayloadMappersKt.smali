.class public final Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\u0003*\u0004\u0018\u00010\u0004H\u0002\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0004\u0018\u00010\u0004\u001a\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0008*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tH\u0002\u001a\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t\u001a\u0016\u0010\u0012\u001a\u00020\u0004*\u00020\u000b2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "toMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "Landroid/os/Bundle;",
        "toPushNotificationPayload",
        "Lcom/sightcall/pratik/PushNotificationPayload;",
        "toPushNotificationPayloadSdf",
        "Lcom/sightcall/pratik/PushNotificationPayloadSdf;",
        "",
        "toPushNotificationPayloadMeetingRequest",
        "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;",
        "toPushNotificationPayloadMeetingRequestCanceled",
        "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;",
        "toPushNotificationPayloadMeetingDismissNotifications",
        "Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;",
        "findMeetingType",
        "Lcom/sightcall/pratik/MeetingNotificationType;",
        "toBundle",
        "action",
        "Lcom/sightcall/pratik/MeetingNotificationUserAction;",
        "pratik_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Ljava/util/HashMap;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toMap$lambda$0$0(Ljava/util/HashMap;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lrp0;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toMap$lambda$0$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method private static final findMeetingType(Ljava/util/Map;)Lcom/sightcall/pratik/MeetingNotificationType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/pratik/MeetingNotificationType;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequest;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequest;

    invoke-virtual {v1}, Lcom/sightcall/pratik/MeetingNotificationType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/sightcall/pratik/MeetingNotificationType$MeetingDismissNotifications;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationType$MeetingDismissNotifications;

    invoke-virtual {v1}, Lcom/sightcall/pratik/MeetingNotificationType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    sget-object v1, Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequestCanceled;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequestCanceled;

    invoke-virtual {v1}, Lcom/sightcall/pratik/MeetingNotificationType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static final toBundle(Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;Lcom/sightcall/pratik/MeetingNotificationUserAction;)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "meetingId"

    invoke-virtual {p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "participantId"

    invoke-virtual {p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "denyUrl"

    invoke-virtual {p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;->getDenyUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/pratik/MeetingNotificationUserAction;->getUserAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "userAction"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic toBundle$default(Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;Lcom/sightcall/pratik/MeetingNotificationUserAction;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toBundle(Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;Lcom/sightcall/pratik/MeetingNotificationUserAction;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static final toMap(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Lrp0;

    const/4 v3, 0x3

    invoke-direct {v2, v1, p0, v3}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Ltq0;

    invoke-direct {p0, v2}, Ltq0;-><init>(Lrp0;)V

    invoke-interface {v0, p0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method private static final toMap$lambda$0$0(Ljava/util/HashMap;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x474420a0    # 50208.625f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NOTIFICATION_ID_EXTRA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final toMap$lambda$0$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final toPushNotificationPayload(Landroid/os/Bundle;)Lcom/sightcall/pratik/PushNotificationPayload;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toPushNotificationPayload(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayload;

    move-result-object p0

    return-object p0
.end method

.method public static final toPushNotificationPayload(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayload;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/pratik/PushNotificationPayload;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toPushNotificationPayloadSdf(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadSdf;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->findMeetingType(Ljava/util/Map;)Lcom/sightcall/pratik/MeetingNotificationType;

    move-result-object v1

    sget-object v2, Lcom/sightcall/pratik/MeetingNotificationType$MeetingDismissNotifications;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationType$MeetingDismissNotifications;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toPushNotificationPayloadMeetingDismissNotifications(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequest;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequest;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toPushNotificationPayloadMeetingRequest(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v2, Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequestCanceled;->INSTANCE:Lcom/sightcall/pratik/MeetingNotificationType$MeetingRequestCanceled;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->toPushNotificationPayloadMeetingRequestCanceled(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_5
    return-object v1
.end method

.method public static final toPushNotificationPayloadMeetingDismissNotifications(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "meetingId"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    new-instance v0, Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;

    invoke-direct {v0, v1, p0}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingDismiss;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static final toPushNotificationPayloadMeetingRequest(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;"
        }
    .end annotation

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "body"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "meetingId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string v3, "participantId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-string v3, "denyUrl"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const-string v3, "userAction"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "participantDisplayName"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "meetingTitle"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    move-object v8, v1

    new-instance v1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;

    const-string v9, "\""

    const-string v10, "\'"

    invoke-static {v0, v9, v10}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v10}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-nez v3, :cond_1

    move-object v3, v9

    :cond_1
    if-nez v4, :cond_2

    move-object v4, v9

    :cond_2
    if-nez p0, :cond_3

    move-object v10, v9

    :goto_0
    move-object v9, v4

    move-object v4, v8

    move-object v8, v3

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v10, p0

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v10}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toPushNotificationPayloadMeetingRequestCanceled(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "body"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "meetingId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string v3, "participantId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    move-object p0, v1

    new-instance v1, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;

    const-string v3, "\""

    const-string v4, "\'"

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/pratik/PushNotificationPayloadMeetingRequestCanceled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toPushNotificationPayloadSdf(Ljava/util/Map;)Lcom/sightcall/pratik/PushNotificationPayloadSdf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/pratik/PushNotificationPayloadSdf;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "url"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "urlHash"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "sessionId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    new-instance v0, Lcom/sightcall/pratik/PushNotificationPayloadSdf;

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/pratik/PushNotificationPayloadSdf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

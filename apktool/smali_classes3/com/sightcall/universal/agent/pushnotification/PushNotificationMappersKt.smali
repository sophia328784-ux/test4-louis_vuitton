.class public final Lcom/sightcall/universal/agent/pushnotification/PushNotificationMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "createUpdatePushNotificationRequest",
        "Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;",
        "token",
        "",
        "sdk_installedRelease"
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
.method public static final createUpdatePushNotificationRequest(Ljava/lang/String;)Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;

    new-instance v1, Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest$Data;

    new-instance v4, Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest$Data$Attributes;

    invoke-direct {v4, p0}, Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest$Data$Attributes;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest$Data$Attributes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;-><init>(Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest$Data;)V

    return-object v0
.end method

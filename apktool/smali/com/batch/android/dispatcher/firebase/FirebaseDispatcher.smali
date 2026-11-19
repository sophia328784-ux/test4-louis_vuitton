.class public Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchEventDispatcher;


# static fields
.field private static final BATCH_TRACKING_ID:Ljava/lang/String; = "batch_tracking_id"

.field private static final BATCH_WEBVIEW_ANALYTICS_ID:Ljava/lang/String; = "batch_webview_analytics_id"

.field private static final CAMPAIGN:Ljava/lang/String; = "campaign"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final DISPATCHER_NAME:Ljava/lang/String; = "firebase"

.field private static final DISPATCHER_VERSION:I = 0x1

.field private static final MEDIUM:Ljava/lang/String; = "medium"

.field private static final MESSAGING_AUTO_CLOSE_NAME:Ljava/lang/String; = "batch_in_app_auto_close"

.field private static final MESSAGING_CLICK_NAME:Ljava/lang/String; = "batch_in_app_click"

.field private static final MESSAGING_CLOSE_ERROR_NAME:Ljava/lang/String; = "batch_in_app_close_error"

.field private static final MESSAGING_CLOSE_NAME:Ljava/lang/String; = "batch_in_app_close"

.field private static final MESSAGING_SHOW_NAME:Ljava/lang/String; = "batch_in_app_show"

.field private static final MESSAGING_WEBVIEW_CLICK_NAME:Ljava/lang/String; = "batch_in_app_webview_click"

.field private static final NOTIFICATION_DISMISS_NAME:Ljava/lang/String; = "batch_notification_dismiss"

.field private static final NOTIFICATION_DISPLAY_NAME:Ljava/lang/String; = "batch_notification_display"

.field private static final NOTIFICATION_OPEN_NAME:Ljava/lang/String; = "batch_notification_open"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final UNKNOWN_EVENT_NAME:Ljava/lang/String; = "batch_unknown"

.field private static final UTM_CAMPAIGN:Ljava/lang/String; = "utm_campaign"

.field private static final UTM_CONTENT:Ljava/lang/String; = "utm_content"

.field private static final UTM_MEDIUM:Ljava/lang/String; = "utm_medium"

.field private static final UTM_SOURCE:Ljava/lang/String; = "utm_source"


# instance fields
.field private firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method private static copyValueFromMap(Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/batch/android/Batch$EventDispatcher$Payload;->getCustomValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static copyValueFromQuery(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static getFirebaseEventName(Lcom/batch/android/Batch$EventDispatcher$Type;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher$1;->$SwitchMap$com$batch$android$Batch$EventDispatcher$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "batch_unknown"

    return-object p0

    :pswitch_0
    const-string p0, "batch_in_app_webview_click"

    return-object p0

    :pswitch_1
    const-string p0, "batch_in_app_click"

    return-object p0

    :pswitch_2
    const-string p0, "batch_in_app_close_error"

    return-object p0

    :pswitch_3
    const-string p0, "batch_in_app_auto_close"

    return-object p0

    :pswitch_4
    const-string p0, "batch_in_app_close"

    return-object p0

    :pswitch_5
    const-string p0, "batch_in_app_show"

    return-object p0

    :pswitch_6
    const-string p0, "batch_notification_dismiss"

    return-object p0

    :pswitch_7
    const-string p0, "batch_notification_open"

    return-object p0

    :pswitch_8
    const-string p0, "batch_notification_display"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFragmentMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getInAppParams(Lcom/batch/android/Batch$EventDispatcher$Payload;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Lcom/batch/android/Batch$EventDispatcher$Payload;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "campaign"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "batch"

    const-string v3, "source"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in-app"

    const-string v4, "medium"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "batch_tracking_id"

    invoke-interface {p0}, Lcom/batch/android/Batch$EventDispatcher$Payload;->getTrackingId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/batch/android/Batch$EventDispatcher$Payload;->getWebViewAnalyticsID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "batch_webview_analytics_id"

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lcom/batch/android/Batch$EventDispatcher$Payload;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "content"

    const-string v7, "utm_content"

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v5}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->getFragmentMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v7, v0, v6}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromMap(Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1, v7, v0, v6}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromQuery(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :cond_2
    :goto_2
    const-string v1, "utm_campaign"

    invoke-static {p0, v1, v0, v2}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v1, "utm_medium"

    invoke-static {p0, v1, v0, v4}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v1, "utm_source"

    invoke-static {p0, v1, v0, v3}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getNotificationParams(Lcom/batch/android/Batch$EventDispatcher$Payload;)Landroid/os/Bundle;
    .locals 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "batch"

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "push"

    const-string v3, "medium"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/batch/android/Batch$EventDispatcher$Payload;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    const-string v4, "utm_source"

    const-string v5, "utm_medium"

    const-string v6, "campaign"

    const-string v7, "utm_campaign"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "content"

    const-string v10, "utm_content"

    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v8}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->getFragmentMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v8, v7, v0, v6}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromMap(Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v8, v5, v0, v3}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromMap(Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v8, v4, v0, v2}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromMap(Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v8, v10, v0, v9}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromMap(Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1, v7, v0, v6}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromQuery(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, v5, v0, v3}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromQuery(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, v4, v0, v2}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromQuery(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, v10, v0, v9}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromQuery(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :cond_1
    :goto_2
    invoke-static {p0, v7, v0, v6}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v5, v0, v3}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v4, v0, v2}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->copyValueFromPayload(Lcom/batch/android/Batch$EventDispatcher$Payload;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dispatchEvent(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V
    .locals 8

    invoke-virtual {p1}, Lcom/batch/android/Batch$EventDispatcher$Type;->isNotificationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->getNotificationParams(Lcom/batch/android/Batch$EventDispatcher$Payload;)Landroid/os/Bundle;

    move-result-object p2

    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/Batch$EventDispatcher$Type;->isMessagingEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->getInAppParams(Lcom/batch/android/Batch$EventDispatcher$Payload;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {p1}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;->getFirebaseEventName(Lcom/batch/android/Batch$EventDispatcher$Type;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzez;->l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "firebase"

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

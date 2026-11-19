.class public Lcom/linkplay/lpmdpkit/observer/LPNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;,
        Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;
    }
.end annotation


# instance fields
.field private notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;


# direct methods
.method private constructor <init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;-><init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$1;)V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Lcom/linkplay/lpmdpkit/observer/LPNotification$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification;-><init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)V

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->access$300(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lcom/linkplay/lpmdpkit/observer/LPNotificationType;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->access$200(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    move-result-object p0

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->access$100(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

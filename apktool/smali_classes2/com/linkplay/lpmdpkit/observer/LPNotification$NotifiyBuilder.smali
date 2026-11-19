.class public Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/observer/LPNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifiyBuilder"
.end annotation


# instance fields
.field notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;-><init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$1;)V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/linkplay/lpmdpkit/observer/LPNotification;
    .locals 2

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification;-><init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Lcom/linkplay/lpmdpkit/observer/LPNotification$1;)V

    return-object v0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    invoke-static {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->access$302(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    invoke-static {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->access$202(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->notificationItem:Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;

    invoke-static {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->access$102(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

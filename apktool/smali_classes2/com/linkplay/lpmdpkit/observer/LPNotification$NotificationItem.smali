.class Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/observer/LPNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationItem"
.end annotation


# instance fields
.field private payload:Ljava/lang/String;

.field private type:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

.field private uuid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->payload:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->uuid:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/linkplay/lpmdpkit/observer/LPNotification$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->uuid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)Lcom/linkplay/lpmdpkit/observer/LPNotificationType;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->type:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotificationType;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->type:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotificationItem;->payload:Ljava/lang/String;

    return-object p1
.end method

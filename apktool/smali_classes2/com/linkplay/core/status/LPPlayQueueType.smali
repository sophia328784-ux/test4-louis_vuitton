.class public final enum Lcom/linkplay/core/status/LPPlayQueueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/status/LPPlayQueueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/status/LPPlayQueueType;

.field public static final enum LP_ALL_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

.field public static final enum LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

.field public static final enum LP_CUSTOMLIST_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

.field public static final enum LP_RECENTLY_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

.field public static final enum LP_USBDISK_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/status/LPPlayQueueType;
    .locals 5

    sget-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_ALL_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    sget-object v1, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    sget-object v2, Lcom/linkplay/core/status/LPPlayQueueType;->LP_USBDISK_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    sget-object v3, Lcom/linkplay/core/status/LPPlayQueueType;->LP_RECENTLY_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    sget-object v4, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CUSTOMLIST_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/linkplay/core/status/LPPlayQueueType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linkplay/core/status/LPPlayQueueType;

    const/4 v1, 0x0

    const-string v2, "TotalQueue"

    const-string v3, "LP_ALL_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_ALL_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    new-instance v0, Lcom/linkplay/core/status/LPPlayQueueType;

    const/4 v1, 0x1

    const-string v2, "CurrentQueue"

    const-string v3, "LP_CURRENT_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CURRENT_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    new-instance v0, Lcom/linkplay/core/status/LPPlayQueueType;

    const/4 v1, 0x2

    const-string v2, "USBDiskQueue"

    const-string v3, "LP_USBDISK_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_USBDISK_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    new-instance v0, Lcom/linkplay/core/status/LPPlayQueueType;

    const/4 v1, 0x3

    const-string v2, "RecentlyQueue"

    const-string v3, "LP_RECENTLY_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_RECENTLY_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    new-instance v0, Lcom/linkplay/core/status/LPPlayQueueType;

    const/4 v1, 0x4

    const-string v2, "WiimuCustomList"

    const-string v3, "LP_CUSTOMLIST_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPPlayQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->LP_CUSTOMLIST_QUEUE:Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-static {}, Lcom/linkplay/core/status/LPPlayQueueType;->$values()[Lcom/linkplay/core/status/LPPlayQueueType;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->$VALUES:[Lcom/linkplay/core/status/LPPlayQueueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/linkplay/core/status/LPPlayQueueType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayQueueType;
    .locals 1

    const-class v0, Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPPlayQueueType;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/status/LPPlayQueueType;
    .locals 1

    sget-object v0, Lcom/linkplay/core/status/LPPlayQueueType;->$VALUES:[Lcom/linkplay/core/status/LPPlayQueueType;

    invoke-virtual {v0}, [Lcom/linkplay/core/status/LPPlayQueueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/status/LPPlayQueueType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/status/LPPlayQueueType;->value:Ljava/lang/String;

    return-object p0
.end method

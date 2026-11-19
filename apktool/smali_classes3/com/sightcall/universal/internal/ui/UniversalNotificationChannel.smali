.class public enum Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field public static final enum DEFAULT:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field public static final enum DEFAULT_HIGH:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field public static final enum DEFAULT_LOW:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field public static final enum MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field public static final enum OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field public static final enum RINGTONE:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;


# instance fields
.field private final id:I

.field private final importance:I

.field private final name:I


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;
    .locals 6

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->RINGTONE:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget-object v1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget-object v2, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget-object v3, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget-object v4, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_HIGH:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget-object v5, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_LOW:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    filled-new-array/range {v0 .. v5}, [Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel$1;

    sget v1, Lcom/sightcall/universal/R$string;->universal_incoming_call_notification_channel_id:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_incoming_call_notification_channel_name:I

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel$1;-><init>(II)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->RINGTONE:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    new-instance v3, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget v6, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_channel_id:I

    sget v7, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_channel_name:I

    const/4 v8, 0x2

    const-string v4, "MEDIA_UPLOADER"

    const/4 v5, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    new-instance v4, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget v7, Lcom/sightcall/universal/R$string;->universal_offline_media_uploader_notification_channel_id:I

    sget v8, Lcom/sightcall/universal/R$string;->universal_offline_media_uploader_notification_channel_name:I

    const/4 v9, 0x4

    const-string v5, "OFFLINE_MEDIA_UPLOADER"

    const/4 v6, 0x2

    invoke-direct/range {v4 .. v9}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    new-instance v5, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget v8, Lcom/sightcall/universal/R$string;->universal_default_notification_channel_id:I

    sget v9, Lcom/sightcall/universal/R$string;->universal_default_notification_channel_name:I

    const/4 v10, 0x3

    const-string v6, "DEFAULT"

    const/4 v7, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    new-instance v6, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget v9, Lcom/sightcall/universal/R$string;->universal_default_high_notification_channel_id:I

    sget v10, Lcom/sightcall/universal/R$string;->universal_default_high_notification_channel_name:I

    const/4 v11, 0x4

    const-string v7, "DEFAULT_HIGH"

    const/4 v8, 0x4

    invoke-direct/range {v6 .. v11}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_HIGH:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    new-instance v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    sget v3, Lcom/sightcall/universal/R$string;->universal_default_low_notification_channel_id:I

    sget v4, Lcom/sightcall/universal/R$string;->universal_default_low_notification_channel_name:I

    const/4 v5, 0x2

    const-string v1, "DEFAULT_LOW"

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_LOW:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->$values()[Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->$VALUES:[Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IIII)V
    .locals 1

    .line 10
    move-object v0, p2

    move p2, p1

    move-object p1, v0

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id:I

    iput p4, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->name:I

    iput p5, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->importance:I

    return-void
.end method

.method private static create(Landroid/content/Context;Landroid/app/NotificationChannel;)V
    .locals 1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private getName()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->name:I

    return p0
.end method

.method private getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->name:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->$VALUES:[Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    return-object v0
.end method


# virtual methods
.method public channel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 2

    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    iget p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->importance:I

    invoke-direct {v0, v1, p1, p0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public create(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->channel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public id()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id:I

    return p0
.end method

.method public id(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

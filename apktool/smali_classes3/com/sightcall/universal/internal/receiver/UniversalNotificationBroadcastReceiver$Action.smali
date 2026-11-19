.class public final enum Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

.field public static final enum GUEST_READY_ACCEPT:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

.field public static final enum GUEST_READY_DENY:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->GUEST_READY_ACCEPT:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    sget-object v1, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->GUEST_READY_DENY:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    const-string v1, "GUEST_READY_ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->GUEST_READY_ACCEPT:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    new-instance v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    const-string v1, "GUEST_READY_DENY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->GUEST_READY_DENY:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    invoke-static {}, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->$values()[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->$VALUES:[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->$VALUES:[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    return-object v0
.end method


# virtual methods
.method public pendingIntent(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_action"

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x40000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/high16 p2, 0x4c000000    # 3.3554432E7f

    invoke-static {p1, p0, v0, p2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

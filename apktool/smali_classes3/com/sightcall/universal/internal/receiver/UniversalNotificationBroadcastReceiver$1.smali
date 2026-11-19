.class synthetic Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->values()[Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$1;->$SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action:[I

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->GUEST_READY_ACCEPT:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$1;->$SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action:[I

    sget-object v1, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->GUEST_READY_DENY:Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

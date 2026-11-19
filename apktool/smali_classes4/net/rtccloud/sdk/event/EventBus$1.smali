.class synthetic Lnet/rtccloud/sdk/event/EventBus$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$rtccloud$sdk$event$Event$Thread:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/event/Event$Thread;->values()[Lnet/rtccloud/sdk/event/Event$Thread;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/rtccloud/sdk/event/EventBus$1;->$SwitchMap$net$rtccloud$sdk$event$Event$Thread:[I

    :try_start_0
    sget-object v1, Lnet/rtccloud/sdk/event/Event$Thread;->BACKGROUND:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/rtccloud/sdk/event/EventBus$1;->$SwitchMap$net$rtccloud$sdk$event$Event$Thread:[I

    sget-object v1, Lnet/rtccloud/sdk/event/Event$Thread;->MAIN:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

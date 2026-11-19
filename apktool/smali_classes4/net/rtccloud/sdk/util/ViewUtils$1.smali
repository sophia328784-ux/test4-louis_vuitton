.class synthetic Lnet/rtccloud/sdk/util/ViewUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/util/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$rtccloud$sdk$util$ScaleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/util/ScaleType;->values()[Lnet/rtccloud/sdk/util/ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/rtccloud/sdk/util/ViewUtils$1;->$SwitchMap$net$rtccloud$sdk$util$ScaleType:[I

    :try_start_0
    sget-object v1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/rtccloud/sdk/util/ViewUtils$1;->$SwitchMap$net$rtccloud$sdk$util$ScaleType:[I

    sget-object v1, Lnet/rtccloud/sdk/util/ScaleType;->CROP:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/rtccloud/sdk/util/ViewUtils$1;->$SwitchMap$net$rtccloud$sdk$util$ScaleType:[I

    sget-object v1, Lnet/rtccloud/sdk/util/ScaleType;->FILL:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

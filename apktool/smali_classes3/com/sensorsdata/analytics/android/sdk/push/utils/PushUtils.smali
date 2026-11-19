.class public Lcom/sensorsdata/analytics/android/sdk/push/utils/PushUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJPushSDKName(B)Ljava/lang/String;
    .locals 1

    const-string v0, "Jpush"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "fcm"

    return-object p0

    :pswitch_2
    const-string p0, "Asus"

    return-object p0

    :pswitch_3
    const-string p0, "vivo"

    return-object p0

    :pswitch_4
    const-string p0, "OPPO"

    return-object p0

    :pswitch_5
    const-string p0, "Meizu"

    return-object p0

    :pswitch_6
    const-string p0, "HUAWEI"

    return-object p0

    :pswitch_7
    const-string p0, "Xiaomi"

    return-object p0

    :pswitch_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

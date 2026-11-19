.class public final Lnet/rtccloud/sdk/internal/Constants$DeviceType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceType"
.end annotation


# static fields
.field public static final APAD:I = 0x5

.field public static final APHONE:I = 0x6

.field public static final CONVERSATIONS:I = 0x8

.field public static final ERROR:I = 0x7

.field public static final IPAD:I = 0x3

.field public static final IPHONE:I = 0x4

.field public static final LINUX:I = 0x9

.field public static final MAC:I = 0x2

.field public static final PC:I = 0x1

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "LINUX"

    return-object p0

    :pswitch_1
    const-string p0, "CONVERSATIONS"

    return-object p0

    :pswitch_2
    const-string p0, "ERROR"

    return-object p0

    :pswitch_3
    const-string p0, "APHONE"

    return-object p0

    :pswitch_4
    const-string p0, "APAD"

    return-object p0

    :pswitch_5
    const-string p0, "IPHONE"

    return-object p0

    :pswitch_6
    const-string p0, "IPAD"

    return-object p0

    :pswitch_7
    const-string p0, "MAC"

    return-object p0

    :pswitch_8
    const-string p0, "PC"

    return-object p0

    :pswitch_9
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

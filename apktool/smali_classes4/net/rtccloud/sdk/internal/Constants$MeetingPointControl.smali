.class public final Lnet/rtccloud/sdk/internal/Constants$MeetingPointControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeetingPointControl"
.end annotation


# static fields
.field public static final ACCEPTED:I = 0x2

.field public static final ACCEPTEDONETOONE:I = 0x8

.field public static final AUTOACCEPT:I = 0x9

.field public static final CANCELLED:I = 0x4

.field public static final DEFAULT:I = 0xa

.field public static final DENIED:I = 0x3

.field public static final ERROR:I = 0x80

.field public static final HOSTED:I = 0x1

.field public static final HOSTED_BROADCAST:I = 0x20

.field public static final HOSTED_BY_HOST:I = 0x30

.field public static final HOSTED_ONE_TO_ONE:I = 0x10

.field public static final INVITED:I = 0x7

.field public static final REQUESTED:I = 0x6

.field public static final STOPPED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "DEFAULT"

    return-object p0

    :pswitch_1
    const-string p0, "AUTOACCEPT"

    return-object p0

    :pswitch_2
    const-string p0, "ACCEPTEDONETOONE"

    return-object p0

    :pswitch_3
    const-string p0, "INVITED"

    return-object p0

    :pswitch_4
    const-string p0, "REQUESTED"

    return-object p0

    :pswitch_5
    const-string p0, "STOPPED"

    return-object p0

    :pswitch_6
    const-string p0, "CANCELLED"

    return-object p0

    :pswitch_7
    const-string p0, "DENIED"

    return-object p0

    :pswitch_8
    const-string p0, "ACCEPTED"

    return-object p0

    :pswitch_9
    const-string p0, "HOSTED"

    return-object p0

    :cond_0
    const-string p0, "ERROR"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static valueOfMeeting(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "acceptedonetoone"

    return-object p0

    :pswitch_2
    const-string p0, "pending"

    return-object p0

    :pswitch_3
    const-string p0, "STOPPED"

    return-object p0

    :pswitch_4
    const-string p0, "meetingcancelled"

    return-object p0

    :pswitch_5
    const-string p0, "denied"

    return-object p0

    :pswitch_6
    const-string p0, "accepted"

    return-object p0

    :pswitch_7
    const-string p0, "hosted"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

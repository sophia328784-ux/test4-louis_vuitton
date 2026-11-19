.class public final Lnet/rtccloud/sdk/internal/Constants$MeetingPointAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeetingPointAction"
.end annotation


# static fields
.field public static final ACCEPT:I = 0x2

.field public static final ACCEPT_ONE_TO_ONE:I = 0x12

.field public static final AUTOACCEPT:I = 0x8

.field public static final CANCEL:I = 0x4

.field public static final DEFAULT:I = 0x9

.field public static final DENY:I = 0x3

.field public static final HOST:I = 0x0

.field public static final INVITE:I = 0x6

.field public static final JOIN:I = 0x1

.field public static final JOIN_WITH_HASH:I = 0x11

.field public static final LIST:I = 0xa

.field public static final LIST2:I = 0x1a

.field public static final LOCK:I = 0x7

.field public static final STOP:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "LIST"

    return-object p0

    :pswitch_1
    const-string p0, "DEFAULT"

    return-object p0

    :pswitch_2
    const-string p0, "AUTOACCEPT"

    return-object p0

    :pswitch_3
    const-string p0, "LOCK"

    return-object p0

    :pswitch_4
    const-string p0, "INVITE"

    return-object p0

    :pswitch_5
    const-string p0, "STOP"

    return-object p0

    :pswitch_6
    const-string p0, "CANCEL"

    return-object p0

    :pswitch_7
    const-string p0, "DENY"

    return-object p0

    :pswitch_8
    const-string p0, "ACCEPT"

    return-object p0

    :pswitch_9
    const-string p0, "JOIN"

    return-object p0

    :pswitch_a
    const-string p0, "HOST"

    return-object p0

    :cond_0
    const-string p0, "JOIN_WITH_HASH"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

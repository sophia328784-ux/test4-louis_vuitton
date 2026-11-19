.class public final Lnet/rtccloud/sdk/internal/Constants$CallType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallType"
.end annotation


# static fields
.field public static final ATTENDEE:I = 0xfffd

.field public static final HOST:I = 0xfffe

.field public static final PHONE:I = 0xffff

.field public static final SIX_DIGITS:I = 0xfffb


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "PHONE"

    return-object p0

    :pswitch_2
    const-string p0, "HOST"

    return-object p0

    :pswitch_3
    const-string p0, "ATTENDEE"

    return-object p0

    :pswitch_4
    const-string p0, "SIX_DIGITS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xfffb
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

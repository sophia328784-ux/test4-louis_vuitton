.class public final Lnet/rtccloud/sdk/internal/Constants$Direction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Direction"
.end annotation


# static fields
.field public static final BOTH:I = 0x9203

.field public static final RECV:I = 0x9202

.field public static final SEND:I = 0x9201


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
    const-string p0, "BOTH"

    return-object p0

    :pswitch_1
    const-string p0, "RECV"

    return-object p0

    :pswitch_2
    const-string p0, "SEND"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

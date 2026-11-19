.class public final Lnet/rtccloud/sdk/internal/Constants$MeetingPointEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeetingPointEvent"
.end annotation


# static fields
.field public static final CONFIG:I = 0x3000

.field public static final CONTROL:I = 0x3010

.field public static final MP_LIST:I = 0x3020


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3010

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "CONTROL"

    return-object p0

    :cond_1
    const-string p0, "CONFIG"

    return-object p0
.end method

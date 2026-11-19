.class public final Lnet/rtccloud/sdk/internal/Constants$MeetingPointConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeetingPointConfig"
.end annotation


# static fields
.field public static final CREATED:I = 0x1

.field public static final DELETED:I = 0x4

.field public static final DETAILS:I = 0x5

.field public static final ERROR:I = 0x80

.field public static final UPDATED:I = 0x2

.field public static final URL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "ERROR"

    return-object p0

    :cond_1
    const-string p0, "DETAILS"

    return-object p0

    :cond_2
    const-string p0, "DELETED"

    return-object p0

    :cond_3
    const-string p0, "URL"

    return-object p0

    :cond_4
    const-string p0, "UPDATED"

    return-object p0

    :cond_5
    const-string p0, "CREATED"

    return-object p0
.end method

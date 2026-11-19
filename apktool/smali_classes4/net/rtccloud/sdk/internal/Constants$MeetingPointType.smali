.class public final Lnet/rtccloud/sdk/internal/Constants$MeetingPointType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeetingPointType"
.end annotation


# static fields
.field public static final ADHOC:I = 0x2

.field public static final PERMANENT:I = 0x0

.field public static final SCHEDULED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "ADHOC"

    return-object p0

    :cond_1
    const-string p0, "SCHEDULED"

    return-object p0

    :cond_2
    const-string p0, "PERMANENT"

    return-object p0
.end method

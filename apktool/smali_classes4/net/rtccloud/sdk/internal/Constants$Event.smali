.class public final Lnet/rtccloud/sdk/internal/Constants$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final AUTHENTICATION_NEEDED:I = 0x1200

.field public static final CONNECTION_STATUS:I = 0x1100

.field public static final MEDIALOGCHUNKAVAILABLE:I = 0x1700

.field public static final URISIPSTATUS:I = 0x1500


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1100

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1200

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1500

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1700

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "MEDIALOGCHUNKAVAILABLE"

    return-object p0

    :cond_1
    const-string p0, "URISIPSTATUS"

    return-object p0

    :cond_2
    const-string p0, "AUTHENTICATION_NEEDED"

    return-object p0

    :cond_3
    const-string p0, "CONNECTION_STATUS"

    return-object p0
.end method

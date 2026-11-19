.class public Lcom/lightup/sdk/device/utils/communication/Scheduling;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static b:Z

.field public static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lightup/sdk/device/utils/communication/Scheduling;->b:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lightup/sdk/device/utils/communication/Scheduling;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

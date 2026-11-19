.class public Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field public final a:D

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(DII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->a:D

    iput p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->b:I

    iput p4, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->c:I

    return-void
.end method


# virtual methods
.method public getCurrentStep()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->b:I

    return p0
.end method

.method public getNumberOfSteps()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->c:I

    return p0
.end method

.method public getStepProgress()D
    .locals 2

    iget-wide v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->a:D

    return-wide v0
.end method

.class public Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "SourceFile"


# instance fields
.field public final e:Lcom/otaliastudios/cameraview/engine/action/BaseAction;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;-><init>()V

    new-instance v0, Lcom/otaliastudios/cameraview/engine/meter/ExposureReset;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/engine/meter/ExposureReset;-><init>()V

    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/FocusReset;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/meter/FocusReset;-><init>()V

    new-instance v2, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceReset;

    invoke-direct {v2}, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceReset;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/otaliastudios/cameraview/engine/action/Actions;->c([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;->e:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-void
.end method


# virtual methods
.method public final n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;->e:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-object p0
.end method

.class public Lcom/lp/ble/entity/LPBluetoothDevice$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lp/ble/entity/LPBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/bluetooth/BluetoothDevice;

.field public b:Ljava/lang/String;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/lp/ble/entity/LPBluetoothDevice;
    .locals 7

    new-instance v0, Lcom/lp/ble/entity/LPBluetoothDevice;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->a:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->j:I

    iget-object v2, p0, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->c:[B

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    invoke-static {v1, v3, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    :cond_1
    array-length v2, p0

    const/4 v4, 0x4

    if-lt v2, v4, :cond_2

    invoke-static {v3, v3, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->e:I

    :cond_2
    array-length v2, p0

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-lt v2, v5, :cond_3

    invoke-static {v4, v6, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->f:I

    :cond_3
    array-length v2, p0

    const/4 v4, 0x6

    if-lt v2, v4, :cond_4

    invoke-static {v5, v6, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->g:I

    :cond_4
    array-length v2, p0

    const/16 v5, 0x8

    if-lt v2, v5, :cond_5

    invoke-static {v4, v3, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->h:I

    :cond_5
    array-length v2, p0

    const/16 v3, 0xe

    if-lt v2, v3, :cond_6

    invoke-static {v5, v4, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->i:[B

    :cond_6
    array-length v2, p0

    const/16 v4, 0xf

    if-lt v2, v4, :cond_7

    invoke-static {v3, v6, p0}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/lp/ble/utils/BLEUtil;->b([B)I

    move-result p0

    iput p0, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->j:I

    :cond_7
    :goto_0
    iput-boolean v1, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->k:Z

    return-object v0
.end method

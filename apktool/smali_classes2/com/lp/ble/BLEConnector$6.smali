.class Lcom/lp/ble/BLEConnector$6;
.super Lcom/clj/fastble/callback/BleNotifyCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/lp/ble/BLEConnector;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$6;->a:Lcom/lp/ble/BLEConnector;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleNotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 13

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$6;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {p1}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    invoke-virtual {v0}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x8

    const v4, 0x8000

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v1, :cond_5

    invoke-static {v10, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v0

    invoke-static {v5, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v11

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v0

    const/16 v12, 0x4c50

    if-ne v0, v12, :cond_1

    if-ne v11, v4, :cond_1

    array-length v0, p1

    if-ge v0, v7, :cond_0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {v9, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    invoke-static {v6, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v0

    invoke-static {v3, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v1

    invoke-static {v2, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v7

    invoke-static {v7, v3, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object p1

    new-instance v3, Lcom/lp/ble/entity/BLEResponse$Builder;

    invoke-direct {v3, v1, v0, v2}, Lcom/lp/ble/entity/BLEResponse$Builder;-><init>(III)V

    invoke-virtual {v3}, Lcom/lp/ble/entity/BLEResponse$Builder;->a()Lcom/lp/ble/entity/BLEResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {v0, p1}, Lcom/lp/ble/entity/BLEResponse;->b([B)V

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    iget v0, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lp/ble/BLEConnector;->i(ILjava/lang/String;)V

    iput-object v8, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    return-void

    :cond_1
    if-ne v0, v12, :cond_3

    array-length v0, p1

    if-ge v0, v6, :cond_2

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_2
    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v0

    invoke-static {v9, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v1

    array-length v2, p1

    sub-int/2addr v2, v6

    invoke-static {v6, v2, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object p1

    new-instance v2, Lcom/lp/ble/entity/BLEResponse$Builder;

    invoke-direct {v2, v10, v0, v1}, Lcom/lp/ble/entity/BLEResponse$Builder;-><init>(III)V

    invoke-virtual {v2}, Lcom/lp/ble/entity/BLEResponse$Builder;->a()Lcom/lp/ble/entity/BLEResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {v0, p1}, Lcom/lp/ble/entity/BLEResponse;->b([B)V

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    iget v0, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lp/ble/BLEConnector;->i(ILjava/lang/String;)V

    iput-object v8, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_4
    invoke-virtual {v0, p1}, Lcom/lp/ble/entity/BLEResponse;->b([B)V

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    iget v0, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lp/ble/BLEConnector;->i(ILjava/lang/String;)V

    iput-object v8, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    return-void

    :cond_5
    iget v1, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    const/16 v11, 0x4c51

    if-ne v1, v11, :cond_b

    iget v0, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->e:I

    if-lez v0, :cond_b

    invoke-static {v10, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v0

    invoke-static {v5, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v12

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v0

    if-ne v0, v11, :cond_7

    if-ne v12, v4, :cond_7

    array-length v0, p1

    if-ge v0, v7, :cond_6

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_6
    invoke-static {v9, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    invoke-static {v6, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v0

    invoke-static {v3, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v1

    invoke-static {v2, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v7

    invoke-static {v7, v3, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object p1

    new-instance v3, Lcom/lp/ble/entity/BLEResponse$Builder;

    invoke-direct {v3, v1, v0, v2}, Lcom/lp/ble/entity/BLEResponse$Builder;-><init>(III)V

    invoke-virtual {v3}, Lcom/lp/ble/entity/BLEResponse$Builder;->a()Lcom/lp/ble/entity/BLEResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {v0, p1}, Lcom/lp/ble/entity/BLEResponse;->b([B)V

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {p0, p1}, Lcom/lp/ble/BLEConnector;->j(Lcom/lp/ble/entity/BLEResponse;)V

    iput-object v8, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    return-void

    :cond_7
    if-ne v0, v11, :cond_9

    array-length v0, p1

    if-ge v0, v6, :cond_8

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_8
    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v0

    invoke-static {v9, v5, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lp/ble/utils/BLEUtil;->a([B)I

    move-result v1

    array-length v2, p1

    sub-int/2addr v2, v6

    invoke-static {v6, v2, p1}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object p1

    new-instance v2, Lcom/lp/ble/entity/BLEResponse$Builder;

    invoke-direct {v2, v10, v0, v1}, Lcom/lp/ble/entity/BLEResponse$Builder;-><init>(III)V

    invoke-virtual {v2}, Lcom/lp/ble/entity/BLEResponse$Builder;->a()Lcom/lp/ble/entity/BLEResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {v0, p1}, Lcom/lp/ble/entity/BLEResponse;->b([B)V

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {p0, p1}, Lcom/lp/ble/BLEConnector;->j(Lcom/lp/ble/entity/BLEResponse;)V

    iput-object v8, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    return-void

    :cond_9
    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_a
    invoke-virtual {v0, p1}, Lcom/lp/ble/entity/BLEResponse;->b([B)V

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    invoke-virtual {p0, p1}, Lcom/lp/ble/BLEConnector;->j(Lcom/lp/ble/entity/BLEResponse;)V

    iput-object v8, p0, Lcom/lp/ble/BLEConnector;->m:Lcom/lp/ble/entity/BLEResponse;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {v10}, Lcom/lp/ble/utils/HexUtil;->d(I)V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->d()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    move p1, v10

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_c

    aget-object v1, p0, p1

    check-cast v1, Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-interface {v1, v10, v0}, Lcom/lp/ble/BLECharacteristicChangedListener;->onCharacteristicChanged(ILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_c
    return-void
.end method

.method public final b(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$6;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$6;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

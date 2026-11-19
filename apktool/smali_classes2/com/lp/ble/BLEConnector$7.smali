.class Lcom/lp/ble/BLEConnector$7;
.super Lcom/clj/fastble/callback/BleMtuChangedCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/clj/fastble/callback/BleMtuChangedCallback;

.field public final synthetic b:Lcom/lp/ble/BLEConnector;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/callback/BleMtuChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$7;->b:Lcom/lp/ble/BLEConnector;

    iput-object p2, p0, Lcom/lp/ble/BLEConnector$7;->a:Lcom/clj/fastble/callback/BleMtuChangedCallback;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleMtuChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$7;->b:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    add-int/lit8 p1, p1, -0x3

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Lcom/lp/ble/BLEConnector;->l:I

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget v1, v0, Lcom/lp/ble/BLEConnector;->l:I

    if-lez v1, :cond_1

    iput v1, p1, Lcom/clj/fastble/BleManager;->f:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object p0, p0, Lcom/lp/ble/BLEConnector$7;->a:Lcom/clj/fastble/callback/BleMtuChangedCallback;

    iget p1, v0, Lcom/lp/ble/BLEConnector;->l:I

    invoke-virtual {p0, p1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->a(I)V

    return-void
.end method

.method public final b(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$7;->b:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$7;->a:Lcom/clj/fastble/callback/BleMtuChangedCallback;

    invoke-virtual {p0, p1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->b(Lcom/clj/fastble/exception/BleException;)V

    return-void
.end method

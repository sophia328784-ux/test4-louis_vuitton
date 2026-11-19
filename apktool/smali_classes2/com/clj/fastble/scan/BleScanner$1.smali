.class Lcom/clj/fastble/scan/BleScanner$1;
.super Lcom/clj/fastble/scan/BleScanPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/clj/fastble/scan/BleScanner;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/scan/BleScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanner$1;->h:Lcom/clj/fastble/scan/BleScanner;

    invoke-direct {p0}, Lcom/clj/fastble/scan/BleScanPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner$1;->h:Lcom/clj/fastble/scan/BleScanner;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner$1;->h:Lcom/clj/fastble/scan/BleScanner;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->b:Lcom/clj/fastble/callback/BleScanPresenterImp;

    check-cast p0, Lcom/clj/fastble/callback/BleScanCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/clj/fastble/callback/BleScanCallback;->c()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner$1;->h:Lcom/clj/fastble/scan/BleScanner;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->b:Lcom/clj/fastble/callback/BleScanPresenterImp;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/clj/fastble/callback/BleScanPresenterImp;->a()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner$1;->h:Lcom/clj/fastble/scan/BleScanner;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->b:Lcom/clj/fastble/callback/BleScanPresenterImp;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/clj/fastble/callback/BleScanPresenterImp;->b(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method

.class Lcom/clj/fastble/scan/BleScanPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/scan/BleScanPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    sget-object p0, Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;->a:Lcom/clj/fastble/scan/BleScanner;

    invoke-virtual {p0}, Lcom/clj/fastble/scan/BleScanner;->c()V

    return-void
.end method

.class Lcom/clj/fastble/scan/BleScanPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/scan/BleScanPresenter;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/scan/BleScanPresenter;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter$1;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    iput-object p2, p0, Lcom/clj/fastble/scan/BleScanPresenter$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanPresenter$1;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {p0}, Lcom/clj/fastble/scan/BleScanPresenter;->b()V

    return-void
.end method

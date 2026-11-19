.class Lcom/clj/fastble/scan/BleScanPresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/scan/BleScanPresenter;

.field final synthetic val$success:Z


# direct methods
.method public constructor <init>(Lcom/clj/fastble/scan/BleScanPresenter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter$5;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    iput-boolean p2, p0, Lcom/clj/fastble/scan/BleScanPresenter$5;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter$5;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    iget-boolean p0, p0, Lcom/clj/fastble/scan/BleScanPresenter$5;->val$success:Z

    invoke-virtual {v0, p0}, Lcom/clj/fastble/scan/BleScanPresenter;->d(Z)V

    return-void
.end method

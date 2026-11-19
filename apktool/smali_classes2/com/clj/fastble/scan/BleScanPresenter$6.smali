.class Lcom/clj/fastble/scan/BleScanPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/scan/BleScanPresenter;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/scan/BleScanPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter$6;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanPresenter$6;->this$0:Lcom/clj/fastble/scan/BleScanPresenter;

    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/clj/fastble/scan/BleScanPresenter;->c(Ljava/util/ArrayList;)V

    return-void
.end method

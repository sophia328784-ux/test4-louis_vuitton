.class public Llv/nfc/reader/TagNfcManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Llv/nfc/reader/data/models/LVTagInput;)Landroidx/lifecycle/MutableLiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llv/nfc/reader/data/models/LVTagInput;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Llv/nfc/reader/data/models/LVResult<",
            "Llv/nfc/reader/data/models/LVTagResult;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    new-instance v1, Llv/nfc/reader/TagNfcExecutor;

    invoke-direct {v1}, Llv/nfc/reader/TagNfcExecutor;-><init>()V

    new-instance v2, Llv/nfc/reader/TagNfcManager$1;

    invoke-direct {v2, p0, v0}, Llv/nfc/reader/TagNfcManager$1;-><init>(Llv/nfc/reader/TagNfcManager;Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, v2}, Llv/nfc/reader/TagNfcExecutor;->scanTag(Llv/nfc/reader/data/models/LVTagInput;Llv/nfc/reader/TagNfcExecutorCallback;)V

    return-object v0
.end method

.class Llv/nfc/reader/TagNfcManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llv/nfc/reader/TagNfcExecutorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llv/nfc/reader/TagNfcManager;->scan(Llv/nfc/reader/data/models/LVTagInput;)Landroidx/lifecycle/MutableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llv/nfc/reader/TagNfcManager;

.field final synthetic val$results:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Llv/nfc/reader/TagNfcManager;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Llv/nfc/reader/TagNfcManager$1;->this$0:Llv/nfc/reader/TagNfcManager;

    iput-object p2, p0, Llv/nfc/reader/TagNfcManager$1;->val$results:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Llv/nfc/reader/TagNfcManager$1;->val$results:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Llv/nfc/reader/data/models/LVResult;

    invoke-direct {v0, p1}, Llv/nfc/reader/data/models/LVResult;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public success(Llv/nfc/reader/data/models/LVTagResult;)V
    .locals 1

    iget-object p0, p0, Llv/nfc/reader/TagNfcManager$1;->val$results:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Llv/nfc/reader/data/models/LVResult;

    invoke-direct {v0, p1}, Llv/nfc/reader/data/models/LVResult;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

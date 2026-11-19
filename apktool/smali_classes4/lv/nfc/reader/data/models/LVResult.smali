.class public Llv/nfc/reader/data/models/LVResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private success:Z


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Llv/nfc/reader/data/models/LVResult;->success:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Llv/nfc/reader/data/models/LVResult;->data:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Llv/nfc/reader/data/models/LVResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Llv/nfc/reader/data/models/LVResult;->success:Z

    iput-object p1, p0, Llv/nfc/reader/data/models/LVResult;->data:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Llv/nfc/reader/data/models/LVResult;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Llv/nfc/reader/data/models/LVResult;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/LVResult;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Llv/nfc/reader/data/models/LVResult;->success:Z

    return p0
.end method

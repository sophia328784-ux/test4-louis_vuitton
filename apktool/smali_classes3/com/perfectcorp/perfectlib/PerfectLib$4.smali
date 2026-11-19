.class Lcom/perfectcorp/perfectlib/PerfectLib$4;
.super Lcom/perfectcorp/common/guava/DefaultFutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/guava/DefaultFutureCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PerfectLib$4;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;

    invoke-direct {p0}, Lcom/perfectcorp/common/guava/DefaultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$4;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;->onReleased()V

    return-void
.end method

.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

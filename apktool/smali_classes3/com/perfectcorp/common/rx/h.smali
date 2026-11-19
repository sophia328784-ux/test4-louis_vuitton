.class final Lcom/perfectcorp/common/rx/h;
.super Lcom/perfectcorp/common/guava/a;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/rx/h;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-direct {p0}, Lcom/perfectcorp/common/guava/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/rx/h;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/rx/h;->b:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

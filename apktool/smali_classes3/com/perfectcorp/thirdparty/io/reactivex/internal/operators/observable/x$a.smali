.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public final c:Ljava/util/Iterator;

.field public volatile d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/c;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->e:Z

    return p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->g:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->f:Z

    return-object v1

    :cond_1
    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->g:Z

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The iterator returned a null value"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->f:Z

    return p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->f:Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->d:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->d:Z

    return p0
.end method

.class abstract Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;

    return-void
.end method

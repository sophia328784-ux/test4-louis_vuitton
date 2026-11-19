.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$a<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al$a;

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method

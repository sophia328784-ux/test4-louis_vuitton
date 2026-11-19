.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/n;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/n;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/n;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/n;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->b(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

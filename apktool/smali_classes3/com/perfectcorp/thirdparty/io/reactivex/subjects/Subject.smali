.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;
    .locals 1

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;-><init>()V

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    return-object v0
.end method

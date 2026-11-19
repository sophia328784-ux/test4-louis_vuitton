.class Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;
.super Ljava/lang/ref/WeakReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/cache/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/x<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public volatile d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->b:I

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    return-object p0
.end method

.method public a(J)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    .line 7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    return-void
.end method

.method public final c()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;->b:I

    return p0
.end method

.method public c(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public e()J
    .locals 0

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public f(J)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public g()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public h()J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public i()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public j()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

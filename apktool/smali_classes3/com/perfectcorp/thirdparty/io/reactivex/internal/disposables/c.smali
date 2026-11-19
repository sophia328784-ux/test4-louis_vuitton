.class public final enum Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

.field private static enum b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    const-string v1, "NEVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-void
.end method

.method public static b(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 9
    const/4 p0, 0x2

    return p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 0

    .line 8
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 0

    .line 9
    const/4 p0, 0x1

    return p0
.end method

.method public final c()V
    .locals 0

    .line 9
    return-void
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

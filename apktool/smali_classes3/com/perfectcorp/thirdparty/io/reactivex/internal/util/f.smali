.class public final enum Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    return-void
.end method

.method public static a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    return-object v0
.end method

.method public static b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return v1

    :cond_0
    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;->b:Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    instance-of v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$a;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return v1

    :cond_2
    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static e(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f$b;->b:Ljava/lang/Throwable;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NotificationLite.Complete"

    return-object p0
.end method

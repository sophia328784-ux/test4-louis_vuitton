.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/e;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ljava/io/File;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->b()V

    return-object v1

    :pswitch_0
    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    check-cast p1, Ljava/io/File;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files;->a(Ljava/io/File;)Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing;->b()Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;->a(Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;)Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "MD5 check failed"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    const-wide v0, 0x3feb333333333334L    # 0.8500000000000001

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_1
    return-object p1

    :pswitch_1
    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;

    invoke-direct {v0, p0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/f;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;Ljava/io/File;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Ld81;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld81;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p1

    new-instance v0, Ld81;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld81;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/g;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/g;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p0, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

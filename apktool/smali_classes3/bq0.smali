.class public final synthetic Lbq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    iput p3, p0, Lbq0;->b:I

    iput-object p1, p0, Lbq0;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lbq0;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lbq0;->b:I

    const/4 v1, 0x5

    const-string v2, ", continue to try SkuAndShadeIdMapping"

    const-string v3, "ProductMappingUtility"

    iget-boolean v4, p0, Lbq0;->d:Z

    iget-object p0, p0, Lbq0;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "productId can\'t be null"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "productId=?"

    invoke-virtual {v0, v6, v5}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Can not get mapped id for productId="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_2

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    :goto_1
    return-object p0

    :cond_2
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    const-string v0, "productId is empty"

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "shadetId can\'t be null"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "shadetId=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Can not get mapped id for shadeId="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->m(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "can not get mapped id for shadeId="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_6

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    :goto_3
    return-object p0

    :cond_6
    new-instance v1, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    const-string v0, "shadeId is empty"

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    const/4 v0, 0x3

    const-string v1, "SkuManager"

    const-string v2, "begin check sku metadata status"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;->d:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/c;->a:[I

    iget v8, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->statusCode:I

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->b(I)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    if-eq v7, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p1, "finish check sku metadata status"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "sku not found: "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->d:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lxx0;

    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lxx0;-><init>(I)V

    invoke-static {v3, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "sku not supported: "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->e:Z

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lxx0;

    const/16 p1, 0x17

    invoke-direct {p0, p1}, Lxx0;-><init>(I)V

    invoke-static {v4, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/exceptions/SkuNotSupportedException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/exceptions/SkuNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    const-string p1, "return sku metadata and wrap in Result"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->f:Z

    if-eqz p0, :cond_8

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    invoke-direct {p0, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    invoke-direct {p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Object;)V

    :goto_3
    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->b(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

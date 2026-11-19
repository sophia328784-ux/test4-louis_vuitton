.class public final synthetic Lcom/perfectcorp/perfectlib/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/l;->b:I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/l;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/l;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/l;->c:Ljava/util/ArrayList;

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoSetting;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/x2;

    invoke-direct {v1, p1, p0, v2}, Lcom/perfectcorp/perfectlib/x2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    return-object p0

    :pswitch_0
    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v1, Lr2;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p0, v2}, Lr2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/x2;

    invoke-direct {v2, p1, p0, v1}, Lcom/perfectcorp/perfectlib/x2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_1
    return-object p0

    :pswitch_3
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    return-object p0

    :pswitch_4
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v1, Lr2;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p0, v2}, Lr2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_2
    return-object p0

    :pswitch_5
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v1, Lr2;

    invoke-direct {v1, p1, p0, v2}, Lr2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_3
    return-object p0

    :pswitch_6
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_4

    :cond_4
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v1, Lr2;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p0, v2}, Lr2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_4
    return-object p0

    :pswitch_7
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    move-result-object v0

    new-instance v2, Lr2;

    invoke-direct {v2, p1, p0, v1}, Lr2;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoSetting;

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoSetting;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lr2;->b:I

    iput-object p1, p0, Lr2;->c:Lcom/perfectcorp/perfectlib/VtoSetting;

    iput-object p2, p0, Lr2;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr2;->b:I

    iget-object v1, p0, Lr2;->d:Ljava/util/ArrayList;

    iget-object p0, p0, Lr2;->c:Lcom/perfectcorp/perfectlib/VtoSetting;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    if-ne v0, p1, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_2
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    if-ne v0, p1, :cond_3

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_3
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    if-ne v0, p1, :cond_4

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

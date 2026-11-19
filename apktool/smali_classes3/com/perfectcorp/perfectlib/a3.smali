.class public final synthetic Lcom/perfectcorp/perfectlib/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoSetting;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/a3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/a3;->c:Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/a3;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a3;->c:Lcom/perfectcorp/perfectlib/VtoSetting;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

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

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

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

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

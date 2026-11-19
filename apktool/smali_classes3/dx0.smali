.class public final synthetic Ldx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;I)V
    .locals 0

    iput p2, p0, Ldx0;->b:I

    iput-object p1, p0, Ldx0;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ldx0;->b:I

    iget-object p0, p0, Ldx0;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "SkuCacheStrategyHelper"

    const-string v1, "[queryForCacheFirstThenUpdate] insertSkuSetIfNeed failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->guid:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    sget-object v2, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->c(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$b;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

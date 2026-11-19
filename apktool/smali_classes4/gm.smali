.class public final synthetic Lgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    iput p4, p0, Lgm;->b:I

    iput-object p1, p0, Lgm;->c:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    iput-object p2, p0, Lgm;->d:Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iput p3, p0, Lgm;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lgm;->b:I

    iget v1, p0, Lgm;->e:I

    iget-object v2, p0, Lgm;->d:Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iget-object p0, p0, Lgm;->c:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->h:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "USD"

    :cond_0
    invoke-virtual {v0, v4}, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->f:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->d:Ljava/math/BigDecimal;

    iget v8, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->g:I

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->e:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-lez v8, :cond_1

    new-instance v4, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;

    invoke-direct/range {v4 .. v10}, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    :cond_1
    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean v3, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    const-string p0, "sku, name and price can not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v4, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean v3, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

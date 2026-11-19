.class public final synthetic Lhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhm;->b:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    iput-object p2, p0, Lhm;->c:Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iput p3, p0, Lhm;->d:I

    iput p4, p0, Lhm;->e:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lhm;->b:Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    iget-object v1, v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, p0, Lhm;->c:Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v1

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->h:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "USD"

    :cond_0
    invoke-virtual {v1, v3}, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v1

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->d:Ljava/math/BigDecimal;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->e:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    const/4 v10, 0x1

    iget v7, p0, Lhm;->d:I

    if-lez v7, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;

    invoke-direct/range {v3 .. v9}, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v10, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    :cond_1
    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v1

    iget p0, p0, Lhm;->e:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean v10, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    const-string p0, "sku, name and price can not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

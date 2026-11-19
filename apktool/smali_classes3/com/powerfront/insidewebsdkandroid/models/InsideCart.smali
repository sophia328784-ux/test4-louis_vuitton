.class public Lcom/powerfront/insidewebsdkandroid/models/InsideCart;
.super Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigDecimal;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;-><init>(Ljava/util/HashMap;)V

    new-instance p1, Ljava/math/BigDecimal;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    iput-boolean p2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->c:Z

    iput-boolean p2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->e:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    iput-boolean p2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "currency"

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderId"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "update"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "orderTotal"

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "complete"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "newOrderId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p0, "data"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

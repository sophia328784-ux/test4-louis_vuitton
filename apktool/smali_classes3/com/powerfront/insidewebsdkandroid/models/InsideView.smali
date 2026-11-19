.class public Lcom/powerfront/insidewebsdkandroid/models/InsideView;
.super Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;
.source "SourceFile"


# instance fields
.field public final b:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/math/BigDecimal;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p8}, Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;-><init>(Ljava/util/HashMap;)V

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->b:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->h:Ljava/math/BigDecimal;

    iput-object p7, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->b:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    invoke-virtual {v1}, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "img"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->h:Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    const-string v2, "price"

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "sku"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p0, "data"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

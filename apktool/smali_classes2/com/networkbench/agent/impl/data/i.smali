.class public Lcom/networkbench/agent/impl/data/i;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static final d:I = 0x400


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/i;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/data/i;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/networkbench/agent/impl/data/i;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/i;->a:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/i;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/i;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget p0, p0, Lcom/networkbench/agent/impl/data/i;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/i;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/i;->c:I

    return p0
.end method

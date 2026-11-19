.class public Lcom/networkbench/agent/impl/n/h;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static final e:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field public final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/n/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/n/h;->e:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/h;->a:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    .line 42
    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    .line 43
    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/n/h;)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/h;->a:Ljava/util/Collection;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/h;->c()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/h;->a()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/n/h;->b()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    iget-object p0, p1, Lcom/networkbench/agent/impl/n/h;->a:Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/n/g;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/n/h;->a:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/n/h;->e:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPageSpans occur an error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/h;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/n/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/n/g;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    return p0
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    sub-int/2addr p1, v0

    const v0, 0xf4240

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    return-void

    :cond_2
    iput p1, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    return-void
.end method

.method public c()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    return p0
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->b:I

    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->c:I

    iput v0, p0, Lcom/networkbench/agent/impl/n/h;->d:I

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/h;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

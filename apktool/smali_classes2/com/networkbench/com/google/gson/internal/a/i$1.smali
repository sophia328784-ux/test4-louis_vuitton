.class Lcom/networkbench/com/google/gson/internal/a/i$1;
.super Lcom/networkbench/com/google/gson/internal/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/com/google/gson/internal/a/i;->a(Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/networkbench/com/google/gson/reflect/TypeToken;ZZ)Lcom/networkbench/com/google/gson/internal/a/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final a:Lcom/networkbench/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/networkbench/com/google/gson/Gson;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/networkbench/com/google/gson/reflect/TypeToken;

.field final synthetic e:Z

.field final synthetic f:Lcom/networkbench/com/google/gson/internal/a/i;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/a/i;Ljava/lang/String;ZZLcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/networkbench/com/google/gson/reflect/TypeToken;Z)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->f:Lcom/networkbench/com/google/gson/internal/a/i;

    iput-object p5, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->b:Lcom/networkbench/com/google/gson/Gson;

    iput-object p6, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->d:Lcom/networkbench/com/google/gson/reflect/TypeToken;

    iput-boolean p8, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/networkbench/com/google/gson/internal/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {p1, p5, p6, p7}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Lcom/networkbench/com/google/gson/internal/a/i;Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->a:Lcom/networkbench/com/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/com/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->a:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 27
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lcom/networkbench/com/google/gson/internal/a/l;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->b:Lcom/networkbench/com/google/gson/Gson;

    iget-object v2, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->a:Lcom/networkbench/com/google/gson/TypeAdapter;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/i$1;->d:Lcom/networkbench/com/google/gson/reflect/TypeToken;

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/networkbench/com/google/gson/internal/a/l;-><init>(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/com/google/gson/internal/a/l;->write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

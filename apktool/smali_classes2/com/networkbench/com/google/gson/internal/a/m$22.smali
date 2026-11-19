.class Lcom/networkbench/com/google/gson/internal/a/m$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/com/google/gson/internal/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)Lcom/networkbench/com/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/networkbench/com/google/gson/TypeAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->a:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->b:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->b:Ljava/lang/Class;

    const-string v2, "+"

    invoke-static {v1, v0, v2}, Lo60;->z(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->a:Ljava/lang/Class;

    const-string v2, ",adapter="

    invoke-static {v1, v0, v2}, Lo60;->z(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/m$22;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

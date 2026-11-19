.class Lcom/networkbench/com/google/gson/Gson$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/JsonSerializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/com/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/com/google/gson/Gson$2;->a:Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson$2;->a:Lcom/networkbench/com/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson$2;->a:Lcom/networkbench/com/google/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

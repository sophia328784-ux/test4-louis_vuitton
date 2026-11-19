.class Lcom/networkbench/agent/impl/crash/oom/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/crash/oom/a;->a(Lcom/networkbench/com/google/gson/JsonArray;)Lcom/networkbench/com/google/gson/JsonArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/networkbench/com/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/crash/oom/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/crash/oom/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/oom/a$2;->a:Lcom/networkbench/agent/impl/crash/oom/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)I
    .locals 2

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "%"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/com/google/gson/JsonArray;

    check-cast p2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/oom/a$2;->a(Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)I

    move-result p0

    return p0
.end method

.class public final Lcom/networkbench/com/google/gson/Gson$$$Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Internal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGeneratedTypeAdapter(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson;->a(Lcom/networkbench/com/google/gson/Gson;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson;->b(Lcom/networkbench/com/google/gson/Gson;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson$$$Internal;->getRuntimeGeneratedTypeAdapters(Lcom/networkbench/com/google/gson/Gson;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getRuntimeGeneratedTypeAdapters(Lcom/networkbench/com/google/gson/Gson;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            ")",
            "Ljava/util/Set<",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson;->c(Lcom/networkbench/com/google/gson/Gson;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson;->c(Lcom/networkbench/com/google/gson/Gson;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isGeneratedTypeAdapter(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson;->b(Lcom/networkbench/com/google/gson/Gson;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/networkbench/com/google/gson/Gson$$$Internal;->getRuntimeGeneratedTypeAdapters(Lcom/networkbench/com/google/gson/Gson;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

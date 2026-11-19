.class public final Lcom/networkbench/com/google/gson/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/com/google/gson/internal/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/c;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 3
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

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lcom/networkbench/com/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/Gson;->getAdapter(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object v1

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/c;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, p2}, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;->get(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/internal/ObjectConstructor;

    move-result-object p0

    new-instance p2, Lcom/networkbench/com/google/gson/internal/a/c$a;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/networkbench/com/google/gson/internal/a/c$a;-><init>(Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/TypeAdapter;Lcom/networkbench/com/google/gson/internal/ObjectConstructor;)V

    return-object p2
.end method

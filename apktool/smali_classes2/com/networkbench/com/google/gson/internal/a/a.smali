.class public final Lcom/networkbench/com/google/gson/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/a;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    return-void
.end method

.method public static a(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Lcom/networkbench/com/google/gson/annotations/Adapt;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;",
            "Lcom/networkbench/com/google/gson/annotations/Adapt;",
            ")",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/networkbench/com/google/gson/annotations/Adapt;->value()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;->get(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/internal/ObjectConstructor;

    move-result-object p1

    invoke-interface {p1}, Lcom/networkbench/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-static {p0, p1}, Lcom/networkbench/com/google/gson/Gson$$$Internal;->addGeneratedTypeAdapter(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;)V

    return-object p1
.end method


# virtual methods
.method public create(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 1
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

    move-result-object p2

    const-class v0, Lcom/networkbench/com/google/gson/annotations/Adapt;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/networkbench/com/google/gson/annotations/Adapt;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/a;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    invoke-static {p1, p0, p2}, Lcom/networkbench/com/google/gson/internal/a/a;->a(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Lcom/networkbench/com/google/gson/annotations/Adapt;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

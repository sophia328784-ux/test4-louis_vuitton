.class public final Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/gson/Gson;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a:Ljava/util/HashMap;

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->d:Z

    invoke-direct {v1, v2, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;-><init>(Ljava/util/HashMap;ZLjava/util/ArrayList;)V

    return-object v1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/i;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/g;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->c(Z)V

    instance-of v1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a:Ljava/util/HashMap;

    move-object v2, p2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/g;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->d(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    check-cast p2, Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-static {v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

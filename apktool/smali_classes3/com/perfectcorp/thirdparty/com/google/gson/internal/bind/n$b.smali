.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

.field public final b:Z

.field public final c:Lcom/perfectcorp/thirdparty/com/google/gson/i;

.field public final d:Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/i;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->c:Lcom/perfectcorp/thirdparty/com/google/gson/i;

    instance-of v2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    :cond_1
    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->d:Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->c(Z)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->b:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iget-object v2, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->c:Lcom/perfectcorp/thirdparty/com/google/gson/i;

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;->d:Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    move-object v8, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/i;Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Lcom/perfectcorp/thirdparty/com/google/gson/l;)V

    return-object v3

    :cond_2
    move-object v7, p2

    iget-object p0, v7, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    throw v0
.end method

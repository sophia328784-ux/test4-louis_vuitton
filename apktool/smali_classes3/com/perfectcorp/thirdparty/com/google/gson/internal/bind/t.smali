.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/thirdparty/com/google/gson/k;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 0

    iget-object p1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    const-class p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;Ljava/lang/Class;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    const-string v2, ",adapter="

    invoke-static {v1, v0, v2}, Lo60;->z(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;",
        "",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lkotlinx/serialization/json/Json;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;->a:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a()Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;
    .locals 3

    sget-object v0, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;->a:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;

    new-instance v2, Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;

    invoke-direct {v2, p0}, Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;-><init>(Lkotlinx/serialization/StringFormat;)V

    invoke-direct {v1, v0, v2}, Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;-><init>(Lokhttp3/MediaType;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V

    return-object v1
.end method

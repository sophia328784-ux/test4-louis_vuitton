.class public final Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;
.super Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer<",
        "Lcom/vuitton/android/data/dto/certificate/CertificateDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;",
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;",
        "Lcom/vuitton/android/data/dto/certificate/CertificateDto;",
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


# static fields
.field public static final c:Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;

    const-class v1, Lcom/vuitton/android/data/dto/certificate/CertificateDto;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;->c:Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/vuitton/android/data/dto/certificate/CertificateType;->DIAMOND:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {p1}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_1
    sget-object p1, Lcom/vuitton/android/data/dto/certificate/CertificateType;->RUBY:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {p1}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_2
    sget-object p1, Lcom/vuitton/android/data/dto/certificate/CertificateType;->CAPUCINE:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {p1}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_3
    sget-object p1, Lcom/vuitton/android/data/dto/certificate/CertificateType;->VISIONNAIRE:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {p1}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->Companion:Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0
.end method

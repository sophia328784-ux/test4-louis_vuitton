.class public Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;
.implements Lkotlinx/serialization/encoding/ChunkedDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;,
        Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0010B1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonDecoder;",
        "Lkotlinx/serialization/json/JsonDecoder;",
        "Lkotlinx/serialization/encoding/ChunkedDecoder;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        "mode",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "lexer",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;",
        "discriminatorHolder",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V",
        "DiscriminatorHolder",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/json/Json;

.field public final b:Lkotlinx/serialization/json/internal/WriteMode;

.field public final c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field public final d:Lkotlinx/serialization/modules/SerializersModule;

.field public e:I

.field public f:Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

.field public final g:Lkotlinx/serialization/json/JsonConfiguration;

.field public final h:Lkotlinx/serialization/json/internal/JsonElementMarker;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object p2, p1, Lkotlinx/serialization/json/Json;->b:Lkotlinx/serialization/modules/SerializersModule;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->d:Lkotlinx/serialization/modules/SerializersModule;

    const/4 p2, -0x1

    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    iput-object p5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

    iget-object p1, p1, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->g:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method


# virtual methods
.method public final A()Lkotlinx/serialization/json/Json;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public final D(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v2, "Expected "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    instance-of v4, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v4, v4, Lkotlinx/serialization/json/JsonConfiguration;->i:Z

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v4, p1

    check-cast v4, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-interface {v4}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->g:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v5, v5, Lkotlinx/serialization/json/JsonConfiguration;->c:Z

    invoke-virtual {v1, v4, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v5, :cond_5

    iget-object v4, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v4, v4, Lkotlinx/serialization/json/JsonConfiguration;->i:Z

    if-eqz v4, :cond_1

    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-virtual {p1, p0}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v4, p1

    check-cast v4, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-interface {v4}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->h()Lkotlinx/serialization/json/JsonElement;

    move-result-object v5

    move-object v8, p1

    check-cast v8, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-interface {v8}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object v8

    instance-of v9, v5, Lkotlinx/serialization/json/JsonObject;

    if-eqz v9, :cond_4

    check-cast v5, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v5, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    instance-of v8, v2, Lkotlinx/serialization/json/JsonNull;

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    :goto_0
    :try_start_1
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-static {p1, p0, v7}, Lkotlinx/serialization/PolymorphicSerializerKt;->a(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v0, v4, v5, p0}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->b(Lkotlinx/serialization/json/Json;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lkotlinx/serialization/json/JsonObject;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at element: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonPath;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v6}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :try_start_3
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-static {p1, p0, v5}, Lkotlinx/serialization/PolymorphicSerializerKt;->a(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    move-result-object p1
    :try_end_3
    .catch Lkotlinx/serialization/SerializationException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

    invoke-direct {v0, v4}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    const-string v2, "."

    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ""

    const/4 v4, 0x6

    invoke-static {p0, v0, v3, v4}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v0

    if-ne v0, v6, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 p0, 0x2

    invoke-static {v1, p1, v3, v2, p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_7
    :goto_2
    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "at path"

    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    throw p0

    :cond_8
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonPath;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at path: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/MissingFieldException;->b:Ljava/util/List;

    invoke-direct {p1, v1, v0, p0}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final E()B
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse byte for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final a()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->d:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v2, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v2, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    iget-object v6, v2, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    array-length v7, v6

    if-ne v4, v7, :cond_0

    mul-int/lit8 v7, v4, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    iget-object v6, v2, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v2, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    :cond_0
    iget-object v2, v2, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-char v2, v3, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g(C)V

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q()B

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    sget-object v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v1, v3, :cond_1

    iget-object v0, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    return-object v1

    :cond_2
    move-object v5, p1

    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    return-object v1

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    const-string v0, "Unexpected leading comma"

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v0

    const/4 v1, -0x1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    if-nez v0, :cond_1

    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->o:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, ""

    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->f(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g(C)V

    iget-object p0, p1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    iget p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    aput v1, v0, p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    :cond_4
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    if-eq p1, v1, :cond_5

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    :cond_5
    return-void
.end method

.method public final e(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonPath;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, " at path "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    invoke-static {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final h()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    iget-object v1, v1, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->b()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public final i()I
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse int for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final k()J
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->a:[I

    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x2

    const-string v5, "object"

    const/4 v6, 0x4

    const/16 v7, 0x3a

    const/4 v8, 0x0

    iget-object v9, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    const/4 v10, 0x1

    const/4 v11, -0x1

    iget-object v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v13, 0x0

    if-eq v2, v4, :cond_28

    const/4 v4, 0x6

    if-eq v2, v6, :cond_4

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->u()Z

    move-result v1

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    if-eq v2, v11, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v12, v0, v8, v13, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v13

    :cond_1
    :goto_0
    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    goto/16 :goto_19

    :cond_2
    if-eqz v1, :cond_33

    iget-object v0, v9, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->o:Z

    if-eqz v0, :cond_3

    goto/16 :goto_19

    :cond_3
    const-string v0, "array"

    invoke-static {v12, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->f(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;)V

    throw v13

    :cond_4
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->u()Z

    move-result v2

    iget-object v6, v12, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    :goto_1
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b()Z

    move-result v14

    const-wide/16 v16, 0x1

    iget-object v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz v14, :cond_20

    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->g:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v14, v2, Lkotlinx/serialization/json/JsonConfiguration;->c:Z

    if-eqz v14, :cond_5

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k()Ljava/lang/String;

    move-result-object v18

    :goto_2
    move/from16 v19, v11

    move-object/from16 v11, v18

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    :goto_3
    invoke-virtual {v12, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g(C)V

    invoke-static {v1, v9, v11}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v7

    const/4 v13, -0x3

    if-eq v7, v13, :cond_f

    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->h:Z

    if-eqz v2, :cond_b

    invoke-interface {v1, v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Z

    move-result v2

    invoke-interface {v1, v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v15

    if-eqz v2, :cond_6

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result v21

    if-nez v21, :cond_6

    invoke-virtual {v12, v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->v(Z)Z

    move-result v21

    if-eqz v21, :cond_6

    move/from16 v21, v10

    goto :goto_6

    :cond_6
    move/from16 v21, v10

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v10

    sget-object v13, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->a:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v12, v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->v(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v12, v14}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->r(Z)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v15, v9, v10}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v10

    iget-object v13, v9, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v13, v13, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    if-nez v13, :cond_9

    invoke-interface {v15}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result v13

    if-eqz v13, :cond_9

    move/from16 v13, v21

    :goto_4
    const/4 v15, -0x3

    goto :goto_5

    :cond_9
    move v13, v8

    goto :goto_4

    :goto_5
    if-ne v10, v15, :cond_c

    if-nez v2, :cond_a

    if-eqz v13, :cond_c

    :cond_a
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->i()Ljava/lang/String;

    :goto_6
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->u()Z

    move-result v2

    move v4, v8

    goto :goto_9

    :cond_b
    move/from16 v21, v10

    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    iget-object v0, v4, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Lkotlinx/serialization/internal/ElementMarker;

    const/16 v1, 0x40

    if-ge v7, v1, :cond_e

    iget-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    shl-long v4, v16, v7

    or-long/2addr v1, v4

    iput-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    :cond_d
    :goto_8
    move v11, v7

    goto/16 :goto_19

    :cond_e
    ushr-int/lit8 v1, v7, 0x6

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v7, 0x3f

    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->d:[J

    aget-wide v4, v0, v1

    shl-long v8, v16, v2

    or-long/2addr v4, v8

    aput-wide v4, v0, v1

    goto :goto_8

    :cond_f
    move/from16 v21, v10

    move v2, v8

    move/from16 v4, v21

    :goto_9
    if-eqz v4, :cond_1f

    invoke-static {v1, v9}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->f:Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;

    if-eqz v2, :cond_10

    iget-object v4, v2, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;->a:Ljava/lang/String;

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    iput-object v4, v2, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;->a:Ljava/lang/String;

    goto :goto_a

    :cond_10
    iget v0, v6, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    iget-object v1, v6, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    aget v2, v1, v0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_11

    aput v19, v1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    :cond_11
    iget v0, v6, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    add-int/2addr v0, v1

    iput v0, v6, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    :cond_12
    iget v0, v12, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v8, v1, v0, v11}, Lkotlin/text/StringsKt;->y(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lkotlinx/serialization/json/internal/JsonDecodingException;

    const-string v2, "\' at offset "

    const-string v3, " at path: "

    const-string v4, "Encountered an unknown key \'"

    invoke-static {v0, v4, v11, v2, v3}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/JsonPath;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys.\nJSON input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->g(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlinx/serialization/json/internal/JsonDecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q()B

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_14

    const/4 v10, 0x6

    if-eq v2, v10, :cond_14

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    const/4 v10, 0x6

    goto/16 :goto_10

    :cond_14
    :goto_b
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q()B

    move-result v2

    move/from16 v10, v21

    if-ne v2, v10, :cond_17

    if-eqz v14, :cond_15

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    goto :goto_c

    :cond_15
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d()Ljava/lang/String;

    :cond_16
    :goto_c
    const/16 v21, 0x1

    goto :goto_b

    :cond_17
    const/4 v10, 0x6

    if-eq v2, v7, :cond_1e

    if-ne v2, v10, :cond_18

    goto :goto_e

    :cond_18
    const/16 v10, 0x9

    if-ne v2, v10, :cond_1a

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v7, :cond_19

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->c0(Ljava/util/List;)Ljava/lang/Object;

    :goto_d
    const/4 v10, 0x6

    goto :goto_f

    :cond_19
    iget v0, v12, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found ] instead of } at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v10, 0x7

    if-ne v2, v10, :cond_1c

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    const/4 v10, 0x6

    if-ne v2, v10, :cond_1b

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->c0(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_d

    :cond_1b
    iget v0, v12, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found } instead of ] at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_1c
    const/16 v10, 0xa

    if-eq v2, v10, :cond_1d

    goto :goto_d

    :cond_1d
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v4, 0x0

    const/4 v10, 0x6

    invoke-static {v12, v0, v8, v4, v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_1e
    :goto_e
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e()B

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_16

    :goto_10
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->u()Z

    move-result v2

    move v4, v10

    :goto_11
    const/16 v7, 0x3a

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_1f
    const/4 v4, 0x6

    goto :goto_11

    :cond_20
    if-eqz v2, :cond_22

    iget-object v0, v9, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->o:Z

    if-eqz v0, :cond_21

    goto :goto_12

    :cond_21
    invoke-static {v12, v5}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->f(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;)V

    const/16 v20, 0x0

    throw v20

    :cond_22
    :goto_12
    if-eqz v4, :cond_27

    iget-object v0, v4, Lkotlinx/serialization/json/internal/JsonElementMarker;->a:Lkotlinx/serialization/internal/ElementMarker;

    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->b:Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Lkotlinx/serialization/internal/ElementMarker;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v4

    :cond_23
    iget-wide v5, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-eqz v7, :cond_24

    not-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    iget-wide v6, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    shl-long v9, v16, v5

    or-long/2addr v6, v9

    iput-wide v6, v0, Lkotlinx/serialization/internal/ElementMarker;->c:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_23

    move v11, v5

    goto/16 :goto_19

    :cond_24
    const/16 v5, 0x40

    if-le v4, v5, :cond_27

    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->d:[J

    array-length v4, v0

    :goto_13
    if-ge v8, v4, :cond_27

    add-int/lit8 v5, v8, 0x1

    mul-int/lit8 v6, v5, 0x40

    aget-wide v13, v0, v8

    :goto_14
    cmp-long v7, v13, v9

    if-eqz v7, :cond_26

    not-long v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    shl-long v9, v16, v7

    or-long/2addr v13, v9

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_25

    aput-wide v13, v0, v8

    goto/16 :goto_8

    :cond_25
    const-wide/16 v9, -0x1

    goto :goto_14

    :cond_26
    aput-wide v13, v0, v8

    move v8, v5

    const-wide/16 v9, -0x1

    goto :goto_13

    :cond_27
    const/4 v11, -0x1

    goto :goto_19

    :cond_28
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_29

    const/4 v10, 0x1

    goto :goto_15

    :cond_29
    move v10, v8

    :goto_15
    if-eqz v10, :cond_2a

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->u()Z

    move-result v8

    goto :goto_16

    :cond_2a
    const/16 v1, 0x3a

    invoke-virtual {v12, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g(C)V

    :cond_2b
    :goto_16
    invoke-virtual {v12}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b()Z

    move-result v1

    if-eqz v1, :cond_30

    if-eqz v10, :cond_2f

    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    iget v2, v12, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2d

    if-nez v8, :cond_2c

    goto :goto_17

    :cond_2c
    const-string v0, "Unexpected leading comma"

    const/4 v4, 0x0

    invoke-static {v12, v0, v2, v4, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2d
    const/4 v4, 0x0

    if-eqz v8, :cond_2e

    goto :goto_17

    :cond_2e
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v12, v0, v2, v4, v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2f
    :goto_17
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    const/16 v21, 0x1

    add-int/lit8 v11, v1, 0x1

    iput v11, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->e:I

    goto :goto_19

    :cond_30
    const/4 v4, -0x1

    if-eqz v8, :cond_32

    iget-object v0, v9, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->o:Z

    if-eqz v0, :cond_31

    goto :goto_18

    :cond_31
    invoke-static {v12, v5}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->f(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;)V

    const/16 v20, 0x0

    throw v20

    :cond_32
    :goto_18
    move v11, v4

    :cond_33
    :goto_19
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-eq v3, v0, :cond_34

    iget-object v0, v12, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    iget v0, v0, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    aput v11, v1, v0

    :cond_34
    return v11
.end method

.method public final o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final p()S
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse short for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final q()F
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    iget-object p0, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->k:Z

    if-nez p0, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->h(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/Number;)V

    throw v2

    :cond_1
    :goto_0
    return v1

    :catch_0
    const-string p0, "Failed to parse type \'float\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, p0, v1}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {v0, p0, v1, v2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final s()D
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->a:Lkotlinx/serialization/json/Json;

    iget-object p0, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->k:Z

    if-nez p0, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v5, v7

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->h(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/Number;)V

    throw v2

    :cond_1
    :goto_0
    return-wide v3

    :catch_0
    const-string p0, "Failed to parse type \'double\' for input \'"

    const/16 v3, 0x27

    invoke-static {v3, p0, v1}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {v0, p0, v1, v2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final u()Z
    .locals 10

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->t()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "EOF"

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ne v1, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->s(I)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_6

    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    const/16 v8, 0x66

    if-eq v0, v8, :cond_2

    const/16 v8, 0x74

    if-ne v0, v8, :cond_1

    const-string v0, "rue"

    invoke-virtual {p0, v9, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c(ILjava/lang/String;)V

    move v0, v7

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2
    const-string v0, "alse"

    invoke-virtual {p0, v9, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c(ILjava/lang/String;)V

    move v0, v5

    :goto_1
    if-eqz v1, :cond_5

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v1, v8, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    add-int/2addr v1, v7

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return v0

    :cond_3
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_4
    invoke-static {p0, v2, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_5
    return v0

    :cond_6
    invoke-static {p0, v2, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_7
    invoke-static {p0, v2, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4
.end method

.method public final v()C
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const-string v1, "Expected single char, but got \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, v0}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object p4, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v0, 0x1

    if-ne p1, p4, :cond_0

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, -0x2

    iget-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz p1, :cond_1

    iget-object v1, p4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    iget-object v2, v1, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    iget v3, v1, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    aget v2, v2, v3

    if-ne v2, p2, :cond_1

    iget-object v1, v1, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    sget-object v2, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->a:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    aput-object v2, v1, v3

    :cond_1
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->D(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p1, :cond_3

    iget-object p1, p4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/JsonPath;

    iget-object p3, p1, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    iget p4, p1, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    aget p3, p3, p4

    if-eq p3, p2, :cond_2

    add-int/2addr p4, v0

    iput p4, p1, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    iget-object p3, p1, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    array-length v0, p3

    if-ne p4, v0, :cond_2

    mul-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p1, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    iget-object p3, p1, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p1, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    :cond_2
    iget-object p3, p1, Lkotlinx/serialization/json/internal/JsonPath;->a:[Ljava/lang/Object;

    iget p4, p1, Lkotlinx/serialization/json/internal/JsonPath;->c:I

    aput-object p0, p3, p4

    iget-object p1, p1, Lkotlinx/serialization/json/internal/JsonPath;->b:[I

    aput p2, p1, p4

    :cond_3
    return-object p0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->g:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->c:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonElementMarker;->b:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->c:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->v(Z)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.class final Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Schema;


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

.field public final b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

.field public final c:Z

.field public final d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-object p1, p2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->c:Z

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->z(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->y(Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    instance-of v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->z()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->d()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->q()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->e:Z

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->j()V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->g()Z

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->f:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->c()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    :cond_0
    move-object v6, v1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->G()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v2, p5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    iget-object p1, p5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    const/16 p3, 0xb

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    const/4 v3, 0x2

    if-eq v2, p3, :cond_2

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_1

    ushr-int/lit8 p3, v2, 0x3

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)V

    move-object v3, p2

    move v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->g(I[BIILcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_0

    :cond_1
    move v5, p4

    move-object v7, p5

    invoke-static {v2, p2, v4, v5, v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->m(I[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_0

    :cond_2
    move v5, p4

    move-object v7, p5

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_1
    if-ge v4, v5, :cond_7

    invoke-static {p2, v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p5

    iget v2, v7, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    ushr-int/lit8 v4, v2, 0x3

    and-int/lit8 v8, v2, 0x7

    if-eq v4, v3, :cond_4

    const/4 v9, 0x3

    if-eq v4, v9, :cond_3

    goto :goto_2

    :cond_3
    if-ne v8, v3, :cond_5

    invoke-static {p2, p5, v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->a([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget-object p4, v7, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    goto :goto_1

    :cond_4
    if-nez v8, :cond_5

    invoke-static {p2, p5, v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget p3, v7, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    move-object p5, v1

    check-cast p5, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)V

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v4, 0xc

    if-ne v2, v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v2, p2, p5, v5, v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->m(I[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    goto :goto_1

    :cond_7
    move p5, v4

    :goto_3
    if-eqz p4, :cond_8

    shl-int/lit8 p1, p3, 0x3

    or-int/2addr p1, v3

    invoke-virtual {v6, p1, p4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->d(ILjava/lang/Object;)V

    :cond_8
    move p3, p5

    move p4, v5

    move-object p5, v7

    goto :goto_0

    :cond_9
    move v5, p4

    if-ne p3, v5, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->f()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final f(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 6

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-virtual {v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v5

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-object v0, v3

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->G()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->f()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iput-object v5, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    move-object p0, v0

    move-object p2, v1

    move-object p3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iput-object v5, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    throw p0
.end method

.method public final g(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)I
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final i(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 5

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->i()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->p()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->n()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->q()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyEntry;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->m()I

    move-result v2

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyEntry;

    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyEntry;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/LazyField;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;->m()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "Found invalid MessageSet item."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->s()Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->a:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->b:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-interface {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->a(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->a:I

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->b:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-interface {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->a(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final j(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)I
    .locals 9

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->b:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    iget v1, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->d:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v3

    move v2, v1

    :goto_0
    iget v4, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->a:I

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->b:[I

    aget v4, v4, v2

    const/4 v5, 0x3

    ushr-int/2addr v4, v5

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v6, v6, v2

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v7

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->j(II)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->a(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->d:I

    :goto_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->c:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    move p1, v3

    :goto_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->d(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->f(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->e()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->f(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_3

    :cond_3
    add-int/2addr v1, p1

    :cond_4
    return v1
.end method

.method public final k(Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;)Z
    .locals 5

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->getTag()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eq v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x7

    if-ne v1, v2, :cond_0

    ushr-int/lit8 v0, v0, 0x3

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)V

    invoke-virtual {p4, p5, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->g()Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->f()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->getTag()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->e()I

    move-result v0

    move-object v3, p3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->g()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->getTag()I

    move-result p0

    const/16 p1, 0xc

    if-ne p0, p1, :cond_7

    if-eqz v1, :cond_6

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 p0, v0, 0x3

    or-int/2addr p0, v2

    invoke-virtual {p5, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->d(ILjava/lang/Object;)V

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

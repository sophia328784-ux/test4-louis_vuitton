.class public abstract Lkotlinx/serialization/json/JsonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-serialization-json"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;
    .locals 23

    sget-object v0, Lkotlinx/serialization/json/Json;->d:Lkotlinx/serialization/json/Json$Default;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonBuilder;-><init>(Lkotlinx/serialization/json/Json;)V

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lkotlinx/serialization/json/JsonBuilder;->q:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lkotlinx/serialization/json/JsonBuilder;->h:Ljava/lang/String;

    const-string v3, "type"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lkotlinx/serialization/json/JsonBuilder;->i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    sget-object v3, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "useArrayPolymorphism option can only be used if classDiscriminatorMode in a default POLYMORPHIC state."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v0, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_2
    :goto_0
    iget-boolean v0, v1, Lkotlinx/serialization/json/JsonBuilder;->e:Z

    const-string v3, "    "

    iget-object v4, v1, Lkotlinx/serialization/json/JsonBuilder;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "Indent should not be specified when default printing mode is used"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_4
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_6

    const/16 v5, 0x9

    if-eq v3, v5, :cond_6

    const/16 v5, 0xd

    if-eq v3, v5, :cond_6

    const/16 v5, 0xa

    if-ne v3, v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    return-object v2

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    new-instance v5, Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v6, v1, Lkotlinx/serialization/json/JsonBuilder;->a:Z

    iget-boolean v7, v1, Lkotlinx/serialization/json/JsonBuilder;->c:Z

    iget-boolean v8, v1, Lkotlinx/serialization/json/JsonBuilder;->d:Z

    iget-boolean v10, v1, Lkotlinx/serialization/json/JsonBuilder;->e:Z

    iget-boolean v11, v1, Lkotlinx/serialization/json/JsonBuilder;->b:Z

    iget-boolean v13, v1, Lkotlinx/serialization/json/JsonBuilder;->g:Z

    iget-boolean v0, v1, Lkotlinx/serialization/json/JsonBuilder;->o:Z

    iget-boolean v2, v1, Lkotlinx/serialization/json/JsonBuilder;->j:Z

    iget-boolean v3, v1, Lkotlinx/serialization/json/JsonBuilder;->l:Z

    iget-boolean v4, v1, Lkotlinx/serialization/json/JsonBuilder;->m:Z

    iget-boolean v9, v1, Lkotlinx/serialization/json/JsonBuilder;->n:Z

    iget-object v12, v1, Lkotlinx/serialization/json/JsonBuilder;->i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    move/from16 v21, v9

    iget-boolean v9, v1, Lkotlinx/serialization/json/JsonBuilder;->p:Z

    move-object/from16 v22, v12

    iget-object v12, v1, Lkotlinx/serialization/json/JsonBuilder;->f:Ljava/lang/String;

    iget-boolean v14, v1, Lkotlinx/serialization/json/JsonBuilder;->q:Z

    iget-object v15, v1, Lkotlinx/serialization/json/JsonBuilder;->h:Ljava/lang/String;

    move/from16 v16, v0

    iget-object v0, v1, Lkotlinx/serialization/json/JsonBuilder;->k:Lkotlinx/serialization/json/JsonNamingStrategy;

    move-object/from16 v18, v0

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v5 .. v22}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;ZZZLkotlinx/serialization/json/ClassDiscriminatorMode;)V

    new-instance v0, Lkotlinx/serialization/json/JsonImpl;

    iget-object v1, v1, Lkotlinx/serialization/json/JsonBuilder;->r:Lkotlinx/serialization/modules/SerializersModule;

    invoke-direct {v0, v5, v1}, Lkotlinx/serialization/json/JsonImpl;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V

    return-object v0
.end method

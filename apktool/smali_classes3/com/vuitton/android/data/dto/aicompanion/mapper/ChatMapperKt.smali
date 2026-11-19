.class public abstract Lcom/vuitton/android/data/dto/aicompanion/mapper/ChatMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/aicompanion/mapper/ChatMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;)Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;->b:Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;

    sget-object v3, Lcom/vuitton/android/data/dto/aicompanion/mapper/ChatMapperKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;->USER:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;->AGENT:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    :goto_0
    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto;

    iget-object v6, v5, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto;->a:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;

    invoke-direct {v5, v6}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v5, v5, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialSectionMapperKt;->a(Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    invoke-direct {v6, v5}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;-><init>(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;)V

    move-object v5, v6

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v0, "\'dateTime\' must be Iso8601: "

    invoke-static {v0, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;)Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/aicompanion/mapper/ChatMapperKt;->a(Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;)Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;

    invoke-direct {p0, v0, v1}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

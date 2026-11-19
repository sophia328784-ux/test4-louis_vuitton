.class public abstract Lcom/vuitton/android/presentation/screen/aicompanion/models/mapper/ChatMessageMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->c:Lkotlinx/datetime/Instant;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    invoke-static {p2, v0, v4}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/time/LocalDateTime;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;

    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$SimpleText;->a:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;->a:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    invoke-static {p2}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V

    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

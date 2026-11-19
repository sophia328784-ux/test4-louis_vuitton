.class public final synthetic Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v9, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;->USER:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v13

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;

    const-string v1, "Hello, how are you?"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "1"

    const-string v15, "Aug 31, 2026, 10:30 AM"

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v10 .. v18}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;->AGENT:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v14

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;

    const-string v1, "I\'m good, thank you! How can I assist you today?"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v18, 0x20

    const/16 v19, 0x0

    const-string v12, "2"

    const-string v16, "Aug 31, 2026, 10:30 AM"

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    invoke-static {}, Lkotlinx/datetime/Clock$System;->a()Lkotlinx/datetime/Instant;

    move-result-object v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;

    const-string v4, "I\'m looking for a new handbag."

    invoke-direct {v1, v4}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$SimpleText;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v1, "3"

    const-string v5, "Aug 31, 2026, 10:30 AM"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v10, v11, v0}, [Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt$lambda$55656223$1$1$1;->b:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt$lambda$55656223$1$1$1;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt$lambda$55656223$1$2$1;->b:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt$lambda$55656223$1$2$1;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    new-instance v0, Lkm;

    const/4 v5, 0x7

    invoke-direct {v0, v5}, Lkm;-><init>(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4

    new-instance v0, Lkm;

    const/4 v6, 0x4

    invoke-direct {v0, v6}, Lkm;-><init>(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    new-instance v0, Lkm;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Lkm;-><init>(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    new-instance v0, Lkm;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lkm;-><init>(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const v10, 0x6db6d80

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModelKt;
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
.method public static final a(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;

    if-nez p1, :cond_0

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;->a:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPED_FROM_EHUB:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;->a:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    invoke-static {v3, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->e(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Z)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v3

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

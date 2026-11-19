.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModelKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;)Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->j:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

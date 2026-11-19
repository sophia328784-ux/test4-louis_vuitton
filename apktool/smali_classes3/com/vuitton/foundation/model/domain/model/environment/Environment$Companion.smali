.class public final Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/environment/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001R \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;",
        "",
        "",
        "",
        "legacyTitleMigrationMap",
        "Ljava/util/Map;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/environment/Environment;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;

    aput-object v4, v3, v2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;

    const/4 v4, 0x4

    aput-object v2, v3, v4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;

    const/4 v4, 0x5

    aput-object v2, v3, v4

    const/4 v2, 0x6

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;

    const/4 v2, 0x7

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;

    const/16 v2, 0x8

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;

    const/16 v2, 0x9

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;

    const/16 v2, 0xa

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;

    const/16 v2, 0xb

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;

    const/16 v2, 0xc

    aput-object v0, v3, v2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;

    const/16 v2, 0xd

    aput-object v0, v3, v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->a:Ljava/lang/String;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    return-object v1
.end method

.class public abstract Lcom/vuitton/android/data/dto/certificate/mapper/CertificateBodyMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;)Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;->a:Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->a:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->e:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->b:Ljava/lang/String;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/vuitton/android/data/dto/certificate/CertificateType;->RUBY:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    move-result-object v10

    move-object v11, v5

    move-object v5, v3

    new-instance v3, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;

    const/16 v12, 0x3c

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->a:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->f:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->b:Ljava/lang/String;

    const/16 v13, 0x4f

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;-><init>(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/vuitton/android/data/dto/certificate/CertificateType;->DIAMOND:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    move-result-object v10

    move-object v11, v5

    move-object v5, v3

    new-instance v3, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;

    const/16 v12, 0x3c

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/vuitton/android/data/dto/certificate/CertificateType;->CAPUCINE:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    move-result-object v11

    move-object v12, v4

    new-instance v4, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;

    const/16 v13, 0x3d

    const/4 v14, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v14}, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->a:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->e:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->h:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->i:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->j:Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->k:Ljava/lang/String;

    iget-object v13, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->l:Ljava/lang/String;

    iget-object v14, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->m:Ljava/lang/String;

    iget-object v15, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->n:Ljava/lang/String;

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v17}, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Lcom/vuitton/android/data/dto/certificate/CertificateType;->VISIONNAIRE:Lcom/vuitton/android/data/dto/certificate/CertificateType;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/certificate/CertificateType;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;->d:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    move-result-object v10

    move-object v11, v5

    move-object v5, v3

    new-instance v3, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;

    const/16 v12, 0x3c

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;->b:Ljava/lang/String;

    move-object v4, v1

    move-object v1, v3

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;->c:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;->e:Ljava/lang/String;

    move-object/from16 v18, v5

    move-object v5, v0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;-><init>(Lcom/vuitton/android/data/dto/certificate/CertificateDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

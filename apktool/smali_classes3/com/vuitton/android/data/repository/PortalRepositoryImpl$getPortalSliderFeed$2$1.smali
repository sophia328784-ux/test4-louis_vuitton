.class final Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/foundation/model/domain/model/portal/Portal;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/portal/Portal;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.PortalRepositoryImpl$getPortalSliderFeed$2$1"
    f = "PortalRepositoryImpl.kt"
    l = {
        0xf
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/repository/PortalRepositoryImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/PortalRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->c:Lcom/vuitton/android/data/repository/PortalRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->c:Lcom/vuitton/android/data/repository/PortalRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;-><init>(Lcom/vuitton/android/data/repository/PortalRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->c:Lcom/vuitton/android/data/repository/PortalRepositoryImpl;

    iget-object v2, v2, Lcom/vuitton/android/data/repository/PortalRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PortalApi;

    iput v4, v0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->b:I

    iget-object v4, v0, Lcom/vuitton/android/data/repository/PortalRepositoryImpl$getPortalSliderFeed$2$1;->d:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/vuitton/android/data/api/bff/publication/PortalApi;->getPortal(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast v0, Lcom/vuitton/android/data/dto/portal/PortalDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/portal/PortalDto;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/portal/PortalDto;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/portal/PortalDto;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/portal/PortalDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v8

    iget-object v1, v0, Lcom/vuitton/android/data/dto/portal/PortalDto;->e:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/portal/SlideDto;

    instance-of v4, v2, Lcom/vuitton/android/data/dto/portal/ContentSlideDto;

    if-eqz v4, :cond_8

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;

    check-cast v2, Lcom/vuitton/android/data/dto/portal/ContentSlideDto;

    iget-object v10, v2, Lcom/vuitton/android/data/dto/portal/ContentSlideDto;->a:Ljava/lang/String;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;->CONTENT:Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/portal/ContentSlideDto;->c:Lcom/vuitton/android/data/dto/portal/PortalDataDto;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;

    iget-object v13, v2, Lcom/vuitton/android/data/dto/portal/PortalDataDto;->a:Ljava/lang/String;

    iget-object v14, v2, Lcom/vuitton/android/data/dto/portal/PortalDataDto;->b:Ljava/lang/String;

    iget-object v15, v2, Lcom/vuitton/android/data/dto/portal/PortalDataDto;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/portal/PortalDataDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v16

    iget-object v3, v2, Lcom/vuitton/android/data/dto/portal/PortalDataDto;->e:Lcom/vuitton/android/data/dto/portal/PortalCtaDto;

    const-string v17, ""

    move-object/from16 p0, v1

    if-eqz v3, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;

    move-object/from16 p1, v5

    iget-object v5, v3, Lcom/vuitton/android/data/dto/portal/PortalCtaDto;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/portal/PortalCtaDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    move-object/from16 v20, v6

    iget-object v6, v3, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object/from16 v3, v17

    :cond_3
    move-object/from16 v21, v7

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    goto :goto_2

    :cond_4
    move-object/from16 p1, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v2, Lcom/vuitton/android/data/dto/portal/PortalDataDto;->f:Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;

    if-eqz v2, :cond_7

    new-instance v22, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->c(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v23

    iget-object v3, v2, Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v24

    iget-object v3, v2, Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/portal/PortalTeaserDto;->f:Lcom/vuitton/android/data/dto/portal/PortalCtaDto;

    if-eqz v2, :cond_6

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/portal/PortalCtaDto;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/portal/PortalCtaDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    move-object/from16 v25, v3

    iget-object v3, v2, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v2, v17

    :cond_5
    move-object/from16 v26, v5

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    move-object/from16 v28, v7

    :goto_3
    move-object/from16 v27, v6

    goto :goto_4

    :cond_6
    move-object/from16 v18, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    const/16 v28, 0x0

    goto :goto_3

    :goto_4
    invoke-direct/range {v22 .. v28}, Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;-><init>(Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;)V

    move-object/from16 v17, v18

    move-object/from16 v18, v22

    goto :goto_5

    :cond_7
    move-object/from16 v17, v1

    const/16 v18, 0x0

    :goto_5
    invoke-direct/range {v12 .. v18}, Lcom/vuitton/foundation/model/domain/model/portal/PortalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/portal/PortalCta;Lcom/vuitton/foundation/model/domain/model/portal/PortalTeaser;)V

    invoke-direct {v4, v10, v11, v12}, Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;Lcom/vuitton/foundation/model/domain/model/portal/PortalData;)V

    goto :goto_6

    :cond_8
    move-object/from16 p0, v1

    move-object/from16 p1, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    instance-of v1, v2, Lcom/vuitton/android/data/dto/portal/UnknownSlideDto;

    if-eqz v1, :cond_a

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lv40;->g()V

    const/16 v19, 0x0

    return-object v19

    :cond_b
    move-object/from16 v19, v3

    move-object/from16 p1, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    iget-object v0, v0, Lcom/vuitton/android/data/dto/portal/PortalDto;->f:Lcom/vuitton/android/data/dto/common/SoundDto;

    if-eqz v0, :cond_c

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/common/Sound;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/common/SoundDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/common/SoundDto;->b:Ljava/lang/String;

    iget v0, v0, Lcom/vuitton/android/data/dto/common/SoundDto;->c:F

    float-to-long v4, v0

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/vuitton/foundation/model/domain/model/common/Sound;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v10, v3

    goto :goto_7

    :cond_c
    move-object/from16 v10, v19

    :goto_7
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/portal/Portal;

    move-object/from16 v5, p1

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/foundation/model/domain/model/portal/Portal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/Sound;)V

    return-object v4
.end method

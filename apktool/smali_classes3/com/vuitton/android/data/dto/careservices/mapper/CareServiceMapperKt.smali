.class public abstract Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Lcom/vuitton/android/data/dto/careservices/CareServiceDto;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/dto/careservices/CareServiceDto;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->a:Ljava/lang/String;

    move-object v4, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->b:Ljava/lang/String;

    move-object v5, v3

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->d:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;->valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    move-result-object v7

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->AppForm:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    const-string v9, ""

    if-ne v6, v8, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->e:Ljava/lang/String;

    :goto_0
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->Call:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v6, v11, :cond_1

    move v11, v13

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    if-ne v6, v8, :cond_2

    move-object v8, v4

    move-object v4, v7

    move v7, v13

    goto :goto_2

    :cond_2
    move-object v8, v4

    move-object v4, v7

    move v7, v12

    :goto_2
    sget-object v14, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->VideoCall:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    if-ne v6, v14, :cond_3

    move v12, v13

    :cond_3
    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    move-object v13, v9

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->h:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v13

    :cond_4
    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->i:Ljava/lang/String;

    if-nez v6, :cond_5

    move-object v6, v13

    :cond_5
    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->f:Ljava/util/List;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->h:Ljava/lang/String;

    const/16 v17, 0x2000

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object v0, v8

    move v8, v12

    const-string v12, "Distant Care Service"

    const/4 v14, 0x0

    move-object/from16 v19, v10

    move-object v10, v1

    move-object v1, v5

    move-object/from16 v5, v19

    move/from16 v19, v11

    move-object v11, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v18}, Lcom/vuitton/android/data/dto/careservices/CareServiceDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

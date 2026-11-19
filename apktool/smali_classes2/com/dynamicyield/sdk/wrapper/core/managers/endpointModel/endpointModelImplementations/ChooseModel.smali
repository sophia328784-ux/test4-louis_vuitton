.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u00f1\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;",
        "endpointModelProvider",
        "",
        "",
        "selectorNames",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
        "page",
        "selectorGroups",
        "selectorPreviews",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;",
        "dayPart",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;",
        "cart",
        "branchId",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;",
        "orderFulfillment",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;",
        "options",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
        "pageAttributes",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;",
        "recsProductData",
        "listedItems",
        "cuid",
        "cuidType",
        "",
        "addDeviceDateTime",
        "ignoreWhenMissingActiveConsentAccepted",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Ljava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Ljava/util/Map;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

.field public final b:Ljava/util/List;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

.field public final g:Ljava/util/List;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

.field public final j:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;

.field public final k:Ljava/util/Map;

.field public final l:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;

.field public final m:Ljava/util/List;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Z

.field public final r:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

.field public final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Ljava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Ljava/util/Map;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/PageAttribute;",
            ">;",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    .line 146
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->b:Ljava/util/List;

    .line 147
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    .line 148
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->d:Ljava/util/List;

    .line 149
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->e:Ljava/util/List;

    .line 150
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->f:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    .line 151
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->g:Ljava/util/List;

    .line 152
    iput-object p8, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->h:Ljava/lang/String;

    .line 153
    iput-object p9, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->i:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    .line 154
    iput-object p10, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->j:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;

    .line 155
    iput-object p11, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->k:Ljava/util/Map;

    .line 156
    iput-object p12, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->l:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;

    .line 157
    iput-object p13, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->m:Ljava/util/List;

    .line 158
    iput-object p14, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->n:Ljava/lang/String;

    .line 159
    iput-object p15, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->o:Ljava/lang/String;

    move/from16 p1, p16

    .line 160
    iput-boolean p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->p:Z

    move/from16 p1, p17

    .line 161
    iput-boolean p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->q:Z

    .line 162
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;->POST:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->r:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "failed get Choose variations for selectorNames: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " selectorGroups: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->s:Ljava/lang/String;

    .line 164
    const-string p1, "Choose Endpoint"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->t:Ljava/lang/String;

    .line 165
    new-instance p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p2, p1, p3, p4, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->u:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    .line 166
    const-string p1, "serve/user/choose"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->v:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Ljava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Ljava/util/Map;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    move/from16 v19, v1

    goto :goto_d

    :cond_d
    move/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    move/from16 v20, v0

    :goto_e
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    goto :goto_f

    :cond_e
    move/from16 v20, p17

    goto :goto_e

    :goto_f
    invoke-direct/range {v3 .. v20}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Ljava/util/List;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Ljava/util/Map;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->u:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    invoke-interface {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;->b(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;->a(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    new-instance v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    iget-object v9, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->p:Z

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    move-object v4, v10

    :goto_0
    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    iget-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->e:Ljava/lang/String;

    :cond_1
    new-instance v15, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->i:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    iget-object v2, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->h:Ljava/lang/String;

    iget-object v4, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->f:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v10

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    invoke-direct {v5, v2, v4, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;)V

    move-object v4, v5

    :goto_2
    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v5, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    iget-object v7, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->k:Ljava/util/Map;

    iget-object v8, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->m:Ljava/util/List;

    iget-object v2, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->c:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    iget-object v6, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->g:Ljava/util/List;

    move-object v1, v15

    invoke-direct/range {v1 .. v8}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    new-instance v14, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->e:Ljava/util/List;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;

    invoke-direct {v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;-><init>(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    move-object v2, v10

    :goto_3
    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->b:Ljava/util/List;

    iget-object v3, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->d:Ljava/util/List;

    invoke-direct {v14, v1, v3, v2}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;-><init>(Ljava/util/List;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;)V

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->j:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    :cond_5
    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->h:Ljava/lang/Boolean;

    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;->c:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    :cond_7
    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->i:Ljava/lang/Boolean;

    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;->b:Ljava/lang/Boolean;

    goto :goto_4

    :cond_9
    move-object v4, v10

    :goto_4
    iget-object v5, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->l:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;

    filled-new-array {v2, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x4

    if-ge v6, v7, :cond_c

    aget-object v7, v4, v6

    if-eqz v7, :cond_b

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;

    if-eqz v1, :cond_a

    iget-object v10, v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;->b:Ljava/lang/Boolean;

    :cond_a
    invoke-direct {v4, v2, v10, v3, v5}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;)V

    move-object/from16 v16, v4

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v16, v10

    :goto_6
    new-instance v11, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;

    invoke-interface {v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->getSession()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object v12

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->n:Ljava/lang/String;

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->o:Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    move-result-object v13

    invoke-direct/range {v11 .. v16}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Selector;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Options;)V

    invoke-interface {v9, v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->c(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->q:Z

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;->c(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->r:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/ChooseModel;->t:Ljava/lang/String;

    return-object p0
.end method

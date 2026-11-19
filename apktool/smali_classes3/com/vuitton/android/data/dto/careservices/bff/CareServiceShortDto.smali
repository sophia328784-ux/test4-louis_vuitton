.class public final Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseDto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u009b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\u00a7\u0001\u0008\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u0015\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseDto;",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "",
        "displayableId",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;",
        "transactionId",
        "type",
        "category",
        "stepTitle",
        "action",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;",
        "product",
        "trackingURL",
        "creationDate",
        "deliveryDate",
        "updatedDeliveryDate",
        "restitutionHistoryDate",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;",
        "hotContent",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x239

    const/4 v1, 0x0

    const/16 v2, 0x239

    if-ne v2, v0, :cond_9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    :goto_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    :goto_2
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    goto :goto_3

    :cond_3
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    :goto_3
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_4

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    :goto_4
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    :goto_5
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_6

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_7

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    :goto_7
    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_8

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    return-void

    :cond_8
    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    return-void

    :cond_9
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move-object v14, v2

    goto :goto_5

    :cond_5
    move-object/from16 v14, p11

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move-object v15, v2

    goto :goto_6

    :cond_6
    move-object/from16 v15, p12

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move-object/from16 v16, v2

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    move-object/from16 v17, v2

    goto :goto_8

    :cond_8
    move-object/from16 v17, p14

    :goto_8
    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v13, p10

    .line 134
    invoke-direct/range {v3 .. v18}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 118
    invoke-static {p1, p4, p5, p6, p10}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    .line 125
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    .line 126
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    .line 127
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    .line 128
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    .line 129
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    .line 130
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    .line 131
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    .line 132
    iput-object p13, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    .line 133
    iput-object p14, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    if-nez p0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    :goto_0
    const-string v1, ", displayableId="

    const-string v2, ", transactionId="

    const-string v3, "CareServiceShortDto(id="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    const-string v3, ", category="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", stepTitle="

    const-string v2, ", action="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", product="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingURL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", creationDate="

    const-string v2, ", deliveryDate="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", updatedDeliveryDate="

    const-string v2, ", restitutionHistoryDate="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hotContent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

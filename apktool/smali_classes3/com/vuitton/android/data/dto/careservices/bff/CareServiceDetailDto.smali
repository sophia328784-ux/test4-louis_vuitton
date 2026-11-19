.class public final Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseDto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u0000 .2\u00020\u0001:\u000c/0123456789.B\u00a7\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\r\u0012\u000e\u0008\u0002\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\r\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%\u00a2\u0006\u0004\u0008\'\u0010(B\u00a7\u0002\u0008\u0010\u0012\u0006\u0010*\u001a\u00020)\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\r\u0012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\r\u0012\u0008\u0010$\u001a\u0004\u0018\u00010#\u0012\u0008\u0010&\u001a\u0004\u0018\u00010%\u0012\u0008\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u0008\'\u0010-\u00a8\u0006:"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseDto;",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "",
        "displayableId",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;",
        "transactionId",
        "description",
        "email",
        "phone",
        "type",
        "category",
        "",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;",
        "steps",
        "action",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;",
        "store",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;",
        "product",
        "trackingURL",
        "creationDate",
        "deliveryDate",
        "updatedDeliveryDate",
        "restitutionHistoryDate",
        "appointmentId",
        "payByLinkURL",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;",
        "preliminaryAssessmentInformation",
        "contactMethod",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;",
        "cancellationReasons",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection;",
        "inStoreInformation",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;",
        "appointmentInformation",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;",
        "shippingInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "Step",
        "Store",
        "Assessment",
        "AssessmentItem",
        "CancellationReason",
        "InformationSection",
        "AppointmentInformation",
        "AppointmentDetail",
        "ContactInformation",
        "ShippingInformation",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;

.field public static final z:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

.field public final l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/util/List;

.field public final w:Ljava/util/List;

.field public final x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

.field public final y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Llg;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Llg;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Llg;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Llg;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v6, Llg;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, Llg;-><init>(I)V

    invoke-static {v0, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v6, 0x19

    new-array v6, v6, [Lkotlin/Lazy;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v8, 0x2

    aput-object v1, v6, v8

    const/4 v8, 0x3

    aput-object v1, v6, v8

    const/4 v8, 0x4

    aput-object v1, v6, v8

    const/4 v8, 0x5

    aput-object v1, v6, v8

    const/4 v8, 0x6

    aput-object v1, v6, v8

    const/4 v8, 0x7

    aput-object v1, v6, v8

    const/16 v8, 0x8

    aput-object v2, v6, v8

    const/16 v2, 0x9

    aput-object v1, v6, v2

    const/16 v2, 0xa

    aput-object v1, v6, v2

    const/16 v2, 0xb

    aput-object v1, v6, v2

    const/16 v2, 0xc

    aput-object v1, v6, v2

    const/16 v2, 0xd

    aput-object v1, v6, v2

    const/16 v2, 0xe

    aput-object v1, v6, v2

    const/16 v2, 0xf

    aput-object v1, v6, v2

    const/16 v2, 0x10

    aput-object v1, v6, v2

    aput-object v1, v6, v3

    const/16 v2, 0x12

    aput-object v1, v6, v2

    aput-object v1, v6, v5

    const/16 v2, 0x14

    aput-object v1, v6, v2

    aput-object v4, v6, v7

    const/16 v2, 0x16

    aput-object v0, v6, v2

    const/16 v0, 0x17

    aput-object v1, v6, v0

    const/16 v0, 0x18

    aput-object v1, v6, v0

    sput-object v6, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->z:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x20f3

    const/4 v1, 0x0

    const/16 v2, 0x20f3

    if-ne v2, v0, :cond_12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_2

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    :goto_2
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    :goto_3
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_4

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    goto :goto_4

    :cond_4
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    :goto_4
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    goto :goto_5

    :cond_5
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    :goto_5
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_6

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    :goto_6
    move-object/from16 p2, p15

    goto :goto_7

    :cond_6
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    goto :goto_6

    :goto_7
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_7

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    goto :goto_8

    :cond_7
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    :goto_8
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_8

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    :goto_9
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_9

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    :goto_a
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    :goto_b
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_b

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    :goto_c
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_c

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    goto :goto_d

    :cond_c
    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    :goto_d
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_d

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    goto :goto_e

    :cond_d
    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    :goto_e
    const/high16 p2, 0x200000

    and-int/2addr p2, p1

    if-nez p2, :cond_e

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_f
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    goto :goto_10

    :cond_e
    move-object/from16 p2, p23

    goto :goto_f

    :goto_10
    const/high16 p2, 0x400000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_11
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    goto :goto_12

    :cond_f
    move-object/from16 p2, p24

    goto :goto_11

    :goto_12
    const/high16 p2, 0x800000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    goto :goto_13

    :cond_10
    move-object/from16 p2, p25

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    :goto_13
    const/high16 p2, 0x1000000

    and-int/2addr p1, p2

    if-nez p1, :cond_11

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    return-void

    :cond_11
    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    return-void

    :cond_12
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    .line 268
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_7

    move-object/from16 v18, v2

    goto :goto_7

    :cond_7
    move-object/from16 v18, p15

    :goto_7
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move-object/from16 v19, v2

    goto :goto_8

    :cond_8
    move-object/from16 v19, p16

    :goto_8
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move-object/from16 v20, v2

    goto :goto_9

    :cond_9
    move-object/from16 v20, p17

    :goto_9
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move-object/from16 v21, v2

    goto :goto_a

    :cond_a
    move-object/from16 v21, p18

    :goto_a
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object/from16 v22, v2

    goto :goto_b

    :cond_b
    move-object/from16 v22, p19

    :goto_b
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v23, v2

    goto :goto_c

    :cond_c
    move-object/from16 v23, p20

    :goto_c
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v24, v2

    goto :goto_d

    :cond_d
    move-object/from16 v24, p21

    :goto_d
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 269
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v25, v1

    goto :goto_e

    :cond_e
    move-object/from16 v25, p22

    :goto_e
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 270
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v26, v1

    goto :goto_f

    :cond_f
    move-object/from16 v26, p23

    :goto_f
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v27, v2

    goto :goto_10

    :cond_10
    move-object/from16 v27, p24

    :goto_10
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    move-object/from16 v28, v2

    goto :goto_11

    :cond_11
    move-object/from16 v28, p25

    :goto_11
    const/16 v29, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v17, p14

    .line 271
    invoke-direct/range {v3 .. v29}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    .line 246
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    .line 247
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    .line 248
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    .line 249
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    .line 250
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    .line 251
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    .line 252
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    .line 253
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    .line 254
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    .line 255
    iput-object p13, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    .line 256
    iput-object p14, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    .line 257
    iput-object p15, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 258
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 259
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 260
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 261
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 262
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    move-object/from16 p1, p21

    .line 263
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 264
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    move-object/from16 p1, p23

    .line 265
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    move-object/from16 p1, p24

    .line 266
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    move-object/from16 p1, p25

    .line 267
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    if-nez p0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    :goto_0
    const-string v1, ", displayableId="

    const-string v2, ", transactionId="

    const-string v3, "CareServiceDetailDto(id="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    const-string v3, ", email="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", phone="

    const-string v2, ", type="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", category="

    const-string v2, ", steps="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", action="

    const-string v2, ", store="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    invoke-static {v0, v3, v2, v1, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", product="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingURL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", creationDate="

    const-string v2, ", deliveryDate="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", updatedDeliveryDate="

    const-string v2, ", restitutionHistoryDate="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", appointmentId="

    const-string v2, ", payByLinkURL="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", preliminaryAssessmentInformation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contactMethod="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cancellationReasons="

    const-string v2, ", inStoreInformation="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    invoke-static {v3, v0, v2, v1, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appointmentInformation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shippingInformation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

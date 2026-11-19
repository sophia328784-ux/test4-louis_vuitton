.class public final Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0002\"!B\u00ed\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bB\u0081\u0002\u0008\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u001a\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;",
        "",
        "",
        "myLVCareStatus",
        "shippingAddressId",
        "shippingAddressLine1",
        "shippingAddressLine2",
        "shippingAddressLine3",
        "shippingCity",
        "shippingZipPostalCode",
        "shippingStateProvince",
        "shippingCountry",
        "billingAddressId",
        "billingAddressLine1",
        "billingAddressLine2",
        "billingAddressLine3",
        "billingCity",
        "billingZipPostalCode",
        "billingStateProvince",
        "billingCountry",
        "appointmentDateTime",
        "shippingAddressTitle",
        "shippingAddressFirstName",
        "shippingAddressLastName",
        "requestSubmittedCancellationReason",
        "preliminaryAssessmentCancellationReason",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_16

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const-string v0, ""

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    :goto_5
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_6

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_7

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_8

    iput-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    :goto_8
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_9

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    :goto_9
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_a

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    :goto_a
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_b

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    :goto_b
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_c

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    :goto_c
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_d

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    :goto_d
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_e

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    :goto_e
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    :goto_f
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    :goto_10
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    :goto_11
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_12

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    :goto_12
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_13

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    :goto_13
    const/high16 p2, 0x200000

    and-int/2addr p2, p1

    if-nez p2, :cond_14

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 p2, p23

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    :goto_14
    const/high16 p2, 0x400000

    and-int/2addr p1, p2

    if-nez p1, :cond_15

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    return-void

    :cond_15
    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    return-void

    :cond_16
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 257
    invoke-static/range {p1 .. p5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p6, p7, p8, p9, p11}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p12 .. p16}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p17 .. p21}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->a:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    .line 263
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    .line 264
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    .line 265
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    .line 266
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    .line 267
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    .line 268
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    .line 269
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    .line 270
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    .line 271
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    .line 272
    iput-object p13, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    .line 273
    iput-object p14, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    .line 274
    iput-object p15, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 275
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 276
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 277
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 278
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 279
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 280
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 281
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 282
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x2

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    move-object v14, v2

    goto :goto_c

    :cond_c
    move-object/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_d

    move-object v15, v2

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    move-object/from16 v16, v2

    goto :goto_e

    :cond_e
    move-object/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    move-object/from16 v17, v2

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move-object/from16 v18, v2

    goto :goto_10

    :cond_10
    move-object/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    move-object/from16 v19, v2

    goto :goto_11

    :cond_11
    move-object/from16 v19, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    move-object/from16 v20, v2

    goto :goto_12

    :cond_12
    move-object/from16 v20, p20

    :goto_12
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    move-object/from16 v21, v2

    goto :goto_13

    :cond_13
    move-object/from16 v21, p21

    :goto_13
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    move-object/from16 v22, v2

    goto :goto_14

    :cond_14
    move-object/from16 v22, p22

    :goto_14
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_15

    move-object/from16 p25, v2

    :goto_15
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move-object/from16 p15, v13

    move-object/from16 p16, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v18

    move-object/from16 p21, v19

    move-object/from16 p22, v20

    move-object/from16 p23, v21

    move-object/from16 p24, v22

    goto :goto_16

    :cond_15
    move-object/from16 p25, p23

    goto :goto_15

    :goto_16
    invoke-direct/range {p2 .. p25}, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", shippingAddressId="

    const-string v1, ", shippingAddressLine1="

    const-string v2, "CareServiceUpdateDto(myLVCareStatus="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shippingAddressLine2="

    const-string v2, ", shippingAddressLine3="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", shippingCity="

    const-string v2, ", shippingZipPostalCode="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", shippingStateProvince="

    const-string v2, ", shippingCountry="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", billingAddressId="

    const-string v2, ", billingAddressLine1="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", billingAddressLine2="

    const-string v2, ", billingAddressLine3="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", billingCity="

    const-string v2, ", billingZipPostalCode="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->n:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", billingStateProvince="

    const-string v2, ", billingCountry="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->p:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", appointmentDateTime="

    const-string v2, ", shippingAddressTitle="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->r:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", shippingAddressFirstName="

    const-string v2, ", shippingAddressLastName="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->t:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", requestSubmittedCancellationReason="

    const-string v2, ", preliminaryAssessmentCancellationReason="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->v:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;->w:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

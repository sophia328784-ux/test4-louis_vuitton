.class public final Lcom/vuitton/android/data/database/entity/address/AddressEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/database/entity/address/AddressEntity$$serializer;,
        Lcom/vuitton/android/data/database/entity/address/AddressEntity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008&\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000221B\u00a7\u0003\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008)\u0010*B\u0093\u0003\u0008\u0010\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010-\u001a\u00020+\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u0008)\u00100\u00a8\u00063"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/entity/address/AddressEntity;",
        "",
        "",
        "identifier",
        "",
        "isMain",
        "description",
        "civilityCode",
        "firstName",
        "lastName",
        "firstName2",
        "lastName2",
        "address1",
        "address2",
        "address3",
        "streetNumber",
        "street",
        "county",
        "city",
        "postalCode",
        "state",
        "displayStateName",
        "regionCodeIso31661Alpha2",
        "displayCountryName",
        "companyName",
        "phoneNumberInternational",
        "phoneNumber",
        "phoneNumberRegionCodeIso31661Alpha2",
        "phoneNumberType",
        "displayPhoneNumber",
        "otherPhoneNumberInternational",
        "otherPhoneNumber",
        "otherPhoneNumberRegionCodeIso31661Alpha2",
        "otherPhoneNumberType",
        "displayOtherPhoneNumber",
        "thirdPhoneNumberInternational",
        "thirdPhoneNumber",
        "thirdPhoneNumberRegionCodeIso31661Alpha2",
        "thirdPhoneNumberType",
        "displayThirdPhoneNumber",
        "latLong",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "seen0",
        "seen1",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/database/entity/address/AddressEntity$Companion;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Z

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

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/database/entity/address/AddressEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/database/entity/address/AddressEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->Companion:Lcom/vuitton/android/data/database/entity/address/AddressEntity$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4

    const/high16 v0, 0x1000000

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_25

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    and-int/lit8 p3, p1, 0x2

    if-nez p3, :cond_2

    iput-boolean v2, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    goto :goto_1

    :cond_2
    iput-boolean p4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    :goto_1
    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_3

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p3, p1, 0x8

    if-nez p3, :cond_4

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    :goto_3
    and-int/lit8 p3, p1, 0x10

    if-nez p3, :cond_5

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iput-object p7, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    :goto_4
    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_6

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput-object p8, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    :goto_5
    and-int/lit8 p3, p1, 0x40

    if-nez p3, :cond_7

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    :goto_6
    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_8

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    goto :goto_7

    :cond_8
    iput-object p10, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    :goto_7
    and-int/lit16 p3, p1, 0x100

    if-nez p3, :cond_9

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iput-object p11, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    :goto_8
    and-int/lit16 p3, p1, 0x200

    if-nez p3, :cond_a

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object/from16 p3, p12

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    :goto_9
    and-int/lit16 p3, p1, 0x400

    if-nez p3, :cond_b

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 p3, p13

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    :goto_a
    and-int/lit16 p3, p1, 0x800

    if-nez p3, :cond_c

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    goto :goto_b

    :cond_c
    move-object/from16 p3, p14

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    :goto_b
    and-int/lit16 p3, p1, 0x1000

    if-nez p3, :cond_d

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    goto :goto_c

    :cond_d
    move-object/from16 p3, p15

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    :goto_c
    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_e

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    :goto_d
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_f

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_e
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 p3, p17

    goto :goto_e

    :goto_f
    const p3, 0x8000

    and-int/2addr p3, p1

    if-nez p3, :cond_10

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 p3, p18

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    :goto_10
    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-nez p3, :cond_11

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 p3, p19

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    :goto_11
    const/high16 p3, 0x20000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 p3, p20

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    :goto_12
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_13

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_13
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object/from16 p3, p21

    goto :goto_13

    :goto_14
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-nez p3, :cond_14

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_15
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 p3, p22

    goto :goto_15

    :goto_16
    const/high16 p3, 0x100000

    and-int/2addr p3, p1

    if-nez p3, :cond_15

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    goto :goto_17

    :cond_15
    move-object/from16 p3, p23

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    :goto_17
    const/high16 p3, 0x200000

    and-int/2addr p3, p1

    if-nez p3, :cond_16

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_18
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    goto :goto_19

    :cond_16
    move-object/from16 p3, p24

    goto :goto_18

    :goto_19
    const/high16 p3, 0x400000

    and-int/2addr p3, p1

    if-nez p3, :cond_17

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_1a
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    goto :goto_1b

    :cond_17
    move-object/from16 p3, p25

    goto :goto_1a

    :goto_1b
    const/high16 p3, 0x800000

    and-int/2addr p3, p1

    if-nez p3, :cond_18

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_1c
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    move-object/from16 p3, p27

    goto :goto_1d

    :cond_18
    move-object/from16 p3, p26

    goto :goto_1c

    :goto_1d
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    const/high16 p3, 0x2000000

    and-int/2addr p3, p1

    if-nez p3, :cond_19

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3}, Ljava/lang/String;-><init>()V

    :goto_1e
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    goto :goto_1f

    :cond_19
    move-object/from16 p3, p28

    goto :goto_1e

    :goto_1f
    const/high16 p3, 0x4000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1a

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    goto :goto_20

    :cond_1a
    move-object/from16 p3, p29

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    :goto_20
    const/high16 p3, 0x8000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1b

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    goto :goto_21

    :cond_1b
    move-object/from16 p3, p30

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    :goto_21
    const/high16 p3, 0x10000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1c

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    goto :goto_22

    :cond_1c
    move-object/from16 p3, p31

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    :goto_22
    const/high16 p3, 0x20000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1d

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    goto :goto_23

    :cond_1d
    move-object/from16 p3, p32

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    :goto_23
    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p1

    if-nez p3, :cond_1e

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    goto :goto_24

    :cond_1e
    move-object/from16 p3, p33

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    :goto_24
    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_1f

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    goto :goto_25

    :cond_1f
    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    :goto_25
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_20

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    goto :goto_26

    :cond_20
    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    :goto_26
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_21

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    goto :goto_27

    :cond_21
    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    :goto_27
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_22

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    goto :goto_28

    :cond_22
    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    :goto_28
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_23

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    goto :goto_29

    :cond_23
    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    :goto_29
    and-int/lit8 p1, p2, 0x10

    if-nez p1, :cond_24

    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    return-void

    :cond_24
    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    return-void

    :cond_25
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p0

    filled-new-array {v0, v2}, [I

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/data/database/entity/address/AddressEntity$$serializer;->a:Lcom/vuitton/android/data/database/entity/address/AddressEntity$$serializer;

    invoke-virtual {p2}, Lcom/vuitton/android/data/database/entity/address/AddressEntity$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object/from16 v0, p15

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    move-object/from16 v3, p22

    move-object/from16 v4, p23

    move-object/from16 v5, p24

    .line 479
    invoke-static {p1, p4, p5, p6, v0}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    .line 483
    iput-boolean p2, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    .line 484
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    .line 485
    iput-object p4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    .line 486
    iput-object p5, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    .line 487
    iput-object p6, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    .line 488
    iput-object p7, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    .line 489
    iput-object p8, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    .line 490
    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    move-object/from16 p1, p10

    .line 491
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    move-object/from16 p1, p11

    .line 492
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 493
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 494
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 495
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 497
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 498
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 499
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    .line 500
    iput-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    .line 501
    iput-object v2, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 502
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    .line 503
    iput-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    .line 504
    iput-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    .line 505
    iput-object v5, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 506
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 507
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 508
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 509
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 510
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 511
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 512
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 513
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    move-object/from16 p1, p33

    .line 514
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    move-object/from16 p1, p34

    .line 515
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    move-object/from16 p1, p35

    .line 516
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 517
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    move-object/from16 p1, p37

    .line 518
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 40

    move/from16 v0, p38

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v4, v1

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 520
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    .line 521
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    .line 522
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v8, v1

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v11, v2

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v12, v2

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v13, v2

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v14, v2

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    move-object v15, v2

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    move-object/from16 v16, v2

    goto :goto_d

    :cond_d
    move-object/from16 v16, p14

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    .line 523
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v17, v1

    goto :goto_e

    :cond_e
    move-object/from16 v17, p15

    :goto_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v18, v2

    goto :goto_f

    :cond_f
    move-object/from16 v18, p16

    :goto_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v19, v2

    goto :goto_10

    :cond_10
    move-object/from16 v19, p17

    :goto_10
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v20, v2

    goto :goto_11

    :cond_11
    move-object/from16 v20, p18

    :goto_11
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 524
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v21, v1

    goto :goto_12

    :cond_12
    move-object/from16 v21, p19

    :goto_12
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 525
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v22, v1

    goto :goto_13

    :cond_13
    move-object/from16 v22, p20

    :goto_13
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move-object/from16 v23, v2

    goto :goto_14

    :cond_14
    move-object/from16 v23, p21

    :goto_14
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 526
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v24, v1

    goto :goto_15

    :cond_15
    move-object/from16 v24, p22

    :goto_15
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 527
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v25, v1

    goto :goto_16

    :cond_16
    move-object/from16 v25, p23

    :goto_16
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 528
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v26, v1

    goto :goto_17

    :cond_17
    move-object/from16 v26, p24

    :goto_17
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    .line 529
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v28, v1

    goto :goto_18

    :cond_18
    move-object/from16 v28, p26

    :goto_18
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    move-object/from16 v29, v2

    goto :goto_19

    :cond_19
    move-object/from16 v29, p27

    :goto_19
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    move-object/from16 v30, v2

    goto :goto_1a

    :cond_1a
    move-object/from16 v30, p28

    :goto_1a
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    move-object/from16 v31, v2

    goto :goto_1b

    :cond_1b
    move-object/from16 v31, p29

    :goto_1b
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1c

    move-object/from16 v32, v2

    goto :goto_1c

    :cond_1c
    move-object/from16 v32, p30

    :goto_1c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_1d

    move-object/from16 v33, v2

    goto :goto_1d

    :cond_1d
    move-object/from16 v33, p31

    :goto_1d
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    move-object/from16 v34, v2

    goto :goto_1e

    :cond_1e
    move-object/from16 v34, p32

    :goto_1e
    and-int/lit8 v0, p39, 0x1

    if-eqz v0, :cond_1f

    move-object/from16 v35, v2

    goto :goto_1f

    :cond_1f
    move-object/from16 v35, p33

    :goto_1f
    and-int/lit8 v0, p39, 0x2

    if-eqz v0, :cond_20

    move-object/from16 v36, v2

    goto :goto_20

    :cond_20
    move-object/from16 v36, p34

    :goto_20
    and-int/lit8 v0, p39, 0x4

    if-eqz v0, :cond_21

    move-object/from16 v37, v2

    goto :goto_21

    :cond_21
    move-object/from16 v37, p35

    :goto_21
    and-int/lit8 v0, p39, 0x8

    if-eqz v0, :cond_22

    move-object/from16 v38, v2

    goto :goto_22

    :cond_22
    move-object/from16 v38, p36

    :goto_22
    and-int/lit8 v0, p39, 0x10

    if-eqz v0, :cond_23

    move-object/from16 v39, v2

    move-object/from16 v27, p25

    move-object/from16 v2, p0

    goto :goto_23

    :cond_23
    move-object/from16 v39, p37

    move-object/from16 v2, p0

    move-object/from16 v27, p25

    .line 530
    :goto_23
    invoke-direct/range {v2 .. v39}, Lcom/vuitton/android/data/database/entity/address/AddressEntity;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    return v2

    :cond_26
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    if-nez v3, :cond_12

    move v3, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    if-nez v3, :cond_13

    move v3, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v2

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v2

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v2

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    if-nez p0, :cond_17

    goto :goto_17

    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isMain="

    const-string v1, ", description="

    const-string v2, "AddressEntity(identifier="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", civilityCode="

    const-string v2, ", firstName="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lastName="

    const-string v2, ", firstName2="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lastName2="

    const-string v2, ", address1="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", address2="

    const-string v2, ", address3="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", streetNumber="

    const-string v2, ", street="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", county="

    const-string v2, ", city="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", postalCode="

    const-string v2, ", state="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", displayStateName="

    const-string v2, ", regionCodeIso31661Alpha2="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", displayCountryName="

    const-string v2, ", companyName="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", phoneNumberInternational="

    const-string v2, ", phoneNumber="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", phoneNumberRegionCodeIso31661Alpha2="

    const-string v2, ", phoneNumberType="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", displayPhoneNumber="

    const-string v2, ", otherPhoneNumberInternational="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", otherPhoneNumber="

    const-string v2, ", otherPhoneNumberRegionCodeIso31661Alpha2="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", otherPhoneNumberType="

    const-string v2, ", displayOtherPhoneNumber="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", thirdPhoneNumberInternational="

    const-string v2, ", thirdPhoneNumber="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", thirdPhoneNumberRegionCodeIso31661Alpha2="

    const-string v2, ", thirdPhoneNumberType="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", displayThirdPhoneNumber="

    const-string v2, ", latLong="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

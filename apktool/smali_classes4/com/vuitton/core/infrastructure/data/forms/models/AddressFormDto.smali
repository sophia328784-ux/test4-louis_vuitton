.class public final Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0002 \u001fB\u00d7\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019B\u00d9\u0001\u0008\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u0018\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "address1",
        "address2",
        "address3",
        "city",
        "civility",
        "companyName",
        "country",
        "county",
        "description",
        "firstName",
        "firstName2",
        "lastName",
        "lastName2",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;",
        "phones",
        "postalCode",
        "state",
        "street",
        "streetNumber",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "forms"
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

.field public final p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x4095

    const/4 v1, 0x0

    const/16 v2, 0x4095

    if-ne v2, v0, :cond_e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_1
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_2

    :cond_2
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_2
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_3

    :cond_3
    iput-object p8, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_3
    iput-object p9, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_4

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_4

    :cond_4
    iput-object p10, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_4
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_5

    :cond_5
    iput-object p11, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_5
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_6

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_6

    :cond_6
    iput-object p12, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_6
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_7

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_7

    :cond_7
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_7
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_8

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_8

    :cond_8
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_8
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_9

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_9
    move-object/from16 p2, p16

    goto :goto_a

    :cond_9
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_9

    :goto_a
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_b

    :cond_a
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_b
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_b

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_c

    :cond_b
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_c
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_c

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_d

    :cond_c
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_d
    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-nez p1, :cond_d

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    return-void

    :cond_d
    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    return-void

    :cond_e
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 182
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 183
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 184
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 185
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 186
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 187
    iput-object p8, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 188
    iput-object p9, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 189
    iput-object p10, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 190
    iput-object p11, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 191
    iput-object p12, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 192
    iput-object p13, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 193
    iput-object p14, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 194
    iput-object p15, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    move-object/from16 p1, p16

    .line 195
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p1, p17

    .line 196
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p1, p18

    .line 197
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p1, p19

    .line 198
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

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
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v13, v2

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v14, v2

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object v15, v2

    goto :goto_7

    :cond_7
    move-object/from16 v15, p12

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move-object/from16 v16, v2

    goto :goto_8

    :cond_8
    move-object/from16 v16, p13

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move-object/from16 v17, v2

    goto :goto_9

    :cond_9
    move-object/from16 v17, p14

    :goto_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move-object/from16 v19, v2

    goto :goto_a

    :cond_a
    move-object/from16 v19, p16

    :goto_a
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object/from16 v20, v2

    goto :goto_b

    :cond_b
    move-object/from16 v20, p17

    :goto_b
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v21, v2

    goto :goto_c

    :cond_c
    move-object/from16 v21, p18

    :goto_c
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move-object/from16 v22, v2

    :goto_d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v11, p8

    move-object/from16 v18, p15

    goto :goto_e

    :cond_d
    move-object/from16 v22, p19

    goto :goto_d

    .line 199
    :goto_e
    invoke-direct/range {v3 .. v22}, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v3, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v3, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v3, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez p0, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddressFormDto(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address3="

    const-string v2, ", city="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", civility="

    const-string v2, ", companyName="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", country="

    const-string v2, ", county="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", description="

    const-string v2, ", firstName="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", firstName2="

    const-string v2, ", lastName="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", lastName2="

    const-string v2, ", phones="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", street="

    const-string v2, ", streetNumber="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

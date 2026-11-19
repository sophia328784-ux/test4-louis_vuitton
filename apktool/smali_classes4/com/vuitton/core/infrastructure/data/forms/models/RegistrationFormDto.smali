.class public final Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u0083\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\u00a7\u0001\u0008\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u0015\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "email",
        "password",
        "confirmPassword",
        "civility",
        "firstName",
        "lastName",
        "firstName2",
        "lastName2",
        "birthDate",
        "country",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;",
        "phone",
        "Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;",
        "consents",
        "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;",
        "address",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$Companion;


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

.field public final l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

.field public final m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

.field public final n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x1e7f

    const/4 v1, 0x0

    const/16 v2, 0x1e7f

    if-ne v2, v0, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p8, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_0

    :cond_0
    iput-object p9, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_0
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_1

    :cond_1
    iput-object p10, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_1
    iput-object p11, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p12, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    return-void

    :cond_2
    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 79
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 80
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 81
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 82
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 83
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 84
    iput-object p8, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 85
    iput-object p9, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 86
    iput-object p10, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 87
    iput-object p11, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 88
    iput-object p12, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    .line 89
    iput-object p13, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    .line 90
    iput-object p14, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    move-object/from16 v17, v2

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    goto :goto_3

    :cond_2
    move-object/from16 v17, p14

    goto :goto_2

    .line 91
    :goto_3
    invoke-direct/range {v3 .. v17}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v3, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v3, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-virtual {v3}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegistrationFormDto(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmPassword="

    const-string v2, ", civility="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", firstName="

    const-string v2, ", lastName="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", firstName2="

    const-string v2, ", lastName2="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    const-string v1, ", birthDate="

    const-string v2, ", country="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$$serializer;,
        Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0002\"!B\u00c7\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bB\u00df\u0001\u0008\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u001a\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;",
        "",
        "",
        "identifier",
        "identifierType",
        "login",
        "firstName",
        "firstName2",
        "lastName",
        "lastName2",
        "email",
        "civilityCode",
        "",
        "Lcom/vuitton/android/data/database/entity/address/AddressEntity;",
        "addressList",
        "taxId",
        "branchId",
        "contactId",
        "batchAuthKey",
        "accountId",
        "",
        "kisaStoreAppointmentPersonalData",
        "Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;",
        "mobilePhoneNumber",
        "initials",
        "displayName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;

.field public static final t:[Lkotlin/Lazy;


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

.field public final j:Ljava/util/List;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Boolean;

.field public final q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->Companion:Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lyp0;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lyp0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0x13

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    aput-object v1, v2, v3

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v3, 0x9

    aput-object v0, v2, v3

    const/16 v0, 0xa

    aput-object v1, v2, v0

    const/16 v0, 0xb

    aput-object v1, v2, v0

    const/16 v0, 0xc

    aput-object v1, v2, v0

    const/16 v0, 0xd

    aput-object v1, v2, v0

    const/16 v0, 0xe

    aput-object v1, v2, v0

    const/16 v0, 0xf

    aput-object v1, v2, v0

    const/16 v0, 0x10

    aput-object v1, v2, v0

    const/16 v0, 0x11

    aput-object v1, v2, v0

    const/16 v0, 0x12

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->t:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    const v0, 0x1f1af

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_0

    iput-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    :goto_0
    iput-object p7, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_1

    iput-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p8, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    :goto_1
    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_2

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p11, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    :goto_2
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_3

    iput-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p12, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    :goto_3
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_4

    iput-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    :goto_4
    move-object/from16 p2, p14

    goto :goto_5

    :cond_4
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    goto :goto_4

    :goto_5
    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_5

    iput-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    :goto_6
    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    if-nez p1, :cond_6

    const-string p1, ""

    :goto_7
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    return-void

    :cond_6
    move-object/from16 p1, p20

    goto :goto_7

    :cond_7
    sget-object p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$$serializer;->a:Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/database/entity/address/AddressEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-static {p1, p2, p3, p4, p6}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    .line 139
    iput-object p7, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    .line 140
    iput-object p8, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    .line 141
    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    .line 142
    iput-object p10, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    .line 143
    iput-object p11, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    .line 144
    iput-object p12, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    .line 145
    iput-object p13, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    .line 146
    iput-object p14, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    .line 147
    iput-object p15, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 148
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    .line 149
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    move-object/from16 p1, p18

    .line 150
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 151
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    .line 152
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v13, v1

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p11

    :goto_3
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, p12

    :goto_4
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move-object/from16 v21, v2

    goto :goto_5

    :cond_5
    move-object/from16 v21, p18

    :goto_5
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 153
    const-string v0, ""

    move-object/from16 v22, v0

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    goto :goto_7

    :cond_6
    move-object/from16 v22, p19

    goto :goto_6

    .line 154
    :goto_7
    invoke-direct/range {v3 .. v22}, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    if-nez v3, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", identifierType="

    const-string v1, ", login="

    const-string v2, "ProfileEntity(identifier="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstName="

    const-string v2, ", firstName2="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lastName="

    const-string v2, ", lastName2="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", email="

    const-string v2, ", civilityCode="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", addressList="

    const-string v2, ", taxId="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ", branchId="

    const-string v2, ", contactId="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", batchAuthKey="

    const-string v2, ", accountId="

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kisaStoreAppointmentPersonalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobilePhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

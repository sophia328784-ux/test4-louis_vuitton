.class public final Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;",
        "identifier",
        "",
        "login",
        "firstName",
        "firstName2",
        "lastName",
        "lastName2",
        "email",
        "civilityCode",
        "",
        "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;",
        "addressList",
        "taxId",
        "branchId",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;",
        "contactId",
        "batchAuthKey",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;",
        "accountId",
        "Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;",
        "mobilePhoneNumber",
        "initials",
        "displayName",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

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
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move-object/from16 v19, v2

    goto :goto_5

    :cond_5
    move-object/from16 v19, p16

    :goto_5
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-string v0, ""

    move-object/from16 v20, v0

    goto :goto_6

    :cond_6
    move-object/from16 v20, p17

    :goto_6
    const/16 v21, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v3 .. v21}, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    .line 99
    iput-object p2, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->b:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->c:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->d:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->e:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->f:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->g:Ljava/lang/String;

    .line 105
    iput-object p8, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->h:Ljava/lang/String;

    .line 106
    iput-object p9, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->i:Ljava/util/List;

    .line 107
    iput-object p10, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->j:Ljava/lang/String;

    .line 108
    iput-object p11, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->k:Ljava/lang/String;

    .line 109
    iput-object p12, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->l:Ljava/lang/String;

    .line 110
    iput-object p13, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->m:Ljava/lang/String;

    .line 111
    iput-object p14, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->n:Ljava/lang/String;

    .line 112
    iput-object p15, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->o:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    move-object/from16 p1, p16

    .line 113
    iput-object p1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 114
    iput-object p1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->l:Ljava/lang/String;

    if-nez v3, :cond_e

    if-nez v1, :cond_d

    move v1, v0

    goto :goto_1

    :cond_d
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_e
    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->m:Ljava/lang/String;

    if-nez v3, :cond_12

    if-nez v1, :cond_11

    move v1, v0

    goto :goto_3

    :cond_11
    :goto_2
    move v1, v2

    goto :goto_3

    :cond_12
    if-nez v1, :cond_13

    goto :goto_2

    :cond_13
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->n:Ljava/lang/String;

    if-nez v3, :cond_16

    if-nez v1, :cond_15

    move v1, v0

    goto :goto_5

    :cond_15
    :goto_4
    move v1, v2

    goto :goto_5

    :cond_16
    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->o:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->o:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object p0, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->q:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->q:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->i:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->k:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->l:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->m:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->n:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->o:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->p:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->q:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const-string v0, "null"

    iget-object v1, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->m:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v4, "BatchAuthKey(key="

    invoke-static {v4, v3, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->n:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ProfileUiModel(identifier="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", login="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", firstName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", firstName2="

    const-string v6, ", lastName="

    iget-object v7, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->d:Ljava/lang/String;

    invoke-static {v4, v7, v5, v8, v6}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ", lastName2="

    const-string v6, ", email="

    iget-object v7, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->f:Ljava/lang/String;

    invoke-static {v4, v7, v5, v8, v6}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ", civilityCode="

    const-string v6, ", addressList="

    iget-object v7, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->h:Ljava/lang/String;

    invoke-static {v4, v7, v5, v8, v6}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ", taxId="

    const-string v6, ", branchId="

    iget-object v7, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->i:Ljava/util/List;

    invoke-static {v5, v7, v6, v4, v8}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v5, ", contactId="

    const-string v6, ", batchAuthKey="

    iget-object v7, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->k:Ljava/lang/String;

    invoke-static {v4, v7, v5, v1, v6}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", accountId="

    const-string v5, ", mobilePhoneNumber="

    invoke-static {v4, v3, v1, v0, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->o:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initials="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->p:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayName="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->q:Ljava/lang/String;

    invoke-static {p0, v2, v4}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

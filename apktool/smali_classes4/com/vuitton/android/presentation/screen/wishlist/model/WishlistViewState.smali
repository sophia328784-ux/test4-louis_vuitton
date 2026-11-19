.class public final Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isError",
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;",
        "wishlist",
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;",
        "revealedItem",
        "storeModeStillValid",
        "Lkotlin/Result;",
        "shareResult",
        "nativeShareEnabled",
        "",
        "rmsCode",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lkotlin/Result;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 28

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v9, v1

    goto :goto_4

    :cond_4
    move/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v3

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move v11, v2

    goto :goto_6

    :cond_6
    move/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v3

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    new-instance v13, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v26, 0xfff

    const/16 v27, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v13 .. v27}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v14}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 119
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->b:Z

    .line 120
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->c:Z

    .line 121
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    .line 122
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->e:Ljava/lang/String;

    .line 123
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->f:Z

    .line 124
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->g:Lkotlin/Result;

    .line 125
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->h:Z

    .line 126
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->i:Ljava/lang/String;

    .line 127
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->e:Ljava/lang/String;

    if-nez v3, :cond_7

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    sget-object v4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->f:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->g:Lkotlin/Result;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->g:Lkotlin/Result;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->h:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->g:Lkotlin/Result;

    if-nez v3, :cond_2

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_2
    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->h:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->i:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WishlistViewState(inAppDispatch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wishlist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", revealedItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", storeModeStillValid="

    const-string v3, ", shareResult="

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->f:Z

    invoke-static {v0, v2, v3, v1, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->g:Lkotlin/Result;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nativeShareEnabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->h:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rmsCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", contactUsUiModel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

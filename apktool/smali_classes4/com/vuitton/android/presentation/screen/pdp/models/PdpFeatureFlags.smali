.class public final Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;",
        "",
        "",
        "isTwistEnabled",
        "isEcommerceEnabled",
        "isVirtualArAvailable",
        "isArAvailable",
        "isDiamondEnabled",
        "isGeolocationButtonEnabled",
        "isVatIncludedEnabled",
        "isNativeCartAvailable",
        "isBackOrderDisclaimerEnabled",
        "isBackOrderDisclaimerEnhancementEnabled",
        "isBackInStockEnabled",
        "isBackInStockLegalConsentEnabled",
        "isAddToCartCrossSellEnabled",
        "isAICompanionEnabled",
        "<init>",
        "(ZZZZZZZZZZZZZZ)V",
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
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 164
    const/16 v15, 0x3fff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;-><init>(ZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZ)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->a:Z

    .line 151
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->b:Z

    .line 152
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->c:Z

    .line 153
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->d:Z

    .line 154
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->e:Z

    .line 155
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->f:Z

    .line 156
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->g:Z

    .line 157
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->h:Z

    .line 158
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    .line 159
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    .line 160
    iput-boolean p11, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->k:Z

    .line 161
    iput-boolean p12, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->l:Z

    .line 162
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->m:Z

    .line 163
    iput-boolean p14, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v2

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v2

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move v12, v2

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move v13, v2

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move v14, v2

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move/from16 p15, v2

    :goto_d
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    goto :goto_e

    :cond_d
    move/from16 p15, p14

    goto :goto_d

    :goto_e
    invoke-direct/range {p1 .. p15}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;-><init>(ZZZZZZZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->k:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    if-eq p0, p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->k:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->l:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->m:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isEcommerceEnabled="

    const-string v1, ", isVirtualArAvailable="

    const-string v2, "PdpFeatureFlags(isTwistEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isArAvailable="

    const-string v2, ", isDiamondEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isGeolocationButtonEnabled="

    const-string v2, ", isVatIncludedEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNativeCartAvailable="

    const-string v2, ", isBackOrderDisclaimerEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBackOrderDisclaimerEnhancementEnabled="

    const-string v2, ", isBackInStockEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBackInStockLegalConsentEnabled="

    const-string v2, ", isAddToCartCrossSellEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->k:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->l:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isAICompanionEnabled="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->m:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->n:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

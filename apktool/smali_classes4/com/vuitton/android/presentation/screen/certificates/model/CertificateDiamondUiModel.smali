.class public final Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;
.super Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u009b\u0001\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "identifier",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "productName",
        "productImageUrl",
        "engravingIdentifier",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;",
        "status",
        "detailId",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;",
        "productId",
        "carat",
        "",
        "caratDouble",
        "color",
        "clarity",
        "certificateDetailsUrl",
        "",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;",
        "stoneList",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/Double;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    sget-object v7, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->UNLOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->d:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_d

    :cond_d
    move-object/from16 v0, p14

    :goto_d
    const/4 v14, 0x0

    move-object/from16 p1, p0

    move-object/from16 p15, v0

    move-object/from16 p2, v1

    move-object/from16 p14, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p16, v14

    invoke-direct/range {p1 .. p16}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 166
    invoke-static/range {p1 .. p5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static/range {p12 .. p14}, Lpq0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    .line 175
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    .line 176
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    .line 177
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    .line 178
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    .line 179
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    .line 180
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    .line 181
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    .line 182
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->n:Ljava/lang/String;

    .line 183
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    const-string v0, ", sku="

    const-string v1, ", productName="

    const-string v2, "CertificateDiamondUiModel(identifier="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productImageUrl="

    const-string v2, ", engravingIdentifier="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    const-string v2, ", carat="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caratDouble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clarity="

    const-string v2, ", certificateDetailsUrl="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", stoneList="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->n:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, p0}, Lo60;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    invoke-static {p0, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.class public final enum Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EYE_LASH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EYE_LINE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum FACE_CONTOUR_PATTERN:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum HAIR_BAND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum JEWELRY:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum LIPSTICK:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum NAIL:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum RING:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum SKIN_TONE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public static final enum WATCH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field private static final synthetic c:[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v0, "blush"

    const/16 v2, 0x47

    const-string v3, "BLUSH"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v0, "skin_toner"

    const/16 v3, 0x27

    const-string v5, "SKIN_TONE"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v0, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->SKIN_TONE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v0, "eye_shadow"

    const/16 v5, 0x50

    const-string v6, "EYE_SHADOW"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v0, v5}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v5, "EYE_CONTACT"

    const/4 v6, 0x3

    const-string v7, "eye_contact"

    const/16 v8, 0xb

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v5, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v6, "eye_brow"

    const/16 v7, 0x55

    const-string v9, "EYE_BROW"

    const/4 v10, 0x4

    invoke-direct {v5, v9, v10, v6, v7}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v7, "eye_line"

    const/16 v9, 0x57

    const-string v10, "EYE_LINE"

    const/4 v11, 0x5

    invoke-direct {v6, v10, v11, v7, v9}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_LINE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v9, "EYE_LASH"

    const/4 v10, 0x6

    const-string v11, "eye_lash"

    const/16 v12, 0xf

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_LASH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v10, "lipstick"

    const/16 v11, 0x58

    const-string v13, "LIPSTICK"

    const/4 v14, 0x7

    invoke-direct {v9, v13, v14, v10, v11}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->LIPSTICK:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object v10, v9

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v11, "hair_dye"

    const/16 v13, 0x2a

    const-string v14, "HAIR_DYE"

    const/16 v15, 0x8

    invoke-direct {v9, v14, v15, v11, v13}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object v11, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v13, "eye_wear"

    const/16 v14, 0x3f

    const-string v15, "EYE_WEAR"

    const/16 v12, 0x9

    invoke-direct {v10, v15, v12, v13, v14}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object v12, v11

    new-instance v11, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const/16 v13, 0xa

    const-string v14, "hair_band"

    const-string v15, "HAIR_BAND"

    invoke-direct {v11, v15, v13, v14, v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->HAIR_BAND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object v13, v12

    new-instance v12, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v14, "necklace"

    const/16 v15, 0x3c

    const-string v4, "NECKLACE"

    invoke-direct {v12, v4, v8, v14, v15}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object v8, v13

    new-instance v13, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v4, "earrings"

    const/16 v14, 0x5b

    const-string v15, "EARRINGS"

    move-object/from16 v18, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v4, v14}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v14, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v0, "face_contour_pattern"

    const/16 v4, 0x45

    const-string v15, "FACE_CONTOUR_PATTERN"

    move-object/from16 v19, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v0, v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->FACE_CONTOUR_PATTERN:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v15, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v0, "lip_liner"

    const/16 v1, 0x5e

    const-string v4, "LIP_LINER"

    move-object/from16 v20, v2

    const/16 v2, 0xe

    invoke-direct {v15, v4, v2, v0, v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v15, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v1, "NAIL"

    const-string v2, "nail"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "watch"

    const/16 v4, 0x51

    move-object/from16 v16, v0

    const-string v0, "WATCH"

    move-object/from16 v21, v3

    const/16 v3, 0x10

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "bracelet"

    const/16 v3, 0x52

    const-string v4, "BRACELET"

    move-object/from16 v22, v1

    const/16 v1, 0x11

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "ring"

    const/16 v3, 0x53

    const-string v4, "RING"

    move-object/from16 v23, v0

    const/16 v0, 0x12

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->RING:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "jewelry"

    const/16 v3, 0x4e

    const-string v4, "JEWELRY"

    move-object/from16 v24, v1

    const/16 v1, 0x13

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->JEWELRY:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "background"

    const/16 v3, 0x2c

    const-string v4, "BACKGROUND"

    move-object/from16 v25, v0

    const/16 v0, 0x14

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "bronzer"

    const/16 v3, 0x33

    const-string v4, "BRONZER"

    move-object/from16 v26, v1

    const/16 v1, 0x15

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const-string v2, "concealer"

    const/16 v3, 0x34

    const-string v4, "CONCEALER"

    move-object/from16 v27, v0

    const/16 v0, 0x16

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    const/16 v2, 0x17

    const-string v3, ""

    const-string v4, "UNDEFINED"

    move-object/from16 v28, v1

    const/4 v1, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object/from16 v4, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v0

    filled-new-array/range {v1 .. v24}, [Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->c:[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a:Ljava/lang/String;

    iput p4, p0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->values()[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget p0, v4, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->b:I

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->c:[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a:Ljava/lang/String;

    return-object p0
.end method

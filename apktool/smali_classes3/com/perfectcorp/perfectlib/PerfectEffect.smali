.class public final enum Lcom/perfectcorp/perfectlib/PerfectEffect;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/PerfectEffect;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKGROUND:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum BLUSH:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum BRONZER:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum CONCEALER:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum CONTOUR:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EARRINGS:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYEBROW:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYELASHES:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYELINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYESHADOW:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYEWEAR:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYEWEAR_3D:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum EYE_COLOR:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum FACE_ART:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum FOUNDATION:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum HAIR_COLOR:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum HEADBAND:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum HIGHLIGHTER:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum HIGHLIGHTER_AND_CONTOUR:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum JEWELRY:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum LIPSTICK:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum LIP_LINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum MASCARA:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum NAIL:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum NAIL_TIP:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum NECKLACE:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum SKIN_SMOOTH:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum TEETH_WHITENING:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public static final enum WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/PerfectEffect;


# instance fields
.field public final beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

.field final itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v1, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v2, "EYESHADOW"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYESHADOW:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYELASHES:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v4, "EYELASHES"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYELASHES:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v8, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/4 v3, 0x2

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->MASCARA:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v5, "MASCARA"

    invoke-direct {v8, v5, v3, v2, v4}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->MASCARA:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v9, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/4 v2, 0x3

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "EYELINER"

    invoke-direct {v9, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v9, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYELINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v10, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/4 v2, 0x4

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "BLUSH"

    invoke-direct {v10, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v10, Lcom/perfectcorp/perfectlib/PerfectEffect;->BLUSH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v11, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/4 v2, 0x5

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "FOUNDATION"

    invoke-direct {v11, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v11, Lcom/perfectcorp/perfectlib/PerfectEffect;->FOUNDATION:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v12, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/4 v2, 0x6

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "LIPSTICK"

    invoke-direct {v12, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v12, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIPSTICK:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v13, v8

    new-instance v8, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/4 v2, 0x7

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "HAIR_COLOR"

    invoke-direct {v8, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v14, v9

    new-instance v9, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v2, 0x8

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "EYE_COLOR"

    invoke-direct {v9, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v9, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYE_COLOR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v15, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v2, 0x9

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "EYEBROW"

    invoke-direct {v10, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v10, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEBROW:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v16, v11

    new-instance v11, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v2, 0xa

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "FACE_ART"

    invoke-direct {v11, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v11, Lcom/perfectcorp/perfectlib/PerfectEffect;->FACE_ART:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v17, v12

    new-instance v12, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_CUBE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v4, "EYEWEAR"

    const/16 v5, 0xb

    invoke-direct {v12, v4, v5, v2, v3}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v12, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v18, v13

    new-instance v13, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v4, "EYEWEAR_3D"

    const/16 v5, 0xc

    invoke-direct {v13, v4, v5, v2, v3}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v13, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v19, v14

    new-instance v14, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v2, 0xd

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "EARRINGS"

    invoke-direct {v14, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v14, Lcom/perfectcorp/perfectlib/PerfectEffect;->EARRINGS:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v20, v15

    new-instance v15, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v2, 0xe

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_BAND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "HEADBAND"

    invoke-direct {v15, v4, v2, v3, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v15, Lcom/perfectcorp/perfectlib/PerfectEffect;->HEADBAND:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v21, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v25, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v24, v25

    sget-object v25, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v26, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->FaceHighlight:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v22, "HIGHLIGHTER"

    const/16 v23, 0xf

    invoke-direct/range {v21 .. v26}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    sput-object v21, Lcom/perfectcorp/perfectlib/PerfectEffect;->HIGHLIGHTER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v22, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v26, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v27, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->FaceContourPattern:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v23, "CONTOUR"

    move-object/from16 v25, v24

    const/16 v24, 0x10

    invoke-direct/range {v22 .. v27}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v28, v17

    move-object/from16 v17, v22

    move-object/from16 v24, v25

    sput-object v17, Lcom/perfectcorp/perfectlib/PerfectEffect;->CONTOUR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v22, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v26, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v27, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->HighlightContour:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v23, "HIGHLIGHTER_AND_CONTOUR"

    const/16 v24, 0x11

    invoke-direct/range {v22 .. v27}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    sput-object v22, Lcom/perfectcorp/perfectlib/PerfectEffect;->HIGHLIGHTER_AND_CONTOUR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->LipLiner:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "LIP_LINER"

    const/16 v4, 0x12

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v23, v19

    move-object/from16 v19, v2

    sput-object v19, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIP_LINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "FUN_STICKER"

    const/16 v4, 0x13

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v24, v20

    move-object/from16 v20, v2

    sput-object v20, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Background:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "BACKGROUND"

    const/16 v4, 0x14

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v25, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v2

    sput-object v21, Lcom/perfectcorp/perfectlib/PerfectEffect;->BACKGROUND:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Bronzer:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "BRONZER"

    const/16 v4, 0x15

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v26, v18

    move-object/from16 v18, v22

    move-object/from16 v22, v2

    sput-object v22, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRONZER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Concealer:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "CONCEALER"

    const/16 v4, 0x16

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v27, v23

    move-object/from16 v23, v2

    sput-object v23, Lcom/perfectcorp/perfectlib/PerfectEffect;->CONCEALER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v3, 0x17

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v5, "SKIN_SMOOTH"

    invoke-direct {v2, v5, v3, v4, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->SKIN_SMOOTH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v3, Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v4, 0x18

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v7, "TEETH_WHITENING"

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->TEETH_WHITENING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v29, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v32, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v33, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NAIL_POLISH:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v34, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Nails:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v30, "NAIL"

    const/16 v31, 0x19

    invoke-direct/range {v29 .. v34}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    sput-object v29, Lcom/perfectcorp/perfectlib/PerfectEffect;->NAIL:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v30, Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v33, v32

    const/16 v32, 0x1a

    move-object/from16 v35, v34

    sget-object v34, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NAIL_TIP:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v31, "NAIL_TIP"

    invoke-direct/range {v30 .. v35}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    sput-object v30, Lcom/perfectcorp/perfectlib/PerfectEffect;->NAIL_TIP:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object v4, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Watch:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    move-object/from16 v31, v3

    const-string v3, "WATCH"

    move-object/from16 v32, v4

    const/16 v4, 0x1b

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v33, v28

    move-object/from16 v28, v2

    sput-object v28, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Bracelet:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "BRACELET"

    const/16 v4, 0x1c

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v34, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v2

    sput-object v29, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Ring:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "RING"

    const/16 v4, 0x1d

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v35, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v2

    sput-object v30, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->JEWELRY:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Jewelry:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "JEWELRY"

    const/16 v4, 0x1e

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    move-object/from16 v36, v25

    move-object/from16 v25, v31

    move-object/from16 v31, v2

    sput-object v31, Lcom/perfectcorp/perfectlib/PerfectEffect;->JEWELRY:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Necklace:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "NECKLACE"

    const/16 v4, 0x1f

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->NECKLACE:Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-object/from16 v5, v24

    move-object/from16 v24, v32

    move-object/from16 v7, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    move-object/from16 v32, v2

    move-object v2, v0

    filled-new-array/range {v1 .. v32}, [Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->a:[Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V
    .locals 6

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getEventFeature()Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/PerfectEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    return-void
.end method

.method public static of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 6

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYELASHES:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYELASHES:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->MASCARA:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_1
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART_LAYER_2:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->FACE_ART:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_2
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_4

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectEffect;->values()[Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v5, p1, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectEffect;->values()[Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v4, p0, :cond_5

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v4, p1, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "Unsupported mode="

    const-string v1, ", itemSubType="

    invoke-static {v0, p0, v1, p1}, Lb21;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->a:[Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/PerfectEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object v0
.end method

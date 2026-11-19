.class public final enum Lcom/perfectcorp/perfectlib/ReshapeEffect;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ReshapeEffect;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHEEKBONE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum CHIN_LENGTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum CHIN_SHAPE_LEFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum CHIN_SHAPE_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum CHIN_SHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_ANGLE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_DISTANCE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_HEIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_SIZE_LEFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_SIZE_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_SIZE_RIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum EYE_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum FACE_SHAPE_LEFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum FACE_SHAPE_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum FACE_SHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum FACE_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum JAW:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum LIP_HEIGHT_LOWER:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum LIP_HEIGHT_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum LIP_HEIGHT_UPPER:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum LIP_PEAK:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum LIP_SIZE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum LIP_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum NOSE_BRIDGE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum NOSE_LIFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum NOSE_SIZE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum NOSE_TIP:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum NOSE_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field public static final enum NOSE_WING:Lcom/perfectcorp/perfectlib/ReshapeEffect;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/ReshapeEffect;


# instance fields
.field final beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x0

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v3, "FACE_SHAPE_OVERALL"

    invoke-direct {v1, v3, v0, v2}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->FACE_SHAPE_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x1

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE_LEFT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "FACE_SHAPE_LEFT"

    invoke-direct {v2, v4, v0, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ReshapeEffect;->FACE_SHAPE_LEFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v3, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x2

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v5, "FACE_SHAPE_RIGHT"

    invoke-direct {v3, v5, v0, v4}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ReshapeEffect;->FACE_SHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v4, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x3

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v6, "FACE_WIDTH"

    invoke-direct {v4, v6, v0, v5}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/ReshapeEffect;->FACE_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v5, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x4

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_JAW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v7, "JAW"

    invoke-direct {v5, v7, v0, v6}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v5, Lcom/perfectcorp/perfectlib/ReshapeEffect;->JAW:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v6, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x5

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CHEEKBONE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v8, "CHEEKBONE"

    invoke-direct {v6, v8, v0, v7}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v6, Lcom/perfectcorp/perfectlib/ReshapeEffect;->CHEEKBONE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v7, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x6

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_LENGTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v9, "CHIN_LENGTH"

    invoke-direct {v7, v9, v0, v8}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v7, Lcom/perfectcorp/perfectlib/ReshapeEffect;->CHIN_LENGTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v8, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/4 v0, 0x7

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_RESHAPE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v10, "CHIN_SHAPE_OVERALL"

    invoke-direct {v8, v10, v0, v9}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v8, Lcom/perfectcorp/perfectlib/ReshapeEffect;->CHIN_SHAPE_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v9, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0x8

    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_RESHAPE_LEFT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v11, "CHIN_SHAPE_LEFT"

    invoke-direct {v9, v11, v0, v10}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v9, Lcom/perfectcorp/perfectlib/ReshapeEffect;->CHIN_SHAPE_LEFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v10, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0x9

    sget-object v11, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_RESHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v12, "CHIN_SHAPE_RIGHT"

    invoke-direct {v10, v12, v0, v11}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v10, Lcom/perfectcorp/perfectlib/ReshapeEffect;->CHIN_SHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v11, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0xa

    sget-object v12, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v13, "NOSE_SIZE"

    invoke-direct {v11, v13, v0, v12}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v11, Lcom/perfectcorp/perfectlib/ReshapeEffect;->NOSE_SIZE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v12, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0xb

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_LENGTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v14, "NOSE_LIFT"

    invoke-direct {v12, v14, v0, v13}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v12, Lcom/perfectcorp/perfectlib/ReshapeEffect;->NOSE_LIFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v13, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0xc

    sget-object v14, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_BRIDGE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v15, "NOSE_BRIDGE"

    invoke-direct {v13, v15, v0, v14}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v13, Lcom/perfectcorp/perfectlib/ReshapeEffect;->NOSE_BRIDGE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v14, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0xd

    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_TIP:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v16, v1

    const-string v1, "NOSE_TIP"

    invoke-direct {v14, v1, v0, v15}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v14, Lcom/perfectcorp/perfectlib/ReshapeEffect;->NOSE_TIP:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v15, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v0, 0xe

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_WING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v17, v2

    const-string v2, "NOSE_WING"

    invoke-direct {v15, v2, v0, v1}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v15, Lcom/perfectcorp/perfectlib/ReshapeEffect;->NOSE_WING:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v1, 0xf

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v18, v3

    const-string v3, "NOSE_WIDTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->NOSE_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x10

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v19, v0

    const-string v0, "LIP_SIZE"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->LIP_SIZE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x11

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v20, v1

    const-string v1, "LIP_WIDTH"

    invoke-direct {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->LIP_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x12

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_HEIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v21, v0

    const-string v0, "LIP_HEIGHT_OVERALL"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->LIP_HEIGHT_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x13

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_HEIGHT_UPPER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v22, v1

    const-string v1, "LIP_HEIGHT_UPPER"

    invoke-direct {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->LIP_HEIGHT_UPPER:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x14

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_HEIGHT_LOWER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v23, v0

    const-string v0, "LIP_HEIGHT_LOWER"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->LIP_HEIGHT_LOWER:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x15

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_PEAK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v24, v1

    const-string v1, "LIP_PEAK"

    invoke-direct {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->LIP_PEAK:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x16

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v25, v0

    const-string v0, "EYE_SIZE_OVERALL"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_SIZE_OVERALL:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x17

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE_LEFT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v26, v1

    const-string v1, "EYE_SIZE_LEFT"

    invoke-direct {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_SIZE_LEFT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x18

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE_RIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v27, v0

    const-string v0, "EYE_SIZE_RIGHT"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_SIZE_RIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x19

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v28, v1

    const-string v1, "EYE_WIDTH"

    invoke-direct {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_WIDTH:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x1a

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_HEIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v29, v0

    const-string v0, "EYE_HEIGHT"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_HEIGHT:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x1b

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_DISTANCE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v30, v1

    const-string v1, "EYE_DISTANCE"

    invoke-direct {v0, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_DISTANCE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    const/16 v2, 0x1c

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SLANT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-object/from16 v31, v0

    const-string v0, "EYE_ANGLE"

    invoke-direct {v1, v0, v2, v3}, Lcom/perfectcorp/perfectlib/ReshapeEffect;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->EYE_ANGLE:Lcom/perfectcorp/perfectlib/ReshapeEffect;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v29, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    move-object/from16 v25, v28

    move-object/from16 v28, v31

    filled-new-array/range {v1 .. v29}, [Lcom/perfectcorp/perfectlib/ReshapeEffect;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->a:[Lcom/perfectcorp/perfectlib/ReshapeEffect;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ReshapeEffect;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ReshapeEffect;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ReshapeEffect;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->a:[Lcom/perfectcorp/perfectlib/ReshapeEffect;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ReshapeEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ReshapeEffect;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CHEEKBONE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_JAW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/perfectcorp/common/utility/ValueChecker;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result p0

    const-string p1, " isn\'t in -100~100"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/perfectcorp/common/utility/ValueChecker;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result p0

    const-string p1, " isn\'t in 0~100"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    return-void
.end method

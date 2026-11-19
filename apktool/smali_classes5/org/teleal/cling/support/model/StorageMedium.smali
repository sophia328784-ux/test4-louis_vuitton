.class public final enum Lorg/teleal/cling/support/model/StorageMedium;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_DA:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_R:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_RW:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DAT:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DV:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_MINUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_PLUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_R:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_RAM:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_VIDEO:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum D_VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum HDD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum HI8:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum LD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MD_PICTURE:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MICRO_MV:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MINI_DV:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum NETWORK:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum NONE:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum SACD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum S_VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum UNKNOWN:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VHSC:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VIDEO8:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VIDEO_CD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum W_VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field private static byProtocolString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/StorageMedium;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v0, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->UNKNOWN:Lorg/teleal/cling/support/model/StorageMedium;

    move v0, v2

    new-instance v2, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v4, "DV"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DV:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v4, Lorg/teleal/cling/support/model/StorageMedium;

    const/4 v5, 0x2

    const-string v6, "MINI-DV"

    const-string v7, "MINI_DV"

    invoke-direct {v4, v7, v5, v6}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/support/model/StorageMedium;->MINI_DV:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v5, v4

    new-instance v4, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v6, "VHS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/support/model/StorageMedium;->VHS:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v6, v5

    new-instance v5, Lorg/teleal/cling/support/model/StorageMedium;

    const/4 v7, 0x4

    const-string v8, "W-VHS"

    const-string v9, "W_VHS"

    invoke-direct {v5, v9, v7, v8}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/support/model/StorageMedium;->W_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v7, v6

    new-instance v6, Lorg/teleal/cling/support/model/StorageMedium;

    const/4 v8, 0x5

    const-string v9, "S-VHS"

    const-string v10, "S_VHS"

    invoke-direct {v6, v10, v8, v9}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/support/model/StorageMedium;->S_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v8, v7

    new-instance v7, Lorg/teleal/cling/support/model/StorageMedium;

    const/4 v9, 0x6

    const-string v10, "D-VHS"

    const-string v11, "D_VHS"

    invoke-direct {v7, v11, v9, v10}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/teleal/cling/support/model/StorageMedium;->D_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v9, v8

    new-instance v8, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v10, "VHSC"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/teleal/cling/support/model/StorageMedium;->VHSC:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v10, v9

    new-instance v9, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v11, "VIDEO8"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/teleal/cling/support/model/StorageMedium;->VIDEO8:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v11, v10

    new-instance v10, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v12, "HI8"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/teleal/cling/support/model/StorageMedium;->HI8:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v12, v11

    new-instance v11, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v13, 0xa

    const-string v14, "CD-ROM"

    const-string v15, "CD_ROM"

    invoke-direct {v11, v15, v13, v14}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/teleal/cling/support/model/StorageMedium;->CD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v13, v12

    new-instance v12, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v14, 0xb

    const-string v15, "CD-DA"

    const-string v0, "CD_DA"

    invoke-direct {v12, v0, v14, v15}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/teleal/cling/support/model/StorageMedium;->CD_DA:Lorg/teleal/cling/support/model/StorageMedium;

    move-object v0, v13

    new-instance v13, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v14, 0xc

    const-string v15, "CD-R"

    const-string v3, "CD_R"

    invoke-direct {v13, v3, v14, v15}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/teleal/cling/support/model/StorageMedium;->CD_R:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v14, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v3, 0xd

    const-string v15, "CD-RW"

    move-object/from16 v18, v0

    const-string v0, "CD_RW"

    invoke-direct {v14, v0, v3, v15}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/teleal/cling/support/model/StorageMedium;->CD_RW:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v15, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v0, 0xe

    const-string v3, "VIDEO-CD"

    move-object/from16 v19, v1

    const-string v1, "VIDEO_CD"

    invoke-direct {v15, v1, v0, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lorg/teleal/cling/support/model/StorageMedium;->VIDEO_CD:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "SACD"

    const/16 v3, 0xf

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->SACD:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x10

    const-string v3, "M-AUDIO"

    move-object/from16 v21, v0

    const-string v0, "MD_AUDIO"

    invoke-direct {v1, v0, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->MD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x11

    const-string v3, "MD-PICTURE"

    move-object/from16 v22, v1

    const-string v1, "MD_PICTURE"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->MD_PICTURE:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x12

    const-string v3, "DVD-ROM"

    move-object/from16 v23, v0

    const-string v0, "DVD_ROM"

    invoke-direct {v1, v0, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->DVD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x13

    const-string v3, "DVD-VIDEO"

    move-object/from16 v24, v1

    const-string v1, "DVD_VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_VIDEO:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x14

    const-string v3, "DVD-R"

    move-object/from16 v25, v0

    const-string v0, "DVD_R"

    invoke-direct {v1, v0, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->DVD_R:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x15

    const-string v3, "DVD+RW"

    move-object/from16 v26, v1

    const-string v1, "DVD_PLUS_RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_PLUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x16

    const-string v3, "DVD-RW"

    move-object/from16 v27, v0

    const-string v0, "DVD_MINUS_RW"

    invoke-direct {v1, v0, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->DVD_MINUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x17

    const-string v3, "DVD-RAM"

    move-object/from16 v28, v1

    const-string v1, "DVD_RAM"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_RAM:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v2, 0x18

    const-string v3, "DVD-AUDIO"

    move-object/from16 v29, v0

    const-string v0, "DVD_AUDIO"

    invoke-direct {v1, v0, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->DVD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v2, "DAT"

    const/16 v3, 0x19

    move-object/from16 v30, v1

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DAT:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v2, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "LD"

    move-object/from16 v17, v0

    const/16 v0, 0x1a

    invoke-direct {v2, v3, v0, v1}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/model/StorageMedium;->LD:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "HDD"

    move-object/from16 v31, v2

    const/16 v2, 0x1b

    invoke-direct {v0, v3, v2, v1}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->HDD:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v2, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "MICRO_MV"

    const/16 v1, 0x1c

    invoke-direct {v2, v3, v1, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/model/StorageMedium;->MICRO_MV:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "NETWORK"

    move-object/from16 v33, v0

    const/16 v0, 0x1d

    move-object/from16 v34, v2

    const/4 v2, 0x0

    invoke-direct {v1, v3, v0, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->NETWORK:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "NONE"

    move-object/from16 v32, v1

    const/16 v1, 0x1e

    invoke-direct {v0, v3, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "NOT_IMPLEMENTED"

    move-object/from16 v35, v0

    const/16 v0, 0x1f

    invoke-direct {v1, v3, v0, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v3, "VENDOR_SPECIFIC"

    move-object/from16 v36, v1

    const/16 v1, 0x20

    invoke-direct {v0, v3, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

    move-object/from16 v3, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v16, v21

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v30, v32

    move-object/from16 v28, v33

    move-object/from16 v29, v34

    move-object/from16 v32, v36

    move-object/from16 v33, v0

    move-object/from16 v26, v17

    move-object/from16 v17, v22

    move-object/from16 v22, v27

    move-object/from16 v27, v31

    move-object/from16 v31, v35

    const/4 v0, 0x0

    filled-new-array/range {v1 .. v33}, [Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v1

    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->$VALUES:[Lorg/teleal/cling/support/model/StorageMedium;

    new-instance v1, Lorg/teleal/cling/support/model/StorageMedium$1;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/teleal/cling/support/model/StorageMedium;->values()[Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, v4, Lorg/teleal/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lorg/teleal/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-nez p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lorg/teleal/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/StorageMedium;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/teleal/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/model/StorageMedium;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->$VALUES:[Lorg/teleal/cling/support/model/StorageMedium;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/model/StorageMedium;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object p0
.end method

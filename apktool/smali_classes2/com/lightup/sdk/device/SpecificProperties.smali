.class public Lcom/lightup/sdk/device/SpecificProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CHECKSUM_KEY_SUFFIX:Ljava/lang/String; = null

.field public static CLOUD_STORAGE_KEY_SUFFIX:Ljava/lang/String; = null

.field public static final DATA_UPDATE_PROGRAM_PAGE_SIZE:I = 0x100

.field public static final DATA_UPDATE_STEP_TIMEOUT:I = 0x2710

.field public static final DATA_UPLOAD_ADDRESS:I = 0x89000

.field public static final DATA_UPLOAD_PROGRAM_PAGE_SIZE:I = 0x100

.field public static final DATA_UPLOAD_STEP_TIMEOUT:I = 0x2710

.field public static final KEEPALL_ADMIN_KEY:Ljava/lang/String; = "42633eab2bb146e19031e6b65a47c9b7"

.field public static final KEEPALL_TOPOLOGY_ID:Ljava/lang/String; = "5ab65c1930bb4c04b36fea82fbe3e4d7"

.field public static final KEEP_ALL_AVAILABLE_MODE:[Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static LOCAL_BINARY_STORAGE_KEY_SUFFIX:Ljava/lang/String; = null

.field public static LOCAL_STORAGE_KEY_SUFFIX:Ljava/lang/String; = null

.field public static final NB_RESERVED_TRIGGERS:I = 0x6

.field public static final PRODUCT_ID_KEEP_ALL:[B

.field public static final PRODUCT_ID_TRUNK:[B

.field public static final PRODUCT_ID_X408:[B

.field public static final RESERVED_ANIMATION_IDS:[Ljava/lang/String;

.field public static final SCAN_RECORD_ADDITIONAL_INFORMATION_SIZE:I = 0x2

.field public static final SCAN_RECORD_SERIAL_NUMBER_SIZE:I = 0x8

.field public static final SCAN_RECORD_TWIN_POSITION:I = 0x23

.field public static final SCAN_RECORD_TWIN_SIZE:I = 0x8

.field public static final TRUNK_AVAILABLE_MODE:[Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final X408_ADMIN_KEY:Ljava/lang/String; = "be735c4894a94265a83883da909058e8"

.field public static final X408_TOPOLOGY_ID:Ljava/lang/String; = "cc682e24221d4223acfa235f93169f61"

.field public static final outOfProdAnimation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final outOfProdAnimationFileKeepAll:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final outOfProdAnimationFileTrunk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final outOfProdAnimationFileX408:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final presetAnimationsPriorityFour:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final presetAnimationsPriorityOne:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final presetAnimationsPriorityThree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final presetAnimationsPriorityTwo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final releaseFoldersId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final testFoldersId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final topologiesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_KEEP_ALL:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_X408:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_TRUNK:[B

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceMode;->STANDARD:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceMode;->ECO:Lcom/lightup/sdk/device/enums/DeviceMode;

    filled-new-array {v1, v2}, [Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v3

    sput-object v3, Lcom/lightup/sdk/device/SpecificProperties;->TRUNK_AVAILABLE_MODE:[Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceMode;->WALKING:Lcom/lightup/sdk/device/enums/DeviceMode;

    filled-new-array {v1, v2, v3}, [Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->KEEP_ALL_AVAILABLE_MODE:[Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "_local_animation_file"

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->LOCAL_STORAGE_KEY_SUFFIX:Ljava/lang/String;

    const-string v1, "_local_animation_binary_file"

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->LOCAL_BINARY_STORAGE_KEY_SUFFIX:Ljava/lang/String;

    const-string v1, "_cloud_animation_file"

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->CLOUD_STORAGE_KEY_SUFFIX:Ljava/lang/String;

    const-string v1, "_local_checksum"

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->CHECKSUM_KEY_SUFFIX:Ljava/lang/String;

    const-string v6, "5d07570dad397713fb07bcf3"

    const-string v7, "5d075b28ad397713fb07bcf4"

    const-string v2, "5caef5784b759444d5eb23ac"

    const-string v3, "5caf3d494b759444d5eb23b0"

    const-string v4, "5caef6974b759444d5eb23ad"

    const-string v5, "5caef6a84b759444d5eb23ae"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->RESERVED_ANIMATION_IDS:[Ljava/lang/String;

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$1;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/lightup/sdk/device/SpecificProperties$1$1;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v4, "5cf92681ad397713fb07bcf1"

    const-string v5, "Ping"

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v3, "0408"

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lightup/sdk/device/SpecificProperties$1$2;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v8, "5d075b28ad397713fb07bcf4"

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v4, "0050"

    invoke-virtual {v1, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lightup/sdk/device/SpecificProperties$1$3;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v9, "5e0da3a6ad60590ba55e0423"

    invoke-direct {v8, v9, v5, v6, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v5, "0051"

    invoke-virtual {v1, v5, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->presetAnimationsPriorityOne:Ljava/util/Map;

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$2;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/lightup/sdk/device/SpecificProperties$2$1;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v8, "5cf91a86ad397713fb07bcec"

    const-string v9, "Pairing"

    const/4 v10, 0x1

    invoke-direct {v6, v8, v9, v10, v10}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v8, "5d288817140b450cf6788afb"

    const-string v11, "OTA"

    invoke-direct {v6, v8, v11, v0, v10}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lightup/sdk/device/SpecificProperties$2$2;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v8, "5caef5784b759444d5eb23ac"

    invoke-direct {v6, v8, v9, v10, v10}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v8, "5caef6974b759444d5eb23ad"

    invoke-direct {v6, v8, v11, v0, v10}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v6, "5d07570dad397713fb07bcf3"

    const-string v8, "Power On"

    invoke-direct {v0, v6, v8, v7, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$2$3;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lcom/lightup/sdk/device/SpecificProperties;->presetAnimationsPriorityTwo:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$3;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$3$1;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v6, "5d2887e6140b450cf6788af8"

    invoke-direct {v2, v6, v8, v7, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v6, "Charging"

    const/4 v8, 0x3

    const-string v9, "5d2887f1140b450cf6788af9"

    invoke-direct {v2, v9, v6, v8, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v6, "5d2887fc140b450cf6788afa"

    const-string v8, "Full Charge"

    const/4 v9, 0x4

    invoke-direct {v2, v6, v8, v9, v7}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$3$2;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$3$3;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->presetAnimationsPriorityThree:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$4;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$4$1;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v6, "Rainbow"

    const/4 v7, 0x6

    const-string v8, "5ef4aaf73122df4546cc7ffb"

    invoke-direct {v2, v8, v6, v7, v10}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->presetAnimationsPriorityFour:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$5;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cc682e24221d4223acfa235f93169f61"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5ab65c1930bb4c04b36fea82fbe3e4d7"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "7064ca7c6984469da2dcdc7e528df588"

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->topologiesId:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$6;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "5d4440e45e30d3739a84a6ca"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5d36d189fafb2b460bae927e"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5e0d9aabad60590ba55e041f"

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->releaseFoldersId:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$7;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "5d4440dd5e30d3739a84a6c9"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5d394ed5fafb2b460bae9280"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5e0d9a82ad60590ba55e041e"

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->testFoldersId:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$8;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$8$1;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v10, "2020-01-21T14:27:40.570Z"

    const-string v11, "https://lv-images.lucielabs.com/PRISM2.jpg"

    const-string v7, "5ef4aaf73122df4546cc7ffb"

    const-string v8, "PRISM"

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v11, "2020-01-21T14:28:39.806Z"

    const-string v12, "https://lv-images.lucielabs.com/ICEBLUE.jpg"

    const-string v8, "5db1d47973071f0a2682e387"

    const-string v9, "ICEBLUE"

    const/4 v10, 0x7

    invoke-direct/range {v7 .. v12}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v12, "2020-01-21T14:28:39.806Z"

    const-string v13, "https://lv-images.lucielabs.com/ICEBLUE.jpg"

    const-string v9, "5ef4bdf23122df4546cc8000"

    const-string v10, "WARM"

    const/16 v11, 0x8

    invoke-direct/range {v8 .. v13}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v13, "2020-01-21T14:28:39.806Z"

    const-string v14, "https://lv-images.lucielabs.com/ICEBLUE.jpg"

    const-string v10, "5ef9e7073122df4546cc8002"

    const-string v11, "COLD"

    const/16 v12, 0x9

    invoke-direct/range {v9 .. v14}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$8$2;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v10, "2019-07-25T07:45:13.671Z"

    const-string v11, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v7, "5d36d1b2fafb2b460bae927f"

    const-string v8, "PRISM"

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v11, "2019-07-25T07:45:13.671Z"

    const-string v12, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v8, "5ee742d23122df4546cc7fe8"

    const-string v9, "RED DOOR"

    const/4 v10, 0x7

    invoke-direct/range {v7 .. v12}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v12, "2019-07-25T07:45:13.671Z"

    const-string v13, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v9, "5eeb83603122df4546cc7ff0"

    const-string v10, "CLOUDS"

    const/16 v11, 0x8

    invoke-direct/range {v8 .. v13}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v13, "2019-07-25T07:45:13.671Z"

    const-string v14, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v10, "62e78ee8d40fb5256dcfecfd"

    const-string v11, "PAINT CAN PURPLE"

    const/16 v12, 0x9

    invoke-direct/range {v9 .. v14}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v14, "2019-07-25T07:45:13.671Z"

    const-string v15, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v11, "62e7920bd40fb5256dd938f6"

    const-string v12, "PAINT CAN RED"

    const/16 v13, 0xa

    invoke-direct/range {v10 .. v15}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v15, "2019-07-25T07:45:13.671Z"

    const-string v16, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v12, "62e7932ed40fb5256ddc756b"

    const-string v13, "PAINT CAN GREEN"

    const/16 v14, 0xb

    invoke-direct/range {v11 .. v16}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v16, "2019-07-25T07:45:13.671Z"

    const-string v17, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v13, "62e793c7d40fb5256dde18fe"

    const-string v14, "PAINT CAN YELLOW"

    const/16 v15, 0xc

    invoke-direct/range {v12 .. v17}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v10, "2019-07-25T07:45:13.671Z"

    const-string v11, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v7, "62e79452d40fb5256ddfb809"

    const-string v8, "PAINT CAN TURQUOISE"

    const/16 v9, 0xd

    invoke-direct/range {v6 .. v11}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v11, "2019-07-25T07:45:13.671Z"

    const-string v12, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v8, "62e79506d40fb5256de1c20b"

    const-string v9, "PAINT CAN ORANGE"

    const/16 v10, 0xe

    invoke-direct/range {v7 .. v12}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v12, "2019-07-25T07:45:13.671Z"

    const-string v13, "https://lv-images.lucielabs.com/PRISM.jpg"

    const-string v9, "630dc538f72d11fe046561a7"

    const-string v10, "PAINT CAN RAINBOW"

    const/16 v11, 0xf

    invoke-direct/range {v8 .. v13}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/lightup/sdk/device/SpecificProperties$8$3;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/lightup/sdk/animation/CreatorProject;

    const-string v10, "2019-07-25T07:45:13.671Z"

    const-string v11, "https://lv-images.lucielabs.com/rainbow-50.jpg"

    const-string v7, "5d394f0dfafb2b460bae9281"

    const-string v8, "Rainbow_50_fps"

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/lightup/sdk/animation/CreatorProject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimation:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$9;

    invoke-direct {v0}, Lcom/lightup/sdk/device/SpecificProperties$9;-><init>()V

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileX408:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$10;

    invoke-direct {v0}, Lcom/lightup/sdk/device/SpecificProperties$10;-><init>()V

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileKeepAll:Ljava/util/Map;

    new-instance v0, Lcom/lightup/sdk/device/SpecificProperties$11;

    invoke-direct {v0}, Lcom/lightup/sdk/device/SpecificProperties$11;-><init>()V

    sput-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileTrunk:Ljava/util/Map;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x50t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x8t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x51t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

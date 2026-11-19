.class public final enum Lcom/google/android/filament/VertexBuffer$VertexAttribute;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/VertexBuffer$VertexAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

.field public static final enum UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "TANGENTS"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "COLOR"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v4, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "UV0"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v5, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "UV1"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "BONE_INDICES"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v7, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "BONE_WEIGHTS"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v8, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "UNUSED"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UNUSED:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v9, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM0"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v10, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM1"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v11, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM2"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v12, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM3"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v13, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM4"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM4:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v14, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM5"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM5:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v15, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v0, "CUSTOM6"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM6:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    new-instance v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const-string v1, "CUSTOM7"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->CUSTOM7:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    const-class v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;
    .locals 1

    sget-object v0, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->$VALUES:[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual {v0}, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-object v0
.end method

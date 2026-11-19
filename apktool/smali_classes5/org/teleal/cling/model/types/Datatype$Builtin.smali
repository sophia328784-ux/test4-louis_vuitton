.class public final enum Lorg/teleal/cling/model/types/Datatype$Builtin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/types/Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Builtin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/types/Datatype$Builtin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum BIN_BASE64:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum BIN_HEX:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum CHAR:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum DATE:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum DATETIME:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum DATETIME_TZ:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum FIXED144:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum FLOAT:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum I1:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum I2:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum I2_SHORT:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum I4:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum INT:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum NUMBER:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum R4:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum R8:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum TIME:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum TIME_TZ:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum UI1:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum UI2:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum UI4:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum URI:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field public static final enum UUID:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/types/Datatype$Builtin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private datatype:Lorg/teleal/cling/model/types/Datatype;

.field private descriptorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v1, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerOneByteDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/UnsignedIntegerOneByteDatatype;-><init>()V

    const-string v2, "ui1"

    const-string v3, "UI1"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI1:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v2, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    const-string v3, "ui2"

    const-string v5, "UI2"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v2, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI2:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v3, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytesDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytesDatatype;-><init>()V

    const-string v5, "ui4"

    const-string v7, "UI4"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v5, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    move v0, v4

    new-instance v4, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v5, Lorg/teleal/cling/model/types/IntegerDatatype;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/types/IntegerDatatype;-><init>(I)V

    const/4 v6, 0x3

    const-string v7, "i1"

    const-string v9, "I1"

    invoke-direct {v4, v9, v6, v7, v5}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->I1:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v5, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v6, Lorg/teleal/cling/model/types/IntegerDatatype;

    invoke-direct {v6, v8}, Lorg/teleal/cling/model/types/IntegerDatatype;-><init>(I)V

    const-string v7, "I2"

    const/4 v8, 0x4

    const-string v9, "i2"

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v5, Lorg/teleal/cling/model/types/Datatype$Builtin;->I2:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v6, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v7, Lorg/teleal/cling/model/types/ShortDatatype;

    invoke-direct {v7}, Lorg/teleal/cling/model/types/ShortDatatype;-><init>()V

    const-string v10, "I2_SHORT"

    const/4 v11, 0x5

    invoke-direct {v6, v10, v11, v9, v7}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v6, Lorg/teleal/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v7, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v9, Lorg/teleal/cling/model/types/IntegerDatatype;

    invoke-direct {v9, v8}, Lorg/teleal/cling/model/types/IntegerDatatype;-><init>(I)V

    const/4 v10, 0x6

    const-string v11, "i4"

    const-string v12, "I4"

    invoke-direct {v7, v12, v10, v11, v9}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v7, Lorg/teleal/cling/model/types/Datatype$Builtin;->I4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v9, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v10, Lorg/teleal/cling/model/types/IntegerDatatype;

    invoke-direct {v10, v8}, Lorg/teleal/cling/model/types/IntegerDatatype;-><init>(I)V

    const/4 v8, 0x7

    const-string v11, "int"

    const-string v12, "INT"

    invoke-direct {v9, v12, v8, v11, v10}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v9, Lorg/teleal/cling/model/types/Datatype$Builtin;->INT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-object v8, v9

    new-instance v9, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v10, Lorg/teleal/cling/model/types/FloatDatatype;

    invoke-direct {v10}, Lorg/teleal/cling/model/types/FloatDatatype;-><init>()V

    const/16 v11, 0x8

    const-string v12, "r4"

    const-string v13, "R4"

    invoke-direct {v9, v13, v11, v12, v10}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v9, Lorg/teleal/cling/model/types/Datatype$Builtin;->R4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v10, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v11, Lorg/teleal/cling/model/types/DoubleDatatype;

    invoke-direct {v11}, Lorg/teleal/cling/model/types/DoubleDatatype;-><init>()V

    const/16 v12, 0x9

    const-string v13, "r8"

    const-string v14, "R8"

    invoke-direct {v10, v14, v12, v13, v11}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v10, Lorg/teleal/cling/model/types/Datatype$Builtin;->R8:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v11, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v12, Lorg/teleal/cling/model/types/DoubleDatatype;

    invoke-direct {v12}, Lorg/teleal/cling/model/types/DoubleDatatype;-><init>()V

    const/16 v13, 0xa

    const-string v14, "number"

    const-string v15, "NUMBER"

    invoke-direct {v11, v15, v13, v14, v12}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v11, Lorg/teleal/cling/model/types/Datatype$Builtin;->NUMBER:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v12, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v13, Lorg/teleal/cling/model/types/DoubleDatatype;

    invoke-direct {v13}, Lorg/teleal/cling/model/types/DoubleDatatype;-><init>()V

    const/16 v14, 0xb

    const-string v15, "fixed.14.4"

    const-string v0, "FIXED144"

    invoke-direct {v12, v0, v14, v15, v13}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v12, Lorg/teleal/cling/model/types/Datatype$Builtin;->FIXED144:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v13, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/DoubleDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/DoubleDatatype;-><init>()V

    const/16 v14, 0xc

    const-string v15, "float"

    move-object/from16 v17, v1

    const-string v1, "FLOAT"

    invoke-direct {v13, v1, v14, v15, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v13, Lorg/teleal/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v14, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/CharacterDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/CharacterDatatype;-><init>()V

    const/16 v1, 0xd

    const-string v15, "char"

    move-object/from16 v18, v2

    const-string v2, "CHAR"

    invoke-direct {v14, v2, v1, v15, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v14, Lorg/teleal/cling/model/types/Datatype$Builtin;->CHAR:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v15, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/StringDatatype;

    invoke-direct {v0}, Lorg/teleal/cling/model/types/StringDatatype;-><init>()V

    const/16 v1, 0xe

    const-string v2, "string"

    move-object/from16 v19, v3

    const-string v3, "STRING"

    invoke-direct {v15, v3, v1, v2, v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v15, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/teleal/cling/model/types/DateTimeDatatype;

    const-string v2, "yyyy-MM-dd"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/teleal/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xf

    move-object/from16 v20, v4

    const-string v4, "date"

    move-object/from16 v21, v5

    const-string v5, "DATE"

    invoke-direct {v0, v5, v3, v4, v1}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->DATE:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v3, Lorg/teleal/cling/model/types/DateTimeDatatype;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lorg/teleal/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    move-object/from16 v22, v0

    const-string v0, "dateTime"

    move-object/from16 v23, v6

    const-string v6, "DATETIME"

    invoke-direct {v1, v6, v5, v0, v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v3, Lorg/teleal/cling/model/types/DateTimeDatatype;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v5}, Lorg/teleal/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    const-string v4, "dateTime.tz"

    const-string v5, "DATETIME_TZ"

    invoke-direct {v0, v5, v2, v4, v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->DATETIME_TZ:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v2, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v3, Lorg/teleal/cling/model/types/DateTimeDatatype;

    const-string v4, "HH:mm:ss"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lorg/teleal/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x12

    const-string v6, "time"

    move-object/from16 v24, v0

    const-string v0, "TIME"

    invoke-direct {v2, v0, v5, v6, v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v2, Lorg/teleal/cling/model/types/Datatype$Builtin;->TIME:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v3, Lorg/teleal/cling/model/types/DateTimeDatatype;

    const-string v5, "HH:mm:ssZ"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x13

    const-string v5, "time.tz"

    const-string v6, "TIME_TZ"

    invoke-direct {v0, v6, v4, v5, v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->TIME_TZ:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v3, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v4, Lorg/teleal/cling/model/types/BooleanDatatype;

    invoke-direct {v4}, Lorg/teleal/cling/model/types/BooleanDatatype;-><init>()V

    const/16 v5, 0x14

    const-string v6, "boolean"

    move-object/from16 v25, v0

    const-string v0, "BOOLEAN"

    invoke-direct {v3, v0, v5, v6, v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v4, Lorg/teleal/cling/model/types/Base64Datatype;

    invoke-direct {v4}, Lorg/teleal/cling/model/types/Base64Datatype;-><init>()V

    const/16 v5, 0x15

    const-string v6, "bin.base64"

    move-object/from16 v26, v1

    const-string v1, "BIN_BASE64"

    invoke-direct {v0, v1, v5, v6, v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v4, Lorg/teleal/cling/model/types/BinHexDatatype;

    invoke-direct {v4}, Lorg/teleal/cling/model/types/BinHexDatatype;-><init>()V

    const/16 v5, 0x16

    const-string v6, "bin.hex"

    move-object/from16 v27, v0

    const-string v0, "BIN_HEX"

    invoke-direct {v1, v0, v5, v6, v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->BIN_HEX:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v4, Lorg/teleal/cling/model/types/URIDatatype;

    invoke-direct {v4}, Lorg/teleal/cling/model/types/URIDatatype;-><init>()V

    const/16 v5, 0x17

    const-string v6, "uri"

    move-object/from16 v28, v1

    const-string v1, "URI"

    invoke-direct {v0, v1, v5, v6, v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->URI:Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v4, Lorg/teleal/cling/model/types/StringDatatype;

    invoke-direct {v4}, Lorg/teleal/cling/model/types/StringDatatype;-><init>()V

    const/16 v5, 0x18

    const-string v6, "uuid"

    move-object/from16 v29, v0

    const-string v0, "UUID"

    invoke-direct {v1, v0, v5, v6, v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V

    sput-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->UUID:Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v16, v22

    move-object/from16 v6, v23

    move-object/from16 v20, v25

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    const/4 v0, 0x0

    move-object/from16 v25, v1

    move-object/from16 v21, v3

    move-object/from16 v1, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v26

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v24

    move-object/from16 v24, v29

    filled-new-array/range {v1 .. v25}, [Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v1

    sput-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->$VALUES:[Lorg/teleal/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/teleal/cling/model/types/Datatype$Builtin$1;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/teleal/cling/model/types/Datatype$Builtin;->values()[Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Lorg/teleal/cling/model/types/Datatype$Builtin;->byName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/teleal/cling/model/types/AbstractDatatype;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p0, p4, Lorg/teleal/cling/model/types/AbstractDatatype;->a:Lorg/teleal/cling/model/types/Datatype$Builtin;

    iput-object p3, p0, Lorg/teleal/cling/model/types/Datatype$Builtin;->descriptorName:Ljava/lang/String;

    iput-object p4, p0, Lorg/teleal/cling/model/types/Datatype$Builtin;->datatype:Lorg/teleal/cling/model/types/Datatype;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Builtin;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->byName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Builtin;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/types/Datatype$Builtin;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/types/Datatype$Builtin;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/types/Datatype$Builtin;->$VALUES:[Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/types/Datatype$Builtin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/types/Datatype$Builtin;

    return-object v0
.end method


# virtual methods
.method public final b()Lorg/teleal/cling/model/types/Datatype;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/types/Datatype$Builtin;->datatype:Lorg/teleal/cling/model/types/Datatype;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/types/Datatype$Builtin;->descriptorName:Ljava/lang/String;

    return-object p0
.end method

.class public Lcom/lightup/sdk/device/properties/Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONSUMING_RATE_MS:I = 0x14

.field public static final FRIENDLY_NAME_MAX_LENGTH:I = 0xb

.field public static final GLOBAL_DEBUG:Z = false

.field public static SMARTPHONE_ID:Ljava/lang/String; = ""

.field public static final a:I

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:Ljava/util/UUID;

.field public static final o:Ljava/util/UUID;

.field public static final p:Ljava/util/UUID;

.field public static final q:Ljava/util/UUID;

.field public static final r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/lightup/sdk/device/properties/Properties;->a:I

    const/16 v0, 0x28

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->b:[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->c:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->d:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->e:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->f:[B

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->g:[B

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->h:[B

    const/4 v1, 0x7

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->i:[I

    const/4 v1, 0x5

    const/16 v2, 0x9

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->j:[I

    const/16 v1, 0xb

    filled-new-array {v2, v2, v1, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->k:[I

    const/16 v2, 0x21

    const/16 v3, 0xd

    filled-new-array {v2, v1, v3, v3}, [I

    move-result-object v2

    sput-object v2, Lcom/lightup/sdk/device/properties/Properties;->l:[I

    const/16 v2, 0x13

    const/16 v3, 0x15

    filled-new-array {v1, v2, v3, v3}, [I

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->m:[I

    const-string v1, "D973F2E0-B19E-11E2-9E96-0800200C9A66"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->n:Ljava/util/UUID;

    const-string v1, "D973F2E1-B19E-11E2-9E96-0800200C9A66"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->o:Ljava/util/UUID;

    const-string v1, "D973F2E2-B19E-11E2-9E96-0800200C9A66"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->p:Ljava/util/UUID;

    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/lightup/sdk/device/properties/Properties;->q:Ljava/util/UUID;

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/lightup/sdk/device/properties/Properties;->r:[B

    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x30t
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x2dt
        0x68t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7t
        -0x1ft
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x22t
        -0x53t
        -0x36t
        -0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final enum Lcom/lightup/sdk/device/features/commands/ColorPickerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/commands/ColorPickerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

.field public static final enum ALWAYS_ON:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

.field public static final enum BRIGHTNESS:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

.field public static final enum IMPACT:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

.field public static final enum NONE:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;


# instance fields
.field private byteID:B


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/commands/ColorPickerMode;
    .locals 4

    sget-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->BRIGHTNESS:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    sget-object v1, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->IMPACT:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    sget-object v2, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->NONE:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    sget-object v3, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->ALWAYS_ON:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    const-string v1, "BRIGHTNESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->BRIGHTNESS:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    new-instance v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    const-string v1, "IMPACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->IMPACT:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    new-instance v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    const-string v1, "NONE"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->NONE:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    new-instance v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    const-string v1, "ALWAYS_ON"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->ALWAYS_ON:Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    invoke-static {}, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->$values()[Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->$VALUES:[Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->byteID:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/commands/ColorPickerMode;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/commands/ColorPickerMode;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->$VALUES:[Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/commands/ColorPickerMode;

    return-object v0
.end method


# virtual methods
.method public getByteID()B
    .locals 0

    iget-byte p0, p0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->byteID:B

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/lightup/sdk/device/features/commands/ColorPickerMode;->byteID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

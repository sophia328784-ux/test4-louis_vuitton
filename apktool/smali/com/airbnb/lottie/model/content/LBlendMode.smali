.class public final enum Lcom/airbnb/lottie/model/content/LBlendMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/LBlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum ADD:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum COLOR:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum COLOR_BURN:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum COLOR_DODGE:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum DARKEN:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum DIFFERENCE:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum EXCLUSION:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum HARD_LIGHT:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum HARD_MIX:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum HUE:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum LIGHTEN:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum LUMINOSITY:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum MULTIPLY:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum OVERLAY:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum SATURATION:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum SCREEN:Lcom/airbnb/lottie/model/content/LBlendMode;

.field public static final enum SOFT_LIGHT:Lcom/airbnb/lottie/model/content/LBlendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v2, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "MULTIPLY"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/airbnb/lottie/model/content/LBlendMode;->MULTIPLY:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v3, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "SCREEN"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/airbnb/lottie/model/content/LBlendMode;->SCREEN:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v4, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "OVERLAY"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/airbnb/lottie/model/content/LBlendMode;->OVERLAY:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v5, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "DARKEN"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/airbnb/lottie/model/content/LBlendMode;->DARKEN:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v6, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "LIGHTEN"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/airbnb/lottie/model/content/LBlendMode;->LIGHTEN:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v7, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "COLOR_DODGE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/airbnb/lottie/model/content/LBlendMode;->COLOR_DODGE:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v8, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "COLOR_BURN"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/airbnb/lottie/model/content/LBlendMode;->COLOR_BURN:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v9, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "HARD_LIGHT"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/airbnb/lottie/model/content/LBlendMode;->HARD_LIGHT:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v10, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "SOFT_LIGHT"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/airbnb/lottie/model/content/LBlendMode;->SOFT_LIGHT:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v11, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "DIFFERENCE"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/airbnb/lottie/model/content/LBlendMode;->DIFFERENCE:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v12, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "EXCLUSION"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/airbnb/lottie/model/content/LBlendMode;->EXCLUSION:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v13, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "HUE"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/airbnb/lottie/model/content/LBlendMode;->HUE:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v14, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "SATURATION"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/airbnb/lottie/model/content/LBlendMode;->SATURATION:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v15, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v0, "COLOR"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/airbnb/lottie/model/content/LBlendMode;->COLOR:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v1, "LUMINOSITY"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/LBlendMode;->LUMINOSITY:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v1, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v2, "ADD"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/model/content/LBlendMode;->ADD:Lcom/airbnb/lottie/model/content/LBlendMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/LBlendMode;

    const-string v2, "HARD_MIX"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/LBlendMode;->HARD_MIX:Lcom/airbnb/lottie/model/content/LBlendMode;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v0

    filled-new-array/range {v1 .. v18}, [Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/content/LBlendMode;->$VALUES:[Lcom/airbnb/lottie/model/content/LBlendMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/LBlendMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/LBlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/LBlendMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/LBlendMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/LBlendMode;->$VALUES:[Lcom/airbnb/lottie/model/content/LBlendMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/LBlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/LBlendMode;

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/LBlendMode$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    return-object p0

    :pswitch_4
    sget-object p0, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    return-object p0

    :pswitch_5
    sget-object p0, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

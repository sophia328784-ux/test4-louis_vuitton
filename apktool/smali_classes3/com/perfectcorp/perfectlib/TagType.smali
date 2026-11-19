.class public abstract enum Lcom/perfectcorp/perfectlib/TagType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/TagType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUSH:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum CONTOUR:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum EYEBROW:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum EYELINER:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum EYESHADOW:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum FOUNDATION:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum HAIR_DYE:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum HIGHLIGHTER:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum HIGHLIGHTER_AND_CONTOUR:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum LIPSTICK:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum LOOK:Lcom/perfectcorp/perfectlib/TagType;

.field public static final enum MASCARA:Lcom/perfectcorp/perfectlib/TagType;

.field private static final synthetic d:[Lcom/perfectcorp/perfectlib/TagType;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/perfectcorp/perfectlib/TagType$1;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, "LOOK"

    const-string v3, "look"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/perfectcorp/perfectlib/TagType;->LOOK:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v1, Lcom/perfectcorp/perfectlib/TagType$2;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v6, 0x1

    const-string v3, "BLUSH"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/perfectcorp/perfectlib/TagType;->BLUSH:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v2, Lcom/perfectcorp/perfectlib/TagType$3;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_LINE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    const/4 v7, 0x1

    const-string v4, "EYELINER"

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/perfectcorp/perfectlib/TagType;->EYELINER:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v3, Lcom/perfectcorp/perfectlib/TagType$4;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x3

    const/4 v8, 0x1

    const-string v5, "EYESHADOW"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/perfectcorp/perfectlib/TagType;->EYESHADOW:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v4, Lcom/perfectcorp/perfectlib/TagType$5;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x4

    const/4 v9, 0x1

    const-string v6, "EYEBROW"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Lcom/perfectcorp/perfectlib/TagType;->EYEBROW:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v5, Lcom/perfectcorp/perfectlib/TagType$6;

    sget-object v11, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->FACE_CONTOUR_PATTERN:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x5

    const/4 v10, 0x1

    const-string v7, "HIGHLIGHTER"

    invoke-direct/range {v5 .. v10}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v5, Lcom/perfectcorp/perfectlib/TagType;->HIGHLIGHTER:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v12, Lcom/perfectcorp/perfectlib/TagType$7;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v16

    const/4 v13, 0x6

    const/16 v17, 0x1

    const-string v14, "CONTOUR"

    invoke-direct/range {v12 .. v17}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v12, Lcom/perfectcorp/perfectlib/TagType;->CONTOUR:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v13, Lcom/perfectcorp/perfectlib/TagType$8;

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b()Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x7

    const/16 v18, 0x1

    const-string v15, "HIGHLIGHTER_AND_CONTOUR"

    invoke-direct/range {v13 .. v18}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v13, Lcom/perfectcorp/perfectlib/TagType;->HIGHLIGHTER_AND_CONTOUR:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v6, Lcom/perfectcorp/perfectlib/TagType$9;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->SKIN_TONE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v7, 0x8

    const/4 v11, 0x1

    const-string v8, "FOUNDATION"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/perfectcorp/perfectlib/TagType;->FOUNDATION:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v14, Lcom/perfectcorp/perfectlib/TagType$10;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->LIPSTICK:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v15, 0x9

    const/16 v19, 0x1

    const-string v16, "LIPSTICK"

    const-string v18, ""

    invoke-direct/range {v14 .. v19}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v14, Lcom/perfectcorp/perfectlib/TagType;->LIPSTICK:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v15, Lcom/perfectcorp/perfectlib/TagType$11;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_LASH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0xa

    const/16 v20, 0x1

    const-string v17, "MASCARA"

    const-string v19, ""

    invoke-direct/range {v15 .. v20}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v15, Lcom/perfectcorp/perfectlib/TagType;->MASCARA:Lcom/perfectcorp/perfectlib/TagType;

    new-instance v16, Lcom/perfectcorp/perfectlib/TagType$12;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0xb

    const/16 v21, 0x1

    const-string v18, "HAIR_DYE"

    const-string v20, ""

    invoke-direct/range {v16 .. v21}, Lcom/perfectcorp/perfectlib/TagType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v16, Lcom/perfectcorp/perfectlib/TagType;->HAIR_DYE:Lcom/perfectcorp/perfectlib/TagType;

    const/16 v7, 0xc

    new-array v7, v7, [Lcom/perfectcorp/perfectlib/TagType;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    const/16 v0, 0x8

    aput-object v6, v7, v0

    const/16 v0, 0x9

    aput-object v14, v7, v0

    const/16 v0, 0xa

    aput-object v15, v7, v0

    const/16 v0, 0xb

    aput-object v16, v7, v0

    sput-object v7, Lcom/perfectcorp/perfectlib/TagType;->d:[Lcom/perfectcorp/perfectlib/TagType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/TagType;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/TagType;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perfectcorp/perfectlib/TagType;->c:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/TagType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/TagType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/TagType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/TagType;->d:[Lcom/perfectcorp/perfectlib/TagType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/TagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/TagType;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

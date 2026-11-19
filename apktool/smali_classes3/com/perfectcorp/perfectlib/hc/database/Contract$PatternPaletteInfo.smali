.class public Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternPaletteInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "PatternGUID"

    const-string v1, "index_pattern_palette_pattern_guid"

    const-string v2, "PatternPaletteInfo"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index_pattern_palette_palette_guid"

    const-string v3, "PaletteGUID"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "index_pattern_palette_palette_color_index"

    const-string v4, "PaletteColorIndex"

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 11

    const-string v9, "extra"

    const-string v10, "isDeleted"

    const-string v0, "PatternGUID"

    const-string v1, "PaletteGUID"

    const-string v2, "PaletteColorIndex"

    const-string v3, "Source"

    const-string v4, "Type"

    const-string v5, "ColorCount"

    const-string v6, "ColorIntensities"

    const-string v7, "Radius"

    const-string v8, "HiddenIntensity"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

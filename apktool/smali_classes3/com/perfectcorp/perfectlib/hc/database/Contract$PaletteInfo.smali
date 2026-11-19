.class public final Lcom/perfectcorp/perfectlib/hc/database/Contract$PaletteInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaletteInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "GUID"

    const-string v1, "index_palette_guid"

    const-string v2, "PaletteInfo"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index_palette_type"

    const-string v3, "Ext1"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "index_palette_sku_guid"

    const-string v4, "SkuGUID"

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$PaletteInfo;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 17

    const-string v15, "Ext4"

    const-string v16, "Ext5"

    const-string v1, "GUID"

    const-string v2, "ColorSetGUID"

    const-string v3, "ColorCount"

    const-string v4, "Name"

    const-string v5, "Thumbnail"

    const-string v6, "Source"

    const-string v7, "Version"

    const-string v8, "PaletteOrder"

    const-string v9, "isNew"

    const-string v10, "SkuGUID"

    const-string v11, "ExtraData"

    const-string v12, "Ext1"

    const-string v13, "Ext2"

    const-string v14, "Ext3"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

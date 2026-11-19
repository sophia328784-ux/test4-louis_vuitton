.class public final Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "GUID"

    const-string v1, "index_pattern_guid"

    const-string v2, "PatternInfo"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index_pattern_type"

    const-string v3, "PatternType"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "index_pattern_sku_guid"

    const-string v4, "SkuGUID"

    invoke-static {v3, v2, v4}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternInfo;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 22

    const-string v20, "HiddenInRoom"

    const-string v21, "Positions"

    const-string v1, "GUID"

    const-string v2, "PatternType"

    const-string v3, "Name"

    const-string v4, "ThumbPath"

    const-string v5, "Source"

    const-string v6, "SupportMode"

    const-string v7, "Version"

    const-string v8, "ColorImagePath"

    const-string v9, "ToolImagePath"

    const-string v10, "IsNew"

    const-string v11, "SkuGUID"

    const-string v12, "ExtraData"

    const-string v13, "ExtStr1"

    const-string v14, "ExtStr2"

    const-string v15, "ExtStr3"

    const-string v16, "ExtInt1"

    const-string v17, "ExtInt2"

    const-string v18, "ExtInt3"

    const-string v19, "TextureSupportedMode"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

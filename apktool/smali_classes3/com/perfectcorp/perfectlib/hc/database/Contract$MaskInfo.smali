.class public final Lcom/perfectcorp/perfectlib/hc/database/Contract$MaskInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaskInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MaskInfo"

    const-string v1, "PatternId"

    const-string v2, "index_mask_pattern_id"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$MaskInfo;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 14

    const-string v12, "BrowCurvature"

    const-string v13, "BrowDefinition"

    const-string v0, "PatternId"

    const-string v1, "MaskOrder"

    const-string v2, "MaskPath"

    const-string v3, "ExtraData"

    const-string v4, "Ext_1"

    const-string v5, "Ext_2"

    const-string v6, "ObbPath"

    const-string v7, "OccluderPath"

    const-string v8, "HairWarpingStrength"

    const-string v9, "BrowPositionX"

    const-string v10, "BrowPositionY"

    const-string v11, "BrowThickness"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/perfectcorp/perfectlib/hc/database/Contract$LookInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LookInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "LookInfo"

    const-string v1, "GUID"

    const-string v2, "index_look_guid"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$LookInfo;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 18

    const-string v16, "ExtInt2"

    const-string v17, "ExtInt3"

    const-string v1, "GUID"

    const-string v2, "Version"

    const-string v3, "Name"

    const-string v4, "Description"

    const-string v5, "ThumbImage"

    const-string v6, "PreviewImage"

    const-string v7, "Source"

    const-string v8, "SupportMode"

    const-string v9, "IsNew"

    const-string v10, "ExtraData"

    const-string v11, "ExtStr1"

    const-string v12, "ExtStr2"

    const-string v13, "ExtStr3"

    const-string v14, "LookType"

    const-string v15, "ExtInt1"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

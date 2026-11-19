.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$BackgroundInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackgroundInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$BackgroundInfo;->a:Ljava/util/List;

    const-string v7, "data"

    const-string v8, "isDeleted"

    const-string v1, "guid"

    const-string v2, "payload"

    const-string v3, "usageType"

    const-string v4, "expiredDate"

    const-string v5, "rootFolder"

    const-string v6, "version"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$BackgroundInfo;->b:[Ljava/lang/String;

    return-void
.end method

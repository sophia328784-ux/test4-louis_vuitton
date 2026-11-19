.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$TutorialInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TutorialInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$TutorialInfo;->a:Ljava/util/List;

    const-string v5, "lastModified"

    const-string v6, "isDownloaded"

    const-string v1, "guid"

    const-string v2, "payload"

    const-string v3, "type"

    const-string v4, "expiredDate"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$TutorialInfo;->b:[Ljava/lang/String;

    return-void
.end method

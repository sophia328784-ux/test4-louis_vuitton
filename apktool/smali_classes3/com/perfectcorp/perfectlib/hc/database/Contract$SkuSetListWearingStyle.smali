.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetListWearingStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkuSetListWearingStyle"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "WearingStyleGuid"

    const-string v1, "Metadata"

    const-string v2, "SkuSetId"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetListWearingStyle;->a:[Ljava/lang/String;

    return-void
.end method

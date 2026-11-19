.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGuid;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericTagGuid"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "Type"

    const-string v1, "SubType"

    const-string v2, "TagId"

    const-string v3, "Is3d"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "GenericTagGuid"

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGuid;->a:Ljava/util/List;

    const-string v4, "Guid"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGuid;->b:[Ljava/lang/String;

    return-void
.end method

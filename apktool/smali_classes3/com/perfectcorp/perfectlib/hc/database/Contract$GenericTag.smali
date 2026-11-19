.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericTag"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "Type"

    const-string v1, "TagGroupId"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenericTag"

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTag;->a:Ljava/util/List;

    const-string v2, "Name"

    const-string v3, "ImgURL"

    const-string v4, "Id"

    filled-new-array {v0, v1, v4, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTag;->b:[Ljava/lang/String;

    return-void
.end method

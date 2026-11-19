.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGroup;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericTagGroup"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Type"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenericTagGroup"

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGroup;->a:Ljava/util/List;

    const-string v1, "Name"

    const-string v2, "IsFreeTag"

    const-string v3, "Id"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGroup;->b:[Ljava/lang/String;

    return-void
.end method

.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract$ConditionalInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConditionalInfo"
.end annotation


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "GUID"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConditionalInfo"

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract$ConditionalInfo;->a:Ljava/util/List;

    const-string v1, "Info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$ConditionalInfo;->b:[Ljava/lang/String;

    return-void
.end method

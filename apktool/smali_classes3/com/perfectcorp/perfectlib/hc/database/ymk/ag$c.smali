.class abstract Lcom/perfectcorp/perfectlib/hc/database/ymk/ag$c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "TagId"

    const-string v1, "Is3d"

    const-string v2, "Type"

    const-string v3, "SubType"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericTagGuid"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ag$c;->a:Ljava/util/List;

    return-void
.end method

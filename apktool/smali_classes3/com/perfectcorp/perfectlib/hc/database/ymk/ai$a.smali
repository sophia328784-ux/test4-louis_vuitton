.class abstract Lcom/perfectcorp/perfectlib/hc/database/ymk/ai$a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProductId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinCare3Product"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ai$a;->a:Ljava/util/List;

    return-void
.end method

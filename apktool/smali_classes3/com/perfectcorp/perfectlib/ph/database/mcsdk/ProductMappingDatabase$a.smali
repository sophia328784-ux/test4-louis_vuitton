.class abstract Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "PRODUCT_MAPPING"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase$a;->a:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    return-void
.end method

.class abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "Google"

    const-string v1, "Pixel 6a"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    filled-new-array {v0}, [Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gtz v2, :cond_1

    aget-object v3, v0, v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sput v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder$a;->a:I

    return-void
.end method

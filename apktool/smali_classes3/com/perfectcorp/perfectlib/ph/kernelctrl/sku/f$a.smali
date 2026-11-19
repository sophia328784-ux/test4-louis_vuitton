.class public final enum Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

.field public static final enum b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

.field private static enum c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

.field private static final synthetic d:[Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    const-string v1, "CONTENT_ZIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    const-string v2, "IMAGE_ZIP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    const-string v3, "DFP_ZIP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->d:[Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    return-void
.end method

.method public static a()[Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->d:[Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    return-object v0
.end method

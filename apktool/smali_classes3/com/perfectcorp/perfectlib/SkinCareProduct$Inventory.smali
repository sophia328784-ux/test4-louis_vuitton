.class public final Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCareProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Inventory"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a$a;->skuId:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;->a:Ljava/lang/String;

    iget p1, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a$a;->qty:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;->b:I

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuantity()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;->b:I

    return p0
.end method

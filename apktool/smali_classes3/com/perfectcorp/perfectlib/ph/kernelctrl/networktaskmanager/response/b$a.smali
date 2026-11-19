.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final itemGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "item_guid"
    .end annotation
.end field

.field public final skuGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "sku_guid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->itemGuid:Ljava/lang/String;

    return-void
.end method

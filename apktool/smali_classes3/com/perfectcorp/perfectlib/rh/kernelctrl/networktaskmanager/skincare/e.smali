.class public final Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;
    }
.end annotation


# instance fields
.field public final productIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e;->productIds:Ljava/util/List;

    return-void
.end method

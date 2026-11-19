.class public final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$m;
.super Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$m;->b:Ljava/util/ArrayList;

    return-void
.end method

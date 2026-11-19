.class public final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;
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
.field public final b:Ljava/util/Collection;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;->b:Ljava/util/Collection;

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;->c:I

    return-void
.end method

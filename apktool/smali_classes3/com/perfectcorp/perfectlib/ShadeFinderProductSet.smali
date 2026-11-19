.class public final Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

.field public final b:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

.field public final c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

.field public final d:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

.field public final e:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->a:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->a:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->b:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->b:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->e:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->d:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->d:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->e:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    return-void
.end method


# virtual methods
.method public final getBestMatch()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->a:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    return-object p0
.end method

.method public final getCooler()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    return-object p0
.end method

.method public final getDarker()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->e:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    return-object p0
.end method

.method public final getLighter()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->d:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    return-object p0
.end method

.method public final getWarmer()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->b:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    return-object p0
.end method

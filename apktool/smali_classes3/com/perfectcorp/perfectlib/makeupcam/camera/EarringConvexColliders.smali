.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;
.super Ljava/lang/Object;


# instance fields
.field ellipsoid_params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field triangle_counts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field triangle_indices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field vertex_counts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field vertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertex_counts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_counts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_indices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->ellipsoid_params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Copy(Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertex_counts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertex_counts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertex_counts:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertex_counts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_1
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertices:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->vertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_counts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_2
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_counts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_counts:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_counts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_indices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_3
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_indices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_indices:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->triangle_indices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->ellipsoid_params:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_4
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->ellipsoid_params:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->ellipsoid_params:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;->ellipsoid_params:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.class public final Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BEST_MATCH_DELTA_E:F = 3.0f

.field public static final DEFAULT_NEIGHBOR_DELTA_E:F = 3.0f


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;->a:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;->a:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;->b:F

    iput p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;->b:F

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;->a:F

    iput v1, v0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;->b:F

    return-object v0
.end method

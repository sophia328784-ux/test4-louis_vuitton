.class public final Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:F

.field public b:F


# virtual methods
.method public final bestMatch(F)Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bestMatch < 0"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;->a:F

    return-object p0
.end method

.method public final build()Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;)V

    return-object v0
.end method

.method public final neighbor(F)Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "neighbor < 0"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE$Builder;->b:F

    return-object p0
.end method

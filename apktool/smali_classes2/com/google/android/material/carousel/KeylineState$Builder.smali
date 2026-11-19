.class public final Lcom/google/android/material/carousel/KeylineState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:F

.field public final b:I

.field public final c:Ljava/util/ArrayList;

.field public d:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field public e:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field public f:I

.field public g:I

.field public h:F

.field public i:I


# direct methods
.method public constructor <init>(FI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->f:I

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->h:F

    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->i:I

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->a:F

    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->b:I

    return-void
.end method


# virtual methods
.method public final a(FFFZZ)V
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p3, v0

    sub-float v1, p1, v0

    add-float/2addr v0, p1

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->b:I

    int-to-float v2, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    sub-float v1, v0, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_0
    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    add-float v2, v1, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/material/carousel/KeylineState$Builder;->b(FFFZZFFF)V

    return-void
.end method

.method public final b(FFFZZFFF)V
    .locals 11

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->c:Ljava/util/ArrayList;

    if-eqz p5, :cond_4

    if-nez p4, :cond_3

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->i:I

    if-eq v2, v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Anchor keylines must be either the first or last keyline."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->i:I

    goto :goto_1

    :cond_3
    const-string p0, "Anchor keylines cannot be focal."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v10, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFFFFZ)V

    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->d:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz p4, :cond_9

    if-nez p1, :cond_5

    iput-object v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->d:Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->f:I

    :cond_5
    iget p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->g:I

    if-eq p1, v0, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->g:I

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    if-gt p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const-string p0, "Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->d:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    cmpl-float p1, p3, p1

    if-nez p1, :cond_8

    iput-object v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->e:Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->g:I

    goto :goto_4

    :cond_8
    const-string p0, "Keylines that are marked as focal must all have the same masked item size."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_9
    if-nez p1, :cond_b

    iget p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->h:F

    cmpg-float p1, p3, p1

    if-ltz p1, :cond_a

    goto :goto_3

    :cond_a
    const-string p0, "Keylines before the first focal keyline must be ordered by incrementing masked item size."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->e:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->h:F

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_c

    goto :goto_4

    :cond_c
    const-string p0, "Keylines after the last focal keyline must be ordered by decreasing masked item size."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_4
    iput p3, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->h:F

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(FFFIZ)V
    .locals 8

    if-lez p4, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, p3

    add-float v3, v1, p1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final d()Lcom/google/android/material/carousel/KeylineState;
    .locals 13

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->d:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    new-instance v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-object v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->d:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->f:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->a:F

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    int-to-float v5, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    iget v6, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    iget v7, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    iget v8, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    iget-boolean v12, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    iget v9, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    iget v10, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->g:F

    iget v11, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->h:F

    invoke-direct/range {v4 .. v12}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFFFFZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/material/carousel/KeylineState;

    iget v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->f:I

    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->g:I

    iget v6, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->b:I

    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->a:F

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/ArrayList;III)V

    return-object v1

    :cond_1
    const-string p0, "There must be a keyline marked as focal."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

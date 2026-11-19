.class public final Lcom/airbnb/lottie/compose/LottieDynamicProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u00d5\u0001\u0008\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00030\u0002\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00030\u0002\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00030\u0002\u0012\u0012\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00030\u0002\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\u00030\u0002\u0012\u0012\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00030\u0002\u0012\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00030\u0002\u0012\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00030\u0002\u0012\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00030\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019B\u001b\u0008\u0016\u0012\u0010\u0010\u001a\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00030\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/airbnb/lottie/compose/LottieDynamicProperties;",
        "",
        "",
        "Lcom/airbnb/lottie/compose/LottieDynamicProperty;",
        "",
        "intProperties",
        "Landroid/graphics/PointF;",
        "pointFProperties",
        "",
        "floatProperties",
        "Lcom/airbnb/lottie/value/ScaleXY;",
        "scaleProperties",
        "Landroid/graphics/ColorFilter;",
        "colorFilterProperties",
        "",
        "intArrayProperties",
        "Landroid/graphics/Typeface;",
        "typefaceProperties",
        "Landroid/graphics/Bitmap;",
        "bitmapProperties",
        "",
        "charSequenceProperties",
        "Landroid/graphics/Path;",
        "pathProperties",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "properties",
        "(Ljava/util/List;)V",
        "lottie-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v3, v3, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v4, v4, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v4, v4, Landroid/graphics/PointF;

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v5, v5, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v6, v6, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v6, v6, Lcom/airbnb/lottie/value/ScaleXY;

    if-eqz v6, :cond_6

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v7, v7, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v7, v7, Landroid/graphics/ColorFilter;

    if-eqz v7, :cond_8

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v8, v8, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v8, v8, [Ljava/lang/Object;

    if-eqz v8, :cond_a

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v9, v9, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v9, v9, Landroid/graphics/Typeface;

    if-eqz v9, :cond_c

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v10, v10, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v10, v10, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_e

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v11, v11, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    iget-object v11, v11, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->a:Ljava/lang/Object;

    instance-of v11, v11, Landroid/graphics/Path;

    if-eqz v11, :cond_12

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/lottie/compose/LottieDynamicProperties;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Landroid/graphics/PointF;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Lcom/airbnb/lottie/value/ScaleXY;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Landroid/graphics/ColorFilter;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "[",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Landroid/graphics/Typeface;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Ljava/lang/CharSequence;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/compose/LottieDynamicProperty<",
            "Landroid/graphics/Path;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->a:Ljava/util/List;

    .line 332
    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->b:Ljava/util/List;

    .line 333
    iput-object p3, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->c:Ljava/util/List;

    .line 334
    iput-object p4, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->d:Ljava/util/List;

    .line 335
    iput-object p5, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->e:Ljava/util/List;

    .line 336
    iput-object p6, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->f:Ljava/util/List;

    .line 337
    iput-object p7, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->g:Ljava/util/List;

    .line 338
    iput-object p8, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->h:Ljava/util/List;

    .line 339
    iput-object p9, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->i:Ljava/util/List;

    .line 340
    iput-object p10, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperties;->j:Ljava/util/List;

    return-void
.end method

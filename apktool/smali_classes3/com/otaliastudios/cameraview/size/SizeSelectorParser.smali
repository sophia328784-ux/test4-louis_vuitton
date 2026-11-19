.class public Lcom/otaliastudios/cameraview/size/SizeSelectorParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field public final b:Lcom/otaliastudios/cameraview/size/SizeSelector;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->g(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->e(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v2, 0x21

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->f(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->d(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    new-instance v3, Lcom/otaliastudios/cameraview/size/SizeSelectors$9;

    invoke-direct {v3, v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors$9;-><init>(I)V

    invoke-static {v3}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->j(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    new-instance v3, Lcom/otaliastudios/cameraview/size/SizeSelectors$8;

    invoke-direct {v3, v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors$8;-><init>(I)V

    invoke-static {v3}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->j(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v2, 0x1b

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->b(Ljava/lang/String;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->b(Lcom/otaliastudios/cameraview/size/AspectRatio;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v2, 0x23

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/otaliastudios/cameraview/size/SizeSelectors$7;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v2, 0x1c

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/otaliastudios/cameraview/size/SizeSelectors$6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v4, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->a([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->a:Lcom/otaliastudios/cameraview/size/SizeSelector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v1, 0x38

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->g(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v1, 0x35

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->e(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/16 v1, 0x37

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->f(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/16 v1, 0x34

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->d(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    new-instance v2, Lcom/otaliastudios/cameraview/size/SizeSelectors$9;

    invoke-direct {v2, v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$9;-><init>(I)V

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->j(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/16 v1, 0x33

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    new-instance v2, Lcom/otaliastudios/cameraview/size/SizeSelectors$8;

    invoke-direct {v2, v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$8;-><init>(I)V

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->j(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/16 v1, 0x31

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->b(Ljava/lang/String;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->b(Lcom/otaliastudios/cameraview/size/AspectRatio;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const/16 v1, 0x39

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/otaliastudios/cameraview/size/SizeSelectors$7;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const/16 v1, 0x32

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Lcom/otaliastudios/cameraview/size/SizeSelectors$6;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    new-array p1, v4, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->a([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p1

    goto :goto_1

    :cond_13
    new-instance p1, Lcom/otaliastudios/cameraview/size/SizeSelectors$6;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->b:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

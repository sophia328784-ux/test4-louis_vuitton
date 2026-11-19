.class Landroidx/core/view/WindowInsetsCompat$Impl20;
.super Landroidx/core/view/WindowInsetsCompat$Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl20"
.end annotation


# static fields
.field public static n:Z = false

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Ljava/lang/Class;

.field public static q:Ljava/lang/reflect/Field;

.field public static r:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Landroidx/core/graphics/Insets;

.field public e:Landroidx/core/graphics/Insets;

.field public f:Landroidx/core/view/WindowInsetsCompat;

.field public g:Landroidx/core/graphics/Insets;

.field public h:I

.field public i:Landroidx/core/view/DisplayShapeCompat;

.field public j:I

.field public k:I

.field public l:[[Landroid/graphics/Rect;

.field public m:[[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->e:Landroidx/core/graphics/Insets;

    const/16 p1, 0xa

    new-array v0, p1, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->l:[[Landroid/graphics/Rect;

    new-array p1, p1, [[Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->m:[[Landroid/graphics/Rect;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V
    .locals 1

    .line 19
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/WindowInsetsCompat$Impl20;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private C(Landroid/view/View;)Landroidx/core/view/DisplayShapeCompat;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->a:Landroidx/core/view/WindowInsetsCompat;

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/DisplayShapeCompat;->a(ZIIIIII)Landroidx/core/view/DisplayShapeCompat;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/core/view/DisplayCompat;->a(Landroid/view/Display;I)Landroidx/core/view/RoundedCornerCompat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroidx/core/view/DisplayCompat;->a(Landroid/view/Display;I)Landroidx/core/view/RoundedCornerCompat;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroidx/core/view/DisplayCompat;->a(Landroid/view/Display;I)Landroidx/core/view/RoundedCornerCompat;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v4}, Landroidx/core/view/DisplayCompat;->a(Landroid/view/Display;I)Landroidx/core/view/RoundedCornerCompat;

    move-result-object p1

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_3

    iget v0, v1, Landroidx/core/view/RoundedCornerCompat;->b:I

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, p0

    :goto_0
    if-eqz v2, :cond_4

    iget v0, v2, Landroidx/core/view/RoundedCornerCompat;->b:I

    move v8, v0

    goto :goto_1

    :cond_4
    move v8, p0

    :goto_1
    if-eqz v3, :cond_5

    iget v0, v3, Landroidx/core/view/RoundedCornerCompat;->b:I

    move v9, v0

    goto :goto_2

    :cond_5
    move v9, p0

    :goto_2
    if-eqz p1, :cond_6

    iget p0, p1, Landroidx/core/view/RoundedCornerCompat;->b:I

    :cond_6
    move v10, p0

    const/4 v4, 0x0

    invoke-static/range {v4 .. v10}, Landroidx/core/view/DisplayShapeCompat;->a(ZIIIIII)Landroidx/core/view/DisplayShapeCompat;

    move-result-object p0

    return-object p0
.end method

.method private static D([[Landroid/graphics/Rect;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_3

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v2

    aget-object v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/graphics/Rect;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v5, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private E(Landroidx/core/graphics/Insets;)[Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p1, Landroidx/core/graphics/Insets;->a:I

    iget v2, p1, Landroidx/core/graphics/Insets;->d:I

    iget v3, p1, Landroidx/core/graphics/Insets;->c:I

    iget v4, p1, Landroidx/core/graphics/Insets;->b:I

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget p1, p1, Landroidx/core/graphics/Insets;->a:I

    iget v6, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->j:I

    invoke-direct {v1, v5, v5, p1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v4, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->k:I

    invoke-direct {p1, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->k:I

    sub-int v3, v1, v3

    iget v4, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->j:I

    invoke-direct {p1, v3, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->j:I

    sub-int v2, v1, v2

    iget p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->k:I

    invoke-direct {p1, v5, v2, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Rect;

    return-object p0
.end method

.method private F(IZ)Landroidx/core/graphics/Insets;
    .locals 3

    sget-object v0, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;->G(IZ)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->a(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private H()Landroidx/core/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->f:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method private I(Landroid/view/View;)Landroidx/core/graphics/Insets;
    .locals 3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-ge p0, v0, :cond_5

    sget-boolean p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->n:Z

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl20;->K()V

    :cond_0
    sget-object p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->o:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_4

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->p:Ljava/lang/Class;

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->q:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    sget-object p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->r:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->q:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz p0, :cond_3

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v2, p0}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    const-string p0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method private static K()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->o:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->p:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->q:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->r:Ljava/lang/reflect/Field;

    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->n:Z

    return-void
.end method

.method public static L(II)Z
    .locals 0

    and-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A([[Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->l:[[Landroid/graphics/Rect;

    return-void
.end method

.method public B([[Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->m:[[Landroid/graphics/Rect;

    return-void
.end method

.method public G(IZ)Landroidx/core/graphics/Insets;
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_5

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4

    const/16 p2, 0x40

    if-eq p1, p2, :cond_3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->f:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->h()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->h()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->a:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->o()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->k()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->m()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->d:[Landroidx/core/graphics/Insets;

    if-eqz p1, :cond_7

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result p2

    aget-object v0, p1, p2

    :cond_7
    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->n()Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->H()Landroidx/core/graphics/Insets;

    move-result-object p2

    iget p1, p1, Landroidx/core/graphics/Insets;->d:I

    iget v0, p2, Landroidx/core/graphics/Insets;->d:I

    if-le p1, v0, :cond_9

    invoke-static {v2, v2, v2, p1}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->g:Landroidx/core/graphics/Insets;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->g:Landroidx/core/graphics/Insets;

    iget p0, p0, Landroidx/core/graphics/Insets;->d:I

    iget p1, p2, Landroidx/core/graphics/Insets;->d:I

    if-le p0, p1, :cond_a

    invoke-static {v2, v2, v2, p0}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v1

    :cond_b
    if-eqz p2, :cond_c

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->H()Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p2, p1, Landroidx/core/graphics/Insets;->a:I

    iget v0, p0, Landroidx/core/graphics/Insets;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, Landroidx/core/graphics/Insets;->c:I

    iget v1, p0, Landroidx/core/graphics/Insets;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p1, p1, Landroidx/core/graphics/Insets;->d:I

    iget p0, p0, Landroidx/core/graphics/Insets;->d:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, v2, v0, p0}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_c
    iget p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->h:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->n()Landroidx/core/graphics/Insets;

    move-result-object p1

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->f:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    move-result-object v0

    :cond_e
    iget p0, p1, Landroidx/core/graphics/Insets;->d:I

    if-eqz v0, :cond_f

    iget p2, v0, Landroidx/core/graphics/Insets;->d:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_f
    iget p2, p1, Landroidx/core/graphics/Insets;->a:I

    iget p1, p1, Landroidx/core/graphics/Insets;->c:I

    invoke-static {p2, v2, p1, p0}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_10
    if-eqz p2, :cond_11

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->H()Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->b:I

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->n()Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/Insets;->b:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0, v2, v2}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_11
    iget p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->h:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->n()Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/Insets;->b:I

    invoke-static {v2, p0, v2, v2}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public J(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->G(IZ)Landroidx/core/graphics/Insets;

    move-result-object p0

    sget-object p1, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->k:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->j:I

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->I(Landroid/view/View;)Landroidx/core/graphics/Insets;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->x(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method public e(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->f:Landroidx/core/view/WindowInsetsCompat;

    iget-object v1, p1, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->y(Landroidx/core/view/WindowInsetsCompat;)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->g:Landroidx/core/graphics/Insets;

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->x(Landroidx/core/graphics/Insets;)V

    iget v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->h:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->z(I)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->i:Landroidx/core/view/DisplayShapeCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->v(Landroidx/core/view/DisplayShapeCompat;)V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->l:[[Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->A([[Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->m:[[Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->B([[Landroid/graphics/Rect;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->g:Landroidx/core/graphics/Insets;

    iget-object v2, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->g:Landroidx/core/graphics/Insets;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->h:I

    iget p1, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->h:I

    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->L(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public f(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->l:[[Landroid/graphics/Rect;

    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->D([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->m:[[Landroid/graphics/Rect;

    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->D([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i(I)Landroidx/core/graphics/Insets;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->F(IZ)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public j(I)Landroidx/core/graphics/Insets;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->F(IZ)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public final n()Landroidx/core/graphics/Insets;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->e:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/graphics/Insets;->c(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->e:Landroidx/core/graphics/Insets;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->e:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->C(Landroid/view/View;)Landroidx/core/view/DisplayShapeCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->i:Landroidx/core/view/DisplayShapeCompat;

    return-void
.end method

.method public q()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Type;->a(I)I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->l:[[Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->i(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/core/view/WindowInsetsCompat$Impl20;->E(Landroidx/core/graphics/Insets;)[Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->m:[[Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->j(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/core/view/WindowInsetsCompat$Impl20;->E(Landroidx/core/graphics/Insets;)[Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->c:Landroid/view/WindowInsets;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->r(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->n()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->m(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->c(Landroidx/core/graphics/Insets;)V

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->l()Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->m(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget-object p1, v0, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->i(Landroidx/core/graphics/Insets;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->h()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public t()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0
.end method

.method public u(I)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->J(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public v(Landroidx/core/view/DisplayShapeCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->i:Landroidx/core/view/DisplayShapeCompat;

    return-void
.end method

.method public w([Landroidx/core/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->d:[Landroidx/core/graphics/Insets;

    return-void
.end method

.method public x(Landroidx/core/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->g:Landroidx/core/graphics/Insets;

    return-void
.end method

.method public y(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->f:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->h:I

    return-void
.end method

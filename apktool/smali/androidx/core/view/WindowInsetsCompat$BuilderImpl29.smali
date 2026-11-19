.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderImpl29"
.end annotation


# instance fields
.field public final e:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 24
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->q()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public d(Landroidx/core/graphics/Insets;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public e(Landroidx/core/graphics/Insets;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public f(Landroidx/core/graphics/Insets;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public g(Landroidx/core/graphics/Insets;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public h()Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->a()V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->r(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->b:[Landroidx/core/graphics/Insets;

    iget-object v3, v0, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->w([Landroidx/core/graphics/Insets;)V

    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->v(Landroidx/core/view/DisplayShapeCompat;)V

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->c:[[Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->A([[Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->d:[[Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->B([[Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public i(Landroidx/core/graphics/Insets;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->e:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

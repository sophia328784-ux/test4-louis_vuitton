.class Landroidx/appcompat/widget/TintResources;
.super Landroidx/appcompat/widget/ResourcesWrapper;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/appcompat/widget/TintResources;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/TintResources;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->c()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/widget/ResourceManagerInternal;->e:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v1, :cond_5

    check-cast v1, Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    sget-object v2, Landroidx/appcompat/widget/AppCompatDrawableManager;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v1, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a:[I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a(I[I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    const p1, 0x7f04015f

    :goto_0
    move v1, v5

    goto :goto_2

    :cond_0
    iget-object v3, v1, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->c:[I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a(I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    const p1, 0x7f04015d

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->d:[I

    invoke-static {p1, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->a(I[I)Z

    move-result v1

    const v3, 0x1010031

    if-eqz v1, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    move p1, v3

    goto :goto_0

    :cond_2
    const v1, 0x7f080055

    if-ne p1, v1, :cond_3

    const p1, 0x42233333    # 40.8f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const v1, 0x1010030

    move v6, v1

    move v1, p1

    move p1, v6

    goto :goto_2

    :cond_3
    const v1, 0x7f080043

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move p1, v4

    goto :goto_0

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->c(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v1, v5, :cond_5

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    return-object v0
.end method

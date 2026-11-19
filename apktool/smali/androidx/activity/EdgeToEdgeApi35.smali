.class final Landroidx/activity/EdgeToEdgeApi35;
.super Landroidx/activity/EdgeToEdgeApi30;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J?\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/activity/EdgeToEdgeApi35;",
        "Landroidx/activity/EdgeToEdgeApi30;",
        "<init>",
        "()V",
        "Landroidx/activity/SystemBarStyle;",
        "statusBarStyle",
        "navigationBarStyle",
        "Landroid/view/Window;",
        "window",
        "Landroid/view/View;",
        "view",
        "",
        "statusBarIsDark",
        "navigationBarIsDark",
        "",
        "b",
        "(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V",
        "activity"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/EdgeToEdgeApi30;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroidx/core/view/WindowCompat;->a(Landroid/view/Window;Z)V

    invoke-virtual {v1, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v1, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Landroidx/activity/SystemBarStyle;->a(Z)I

    move-result v6

    invoke-virtual {v0, v4}, Landroidx/activity/SystemBarStyle;->a(Z)I

    move-result v7

    instance-of v8, v2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v10, 0x1

    if-eqz v8, :cond_a

    new-instance v11, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v11, v8}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v11}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    move-object v12, v11

    check-cast v12, Landroidx/core/view/ViewGroupKt$iterator$1;

    invoke-virtual {v12}, Landroidx/core/view/ViewGroupKt$iterator$1;->hasNext()Z

    move-result v13

    const/4 v15, 0x2

    const/4 v9, 0x4

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Landroidx/core/view/ViewGroupKt$iterator$1;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/util/List;

    if-eqz v13, :cond_1

    move-object v13, v12

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v9, :cond_1

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Landroidx/core/view/insets/ColorProtection;

    if-eqz v13, :cond_1

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Landroidx/core/view/insets/ColorProtection;

    if-eqz v12, :cond_3

    move-object v12, v11

    check-cast v12, Landroidx/core/view/insets/ColorProtection;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_2

    check-cast v11, Landroidx/core/view/insets/ColorProtection;

    iget v12, v11, Landroidx/core/view/insets/Protection;->a:I

    if-eq v12, v10, :cond_7

    if-eq v12, v15, :cond_6

    if-eq v12, v9, :cond_5

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v11, v7}, Landroidx/core/view/insets/ColorProtection;->d(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v7}, Landroidx/core/view/insets/ColorProtection;->d(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v11, v6}, Landroidx/core/view/insets/ColorProtection;->d(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v11, v7}, Landroidx/core/view/insets/ColorProtection;->d(I)V

    goto :goto_1

    :cond_8
    if-nez v6, :cond_9

    if-eqz v7, :cond_a

    :cond_9
    new-instance v11, Landroidx/core/view/insets/ColorProtection;

    invoke-direct {v11, v15, v6}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    new-instance v6, Landroidx/core/view/insets/ColorProtection;

    invoke-direct {v6, v10, v7}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    new-instance v12, Landroidx/core/view/insets/ColorProtection;

    invoke-direct {v12, v9, v7}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    new-instance v9, Landroidx/core/view/insets/ColorProtection;

    const/16 v13, 0x8

    invoke-direct {v9, v13, v7}, Landroidx/core/view/insets/ColorProtection;-><init>(II)V

    filled-new-array {v11, v6, v12, v9}, [Landroidx/core/view/insets/ColorProtection;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Landroidx/core/view/insets/ProtectionLayout;

    move-object v9, v2

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9, v6}, Landroidx/core/view/insets/ProtectionLayout;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    iget v0, v0, Landroidx/activity/SystemBarStyle;->c:I

    if-nez v0, :cond_b

    move v5, v10

    :cond_b
    invoke-virtual {v1, v5}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    xor-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->e(Z)V

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->d(Z)V

    return-void
.end method

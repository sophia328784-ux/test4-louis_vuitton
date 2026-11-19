.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WindowInsetsHolder;",
        "",
        "Companion",
        "foundation-layout"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

.field public static final z:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final c:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final d:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final e:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final f:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final g:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final h:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final i:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final j:Landroidx/compose/foundation/layout/ValueInsets;

.field public final k:Landroidx/compose/runtime/MutableState;

.field public final l:Landroidx/compose/foundation/layout/WindowInsets;

.field public final m:Landroidx/compose/foundation/layout/WindowInsets;

.field public final n:Landroidx/compose/foundation/layout/WindowInsets;

.field public final o:Landroidx/compose/foundation/layout/ValueInsets;

.field public final p:Landroidx/compose/foundation/layout/ValueInsets;

.field public final q:Landroidx/compose/foundation/layout/ValueInsets;

.field public final r:Landroidx/compose/foundation/layout/ValueInsets;

.field public final s:Landroidx/compose/foundation/layout/ValueInsets;

.field public final t:Landroidx/compose/foundation/layout/ValueInsets;

.field public final u:Landroidx/compose/foundation/layout/ValueInsets;

.field public final v:Z

.field public w:I

.field public final x:Landroidx/compose/foundation/layout/InsetsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->z:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v2, "captionBar"

    sget-object v3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    const/4 v4, 0x4

    invoke-static {v3, v1, v4, v2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v5, "displayCutout"

    const/16 v6, 0x80

    invoke-static {v3, v1, v6, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v7, "ime"

    const/16 v8, 0x8

    invoke-static {v3, v1, v8, v7}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v7

    iput-object v7, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v9, "mandatorySystemGestures"

    const/16 v10, 0x20

    invoke-static {v3, v1, v10, v9}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v9

    iput-object v9, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v11, "navigationBars"

    const/4 v12, 0x2

    invoke-static {v3, v1, v12, v11}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v11

    iput-object v11, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v13, "statusBars"

    const/4 v14, 0x1

    invoke-static {v3, v1, v14, v13}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v13

    iput-object v13, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v15, "systemBars"

    const/16 v10, 0x207

    invoke-static {v3, v1, v10, v15}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v15

    iput-object v15, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v8, "systemGestures"

    const/16 v6, 0x10

    invoke-static {v3, v1, v6, v8}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v8

    iput-object v8, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const-string v6, "tappableElement"

    const/16 v10, 0x40

    invoke-static {v3, v1, v10, v6}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v6

    iput-object v6, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->i:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    sget-object v16, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->d()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroidx/core/view/DisplayCutoutCompat;->c()Landroidx/core/graphics/Insets;

    move-result-object v17

    goto :goto_0

    :cond_0
    move-object/from16 v17, v16

    :goto_0
    new-instance v10, Landroidx/compose/foundation/layout/ValueInsets;

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v14

    const-string v12, "waterfall"

    invoke-direct {v10, v14, v12}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    iput-object v10, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/ValueInsets;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->d()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroidx/core/view/DisplayCutoutCompat;->b()Landroid/graphics/Path;

    move-result-object v14

    if-eqz v14, :cond_1

    new-instance v12, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-direct {v12, v14}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    iput-object v12, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->k:Landroidx/compose/runtime/MutableState;

    sget-object v12, Landroidx/compose/foundation/layout/WindowInsetsKt;->a:Landroidx/compose/foundation/layout/FixedIntInsets;

    new-instance v12, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v12, v15, v7}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    new-instance v14, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v14, v12, v5}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    iput-object v14, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->l:Landroidx/compose/foundation/layout/WindowInsets;

    new-instance v12, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v12, v6, v9}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    new-instance v4, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v4, v12, v8}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    new-instance v12, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v12, v4, v10}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    iput-object v12, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->m:Landroidx/compose/foundation/layout/WindowInsets;

    new-instance v4, Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v4, v14, v12}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->n:Landroidx/compose/foundation/layout/WindowInsets;

    const-string v4, "captionBarIgnoringVisibility"

    const/4 v10, 0x4

    invoke-static {v3, v1, v10, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->o:Landroidx/compose/foundation/layout/ValueInsets;

    const-string v4, "navigationBarsIgnoringVisibility"

    const/4 v10, 0x2

    invoke-static {v3, v1, v10, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->p:Landroidx/compose/foundation/layout/ValueInsets;

    const-string v4, "statusBarsIgnoringVisibility"

    const/4 v10, 0x1

    invoke-static {v3, v1, v10, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/ValueInsets;

    const-string v4, "systemBarsIgnoringVisibility"

    const/16 v10, 0x207

    invoke-static {v3, v1, v10, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/ValueInsets;

    const-string v4, "tappableElementIgnoringVisibility"

    const/16 v10, 0x40

    invoke-static {v3, v1, v10, v4}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Landroidx/compose/foundation/layout/ValueInsets;

    new-instance v1, Landroidx/compose/foundation/layout/ValueInsets;

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v3

    const-string v4, "imeAnimationTarget"

    invoke-direct {v1, v3, v4}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->t:Landroidx/compose/foundation/layout/ValueInsets;

    new-instance v1, Landroidx/compose/foundation/layout/ValueInsets;

    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v3

    const-string v4, "imeAnimationSource"

    invoke-direct {v1, v3, v4}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->u:Landroidx/compose/foundation/layout/ValueInsets;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/View;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    const v3, 0x7f0a0133

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    move-object v12, v1

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->v:Z

    new-instance v1, Landroidx/compose/foundation/layout/InsetsListener;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/layout/InsetsListener;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;)V

    iput-object v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->x:Landroidx/compose/foundation/layout/InsetsListener;

    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->j(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v5, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v11, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v13, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/16 v10, 0x207

    invoke-virtual {v0, v10}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v15, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    const/16 v10, 0x40

    invoke-virtual {v0, v10}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->f(Z)V

    :cond_6
    return-void
.end method

.method public static b(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->c:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->e:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->f:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->g:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->h:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->i:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->d:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->g(Landroidx/core/view/WindowInsetsCompat;I)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->o:Landroidx/compose/foundation/layout/ValueInsets;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->p:Landroidx/compose/foundation/layout/ValueInsets;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->q:Landroidx/compose/foundation/layout/ValueInsets;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->r:Landroidx/compose/foundation/layout/ValueInsets;

    const/16 v1, 0x207

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->s:Landroidx/compose/foundation/layout/ValueInsets;

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->d()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->j:Landroidx/compose/foundation/layout/ValueInsets;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->c()Landroidx/core/graphics/Insets;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/core/graphics/Insets;->e:Landroidx/core/graphics/Insets;

    :goto_0
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->d(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/ValueInsets;->f(Landroidx/compose/foundation/layout/InsetsValues;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->b()Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-direct {v0, p1}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->k:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->x:Landroidx/compose/foundation/layout/InsetsListener;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    :cond_1
    iget p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->w:I

    return-void
.end method

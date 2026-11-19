.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

.field public final synthetic l:Lkotlin/jvm/functions/Function4;

.field public final synthetic m:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->b:J

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->c:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->d:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->i:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->k:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    iput-object p12, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->l:Lkotlin/jvm/functions/Function4;

    iput-object p13, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->m:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->c:Landroidx/compose/ui/Modifier;

    if-eqz p2, :cond_0

    const-string v0, "LVStandardTopBar$lambda$0"

    invoke-static {p2, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    :cond_0
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p1, v6

    invoke-interface {v4, p1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-wide/16 v2, 0x0

    const/16 v5, 0x3e

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->b:J

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TopAppBarDefaults;->d(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TopAppBarColors;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;Ljava/lang/String;)V

    const v1, -0x2cd6380d

    invoke-static {v1, v0, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->i:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->k:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    invoke-direct {v1, v2, v5, v7, v3}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;)V

    const v2, 0x64e8a6f5

    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    new-instance v1, Lj60;

    iget-object v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->l:Lkotlin/jvm/functions/Function4;

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->m:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-direct {v1, v3, v5, v6}, Lj60;-><init>(Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V

    const v3, 0x7b3bfe1e

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v8, 0xd86

    const/16 v9, 0x10

    move-object v7, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/e;->d:Landroidx/compose/foundation/layout/WindowInsets;

    move-object v6, p1

    move-object v1, p2

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/AppBarKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

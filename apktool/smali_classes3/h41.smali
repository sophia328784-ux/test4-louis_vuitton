.class public final synthetic Lh41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh41;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lh41;->c:I

    iput-object p3, p0, Lh41;->d:Ljava/lang/String;

    iput-object p4, p0, Lh41;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lh41;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p6, p0, Lh41;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    iput-object p7, p0, Lh41;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lh41;->i:Z

    iput-object p9, p0, Lh41;->j:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    iput p10, p0, Lh41;->k:I

    iput p11, p0, Lh41;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lh41;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lh41;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lh41;->c:I

    iget-object v2, p0, Lh41;->d:Ljava/lang/String;

    iget-object v3, p0, Lh41;->e:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lh41;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v5, p0, Lh41;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    iget-object v6, p0, Lh41;->h:Ljava/lang/String;

    iget-boolean v7, p0, Lh41;->i:Z

    iget-object v8, p0, Lh41;->j:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    iget v11, p0, Lh41;->l:I

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

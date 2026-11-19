.class public final synthetic Lop0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/navigation/NavHostController;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lop0;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iput-boolean p2, p0, Lop0;->c:Z

    iput-object p3, p0, Lop0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p4, p0, Lop0;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lop0;->f:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lop0;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lop0;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    move-object v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-static {p4, p1, p2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lop0;->f:Landroidx/navigation/NavHostController;

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    iget-object p3, p0, Lop0;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p4, p2, :cond_1

    :cond_0
    new-instance p4, Lnp0;

    const/4 p2, 0x0

    invoke-direct {p4, p1, p3, p2}, Lnp0;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v7, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v5, p4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    sget p1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 p1, p1, 0x9

    or-int/lit8 v8, p1, 0x30

    iget-object v0, p0, Lop0;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lop0;->c:Z

    iget-object v3, p0, Lop0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v4, p0, Lop0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lop0;->h:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt;->a(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

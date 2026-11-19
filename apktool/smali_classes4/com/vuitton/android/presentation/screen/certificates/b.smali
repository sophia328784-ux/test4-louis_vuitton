.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/b;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/b;->c:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/b;->d:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-static {p4, p1, p2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    new-instance p4, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {p4, p1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    new-instance v0, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v0, p1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/b;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;

    sget-object p4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p4, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/b;->d:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    instance-of p4, p2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    check-cast p2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_7

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    if-eqz v2, :cond_1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p4

    :cond_4
    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/b;->c:Landroidx/navigation/NavHostController;

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_5

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, p0, :cond_6

    :cond_5
    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt$CertificateNavHost$6$1$6$1$1;

    const-string v6, "popBackStack()Z"

    const/16 v7, 0x8

    const/4 v2, 0x0

    const-class v4, Landroidx/navigation/NavHostController;

    const-string v5, "popBackStack"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v1

    :cond_6
    check-cast p1, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x0

    invoke-static {v0, p1, p3, p0}, Lcom/vuitton/android/presentation/screen/certificates/components/capucine/CertificateCapucineComposableKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

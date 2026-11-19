.class public final synthetic Lcom/vuitton/android/presentation/screen/portal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/a;->b:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->s:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/portal/a;->b:Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;

    iget-object p0, v8, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;

    iget-object p0, v8, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p1, p2, :cond_2

    :cond_1
    new-instance v6, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$onCreate$1$1$1$1;

    const-string v11, "handlePrivacyLink()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;

    const-string v10, "handlePrivacyLink"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v6

    :cond_2
    check-cast p1, Lkotlin/reflect/KFunction;

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez p0, :cond_3

    if-ne v2, p2, :cond_4

    :cond_3
    new-instance v6, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$onCreate$1$1$2$1;

    const-string v11, "handleLink(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;

    const-string v10, "handleLink"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v6

    :cond_4
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez p0, :cond_5

    if-ne v3, p2, :cond_6

    :cond_5
    new-instance v6, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity$onCreate$1$1$3$1;

    const-string v11, "finish()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;

    const-string v10, "finish"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_6
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComposableKt;->a(Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class public final synthetic Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/a;->b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;->q:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$Companion;

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

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/a;->b:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_2

    :cond_1
    new-instance p2, Ls31;

    invoke-direct {p2, p0, v1}, Ls31;-><init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;I)V

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v1, p2

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    new-instance p2, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$onCreate$1$1$2$1;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$onCreate$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;)V

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_5

    if-ne v3, v2, :cond_6

    :cond_5
    new-instance v3, Lxe0;

    const/16 p1, 0x14

    invoke-direct {v3, p0, p1}, Lxe0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleNavHostKt;->a(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

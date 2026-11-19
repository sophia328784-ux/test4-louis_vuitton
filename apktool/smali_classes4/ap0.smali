.class public final synthetic Lap0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lap0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lap0;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    iput-boolean p3, p0, Lap0;->d:Z

    iput-boolean p4, p0, Lap0;->e:Z

    iput-object p5, p0, Lap0;->f:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    iput-object p6, p0, Lap0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lap0;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lap0;->i:Lkotlin/jvm/functions/Function1;

    iput-boolean p9, p0, Lap0;->j:Z

    iput-boolean p10, p0, Lap0;->k:Z

    iput-boolean p11, p0, Lap0;->l:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x6001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Lap0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lap0;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    iget-boolean v2, p0, Lap0;->d:Z

    iget-boolean v3, p0, Lap0;->e:Z

    iget-object v4, p0, Lap0;->f:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    iget-object v5, p0, Lap0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lap0;->h:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lap0;->i:Lkotlin/jvm/functions/Function1;

    iget-boolean v8, p0, Lap0;->j:Z

    iget-boolean v9, p0, Lap0;->k:Z

    iget-boolean v10, p0, Lap0;->l:Z

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

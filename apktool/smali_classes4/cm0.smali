.class public final synthetic Lcm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm0;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lcm0;->c:Z

    iput-boolean p3, p0, Lcm0;->d:Z

    iput-boolean p4, p0, Lcm0;->e:Z

    iput-boolean p5, p0, Lcm0;->f:Z

    iput-boolean p6, p0, Lcm0;->g:Z

    iput-boolean p7, p0, Lcm0;->h:Z

    iput-boolean p8, p0, Lcm0;->i:Z

    iput-object p9, p0, Lcm0;->j:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    iput-object p10, p0, Lcm0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcm0;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcm0;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v0, p0, Lcm0;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lcm0;->c:Z

    iget-boolean v2, p0, Lcm0;->d:Z

    iget-boolean v3, p0, Lcm0;->e:Z

    iget-boolean v4, p0, Lcm0;->f:Z

    iget-boolean v5, p0, Lcm0;->g:Z

    iget-boolean v6, p0, Lcm0;->h:Z

    iget-boolean v7, p0, Lcm0;->i:Z

    iget-object v8, p0, Lcm0;->j:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    iget-object v9, p0, Lcm0;->k:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lcm0;->l:Lkotlin/jvm/functions/Function0;

    iget-object v11, p0, Lcm0;->m:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt;->a(Landroidx/compose/ui/Modifier;ZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

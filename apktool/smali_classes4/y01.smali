.class public final synthetic Ly01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:F

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;FZZZZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly01;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ly01;->c:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iput-object p3, p0, Ly01;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-object p4, p0, Ly01;->e:Ljava/util/List;

    iput-object p5, p0, Ly01;->f:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Ly01;->g:F

    iput-boolean p7, p0, Ly01;->h:Z

    iput-boolean p8, p0, Ly01;->i:Z

    iput-boolean p9, p0, Ly01;->j:Z

    iput-boolean p10, p0, Ly01;->k:Z

    iput-object p11, p0, Ly01;->l:Lkotlin/jvm/functions/Function0;

    iput p12, p0, Ly01;->m:I

    iput p13, p0, Ly01;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Ly01;->m:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Ly01;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ly01;->c:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v2, p0, Ly01;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v3, p0, Ly01;->e:Ljava/util/List;

    iget-object v4, p0, Ly01;->f:Lkotlin/jvm/functions/Function1;

    iget v5, p0, Ly01;->g:F

    iget-boolean v6, p0, Ly01;->h:Z

    iget-boolean v7, p0, Ly01;->i:Z

    iget-boolean v8, p0, Ly01;->j:Z

    iget-boolean v9, p0, Ly01;->k:Z

    iget-object v10, p0, Ly01;->l:Lkotlin/jvm/functions/Function0;

    iget v13, p0, Ly01;->n:I

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;FZZZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

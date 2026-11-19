.class public final synthetic Lcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/presentation/compose/LvExoPlayer;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcw;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lcw;->c:F

    iput-object p3, p0, Lcw;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-boolean p4, p0, Lcw;->e:Z

    iput-boolean p5, p0, Lcw;->f:Z

    iput-boolean p6, p0, Lcw;->g:Z

    iput-boolean p7, p0, Lcw;->h:Z

    iput-boolean p8, p0, Lcw;->i:Z

    iput-object p9, p0, Lcw;->j:Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    iput-object p10, p0, Lcw;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcw;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p12, p0, Lcw;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcw;->m:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Lcw;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lcw;->c:F

    iget-object v2, p0, Lcw;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-boolean v3, p0, Lcw;->e:Z

    iget-boolean v4, p0, Lcw;->f:Z

    iget-boolean v5, p0, Lcw;->g:Z

    iget-boolean v6, p0, Lcw;->h:Z

    iget-boolean v7, p0, Lcw;->i:Z

    iget-object v8, p0, Lcw;->j:Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    iget-object v9, p0, Lcw;->k:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lcw;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/editorialcard/EditorialCardBackgroundKt;->a(Landroidx/compose/ui/Modifier;FLcom/vuitton/android/presentation/model/common/AssetUiModel;ZZZZZLcom/vuitton/android/presentation/compose/LvExoPlayer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

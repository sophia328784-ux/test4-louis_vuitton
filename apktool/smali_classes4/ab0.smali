.class public final synthetic Lab0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab0;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lab0;->c:Z

    iput-boolean p3, p0, Lab0;->d:Z

    iput-object p4, p0, Lab0;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    iput-object p5, p0, Lab0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lab0;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lab0;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lab0;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lab0;->j:Lkotlin/jvm/functions/Function1;

    iput p10, p0, Lab0;->k:I

    iput p11, p0, Lab0;->l:I

    iput p12, p0, Lab0;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lab0;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget p1, p0, Lab0;->l:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lab0;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lab0;->c:Z

    iget-boolean v2, p0, Lab0;->d:Z

    iget-object v3, p0, Lab0;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    iget-object v4, p0, Lab0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lab0;->g:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lab0;->h:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lab0;->i:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Lab0;->j:Lkotlin/jvm/functions/Function1;

    iget v12, p0, Lab0;->m:I

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt;->b(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

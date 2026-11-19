.class public final synthetic Laq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FFZZLcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p8, 0x0

    iput p8, p0, Laq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laq;->d:F

    iput p2, p0, Laq;->e:F

    iput-boolean p3, p0, Laq;->f:Z

    iput-boolean p4, p0, Laq;->g:Z

    iput-object p5, p0, Laq;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-object p6, p0, Laq;->h:Ljava/lang/Object;

    iput-object p7, p0, Laq;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FFZZI)V
    .locals 0

    .line 21
    const/4 p8, 0x1

    iput p8, p0, Laq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq;->h:Ljava/lang/Object;

    iput-object p2, p0, Laq;->i:Ljava/lang/Object;

    iput-object p3, p0, Laq;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput p4, p0, Laq;->d:F

    iput p5, p0, Laq;->e:F

    iput-boolean p6, p0, Laq;->f:Z

    iput-boolean p7, p0, Laq;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Laq;->b:I

    iget-object v1, p0, Laq;->i:Ljava/lang/Object;

    iget-object v2, p0, Laq;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v5, p0, Laq;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget v6, p0, Laq;->d:F

    iget v7, p0, Laq;->e:F

    iget-boolean v8, p0, Laq;->f:Z

    iget-boolean v9, p0, Laq;->g:Z

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/portal/components/PortalCoverKt;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FFZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;

    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x1b0001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget v0, p0, Laq;->d:F

    iget v1, p0, Laq;->e:F

    iget-boolean v2, p0, Laq;->f:Z

    iget-boolean v3, p0, Laq;->g:Z

    iget-object v4, p0, Laq;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideStructureKt;->a(FFZZLcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

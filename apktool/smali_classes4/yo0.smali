.class public final synthetic Lyo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZII)V
    .locals 0

    iput p5, p0, Lyo0;->b:I

    iput-object p1, p0, Lyo0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lyo0;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-boolean p3, p0, Lyo0;->e:Z

    iput p4, p0, Lyo0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyo0;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lyo0;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lyo0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lyo0;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-boolean p0, p0, Lyo0;->e:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lyo0;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lyo0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lyo0;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-boolean p0, p0, Lyo0;->e:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

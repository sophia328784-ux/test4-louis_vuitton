.class public final synthetic Lyq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;ZLandroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Landroid/content/Context;I)V
    .locals 0

    iput p6, p0, Lyq0;->b:I

    iput-object p1, p0, Lyq0;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iput-boolean p2, p0, Lyq0;->d:Z

    iput-object p3, p0, Lyq0;->e:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p4, p0, Lyq0;->f:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lyq0;->g:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lyq0;->b:I

    iget-object v1, p0, Lyq0;->g:Landroid/content/Context;

    iget-object v2, p0, Lyq0;->f:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lyq0;->e:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-boolean v4, p0, Lyq0;->d:Z

    iget-object p0, p0, Lyq0;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-static {v4, v3, v2, v1, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt;->b(ZLandroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {v4, v3, v2, v1, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersContainerContentKt;->b(ZLandroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

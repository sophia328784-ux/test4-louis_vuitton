.class public final synthetic Lh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IZI)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Lh3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lh3;->d:I

    iput-boolean p3, p0, Lh3;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZI)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lh3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lh3;->e:Z

    iput p3, p0, Lh3;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lh3;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lh3;->c:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lh3;->d:I

    iget-boolean p0, p0, Lh3;->e:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouFeedbackBottomSheetKt;->a(Landroidx/compose/ui/Modifier;IZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lh3;->d:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lh3;->c:Landroidx/compose/ui/Modifier;

    iget-boolean p0, p0, Lh3;->e:Z

    invoke-static {p2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersBackGradientKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

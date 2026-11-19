.class public final synthetic Lyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;I)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Lyd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lyd;->d:F

    iput-object p3, p0, Lyd;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Landroidx/compose/ui/Modifier;FI)V
    .locals 0

    .line 13
    const/4 p4, 0x1

    iput p4, p0, Lyd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd;->e:Ljava/lang/Object;

    iput-object p2, p0, Lyd;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lyd;->d:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyd;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lyd;->e:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v1, p0, Lyd;->c:Landroidx/compose/ui/Modifier;

    iget p0, p0, Lyd;->d:F

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVColorDotIconKt;->a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationColorDot;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lyd;->e:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v1, p0, Lyd;->c:Landroidx/compose/ui/Modifier;

    iget p0, p0, Lyd;->d:F

    invoke-static {v1, p0, v0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualSeparatorKt;->a(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

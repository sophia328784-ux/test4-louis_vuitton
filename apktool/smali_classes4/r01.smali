.class public final synthetic Lr01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/unit/Density;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;FI)V
    .locals 0

    iput p3, p0, Lr01;->b:I

    iput-object p1, p0, Lr01;->c:Landroidx/compose/ui/unit/Density;

    iput p2, p0, Lr01;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr01;->b:I

    iget v1, p0, Lr01;->d:F

    iget-object p0, p0, Lr01;->c:Landroidx/compose/ui/unit/Density;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    packed-switch v0, :pswitch_data_0

    sget p1, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a:F

    add-float/2addr p1, v1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p1, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a:F

    add-float/2addr p1, v1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

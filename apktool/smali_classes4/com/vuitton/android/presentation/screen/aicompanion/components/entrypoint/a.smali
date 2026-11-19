.class public final synthetic Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/a;->c:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/a;->b:I

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/a;->c:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/unit/Density;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;->c:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;->d:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    int-to-long v4, v0

    shl-long v3, v4, v3

    int-to-long p0, p0

    and-long/2addr p0, v1

    or-long/2addr p0, v3

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionTooltipKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;->a:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;->b:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    int-to-long v4, v0

    shl-long v3, v4, v3

    int-to-long p0, p0

    and-long/2addr p0, v1

    or-long/2addr p0, v3

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

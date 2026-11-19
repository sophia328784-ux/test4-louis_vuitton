.class public final synthetic Lm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;II)V
    .locals 0

    iput p3, p0, Lm9;->b:I

    iput-object p1, p0, Lm9;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm9;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object p0, p0, Lm9;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/AssessmentPreliminaryBffComponentKt;->d(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object p0, p0, Lm9;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/AssessmentPreliminaryBffComponentKt;->e(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

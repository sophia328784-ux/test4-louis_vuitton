.class public final synthetic Lq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p5, p0, Lq0;->b:I

    iput-object p1, p0, Lq0;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lq0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lq0;->e:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    iput-object p4, p0, Lq0;->f:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lq0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lq0;->f:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lq0;->e:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    iget-object v4, p0, Lq0;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lq0;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {p0, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {p0, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

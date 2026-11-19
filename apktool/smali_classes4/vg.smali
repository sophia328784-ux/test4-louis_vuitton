.class public final synthetic Lvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lvg;->b:I

    iput-object p1, p0, Lvg;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvg;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lvg;->b:I

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/DragScope;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-wide v4, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->a:J

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->P:Z

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p1, v4, v5}, Landroidx/compose/ui/geometry/Offset;->g(FJ)J

    move-result-wide v4

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->L:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p1, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, p1, :cond_1

    and-long p0, v4, v2

    :goto_2
    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_3

    :cond_1
    shr-long p0, v4, v1

    goto :goto_2

    :goto_3
    invoke-interface {v0, p0}, Landroidx/compose/foundation/gestures/DragScope;->a(F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddImageClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddImageClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddImageClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$AddImageClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->h:Z

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    const-string v1, ", "

    invoke-static {v0, v1, p0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;->Q8(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/cache/DiskLruCache$Editor;

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :pswitch_6
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/model/DependencyDao_Impl;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/model/Dependency;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    sget-object v1, Landroidx/work/impl/model/DependencyDao_Impl;->c:Landroidx/work/impl/model/DependencyDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/impl/model/DependencyDao_Impl;->b:Landroidx/work/impl/model/DependencyDao_Impl$1;

    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->u:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->v:Z

    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->t:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    new-instance v2, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    invoke-direct {v2}, Landroidx/compose/ui/text/input/FinishComposingTextCommand;-><init>()V

    new-instance v3, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-direct {v3, p1, v6}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Landroidx/compose/ui/text/AnnotatedString;I)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroidx/compose/ui/text/input/EditCommand;

    aput-object v2, p1, v5

    aput-object v3, p1, v6

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->t:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Llq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/input/EditProcessor;->a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p1

    iget-object v1, v0, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    iget-object v1, v1, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/input/TextInputSession;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v0, v4, p1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->e(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_4
    invoke-virtual {p0, p1}, Llq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move v5, v6

    goto :goto_6

    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->s:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v4, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    iget-wide v7, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    sget-object v0, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    shr-long v9, v7, v1

    long-to-int v0, v9

    and-long/2addr v2, v7

    long-to-int v2, v2

    invoke-static {v4, v0, v2, p1}, Lkotlin/text/StringsKt;->K(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->s:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v2, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    shr-long v0, v2, v1

    long-to-int v0, v0

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide v9

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->t:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Llq;

    new-instance v7, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v7}, Llq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/graphics/Brush;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    iget-object p0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->s:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->t:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v10, 0x0

    const/16 v11, 0x7e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lretrofit2/HttpException;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;

    const-string v1, "message"

    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7

    :cond_9
    move-object v2, v4

    :goto_7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_a
    iget p0, p0, Lretrofit2/HttpException;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v4, v2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;->H(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;->l(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity;->r:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "WATCH_ID"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v6, :cond_b

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_b
    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;->l(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    invoke-interface {p1, v0}, Landroidx/compose/foundation/GestureConnection;->n0(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p1

    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_e

    :cond_d
    move v5, v6

    :cond_e
    iput-boolean v5, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    xor-int/lit8 p0, v5, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    invoke-interface {p1, v0}, Landroidx/compose/foundation/GestureConnection;->a1(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result p1

    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_10

    :cond_f
    move v5, v6

    :cond_10
    iput-boolean v5, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    xor-int/lit8 p0, v5, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    if-ne p0, v6, :cond_12

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_11
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    :cond_13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_14
    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;->k5(Ljava/util/Map;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->b()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    const-string v0, ""

    iget-object v1, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    :cond_16
    const-string v2, "\n"

    invoke-static {p1, v2, v0}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->V(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    goto :goto_9

    :cond_17
    move-object v4, v2

    :goto_9
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->h:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->i:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->k:Landroidx/compose/runtime/MutableState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->g:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavHostController;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {p0, v1, v4, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_1a
    new-instance p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    instance-of v1, p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    iget-object v2, v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    :cond_1b
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    iget-object v0, p0, Lvg;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object p0, p0, Lvg;->d:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    iget-object v2, v0, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G0(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/ColorFilter;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

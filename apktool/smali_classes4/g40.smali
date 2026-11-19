.class public final synthetic Lg40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg40;->b:Ljava/util/List;

    iput-object p2, p0, Lg40;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p3, p0, Lg40;->d:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iput-object p4, p0, Lg40;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lg40;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lg40;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lg40;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lg40;->i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p9, p0, Lg40;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lrq;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lrq;-><init>(I)V

    iget-object v3, p0, Lg40;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-instance v13, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$1;

    invoke-direct {v13, v0, v3}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$3;

    iget-object v4, p0, Lg40;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v5, p0, Lg40;->d:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-object v6, p0, Lg40;->e:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lg40;->f:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lg40;->g:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lg40;->h:Lkotlin/jvm/functions/Function1;

    iget-object v10, p0, Lg40;->i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v11, p0, Lg40;->j:Lkotlin/jvm/functions/Function1;

    move-object v12, v3

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$lambda$0$0$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x799532c4

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v1, v13, v0, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

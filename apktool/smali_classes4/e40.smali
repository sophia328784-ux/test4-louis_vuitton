.class public final synthetic Le40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le40;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p2, p0, Le40;->c:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iput-boolean p3, p0, Le40;->d:Z

    iput-object p4, p0, Le40;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Le40;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Le40;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Le40;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Le40;->i:Lkotlin/jvm/functions/Function1;

    iput-boolean p9, p0, Le40;->j:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Le40;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v1, p0, Le40;->c:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-boolean v2, p0, Le40;->d:Z

    iget-object v3, p0, Le40;->e:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Le40;->f:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Le40;->g:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Le40;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Le40;->i:Lkotlin/jvm/functions/Function1;

    iget-boolean v8, p0, Le40;->j:Z

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

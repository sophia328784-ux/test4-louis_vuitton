.class final Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$4$1;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$4$1;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$4$1;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt$InboxNotificationListScreen$1$1$1$1$2$4$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V
    .locals 0

    iput p5, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->d:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$28$2$1;

    const-string v9, "removeEventFromCalendar()V"

    const/4 v10, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    const-class v7, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    const-string v8, "removeEventFromCalendar"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3, v2, v1, v4}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt;->c(Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$28$1$1;

    const-string v9, "addEventToCalendar()V"

    const/4 v10, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/components/c;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    const-class v7, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    const-string v8, "addEventToCalendar"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3, v2, v1, v4}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt;->c(Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

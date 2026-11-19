.class final synthetic Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$12$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
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


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->s:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->p(Landroid/app/Activity;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

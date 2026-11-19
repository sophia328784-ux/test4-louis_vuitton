.class public final synthetic Lie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;Landroid/content/Context;I)V
    .locals 0

    iput p4, p0, Lie;->b:I

    iput-object p1, p0, Lie;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iput-object p2, p0, Lie;->d:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    iput-object p3, p0, Lie;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lie;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lie;->e:Landroid/content/Context;

    iget-object v4, p0, Lie;->d:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    iget-object p0, p0, Lie;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->BACK_IN_STOCK:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    instance-of p0, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;

    if-eqz p0, :cond_1

    invoke-static {v3}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->p(Landroid/app/Activity;Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->BACK_IN_STOCK:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    instance-of p0, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;

    if-eqz p0, :cond_3

    invoke-static {v3}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    if-eqz v0, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->p(Landroid/app/Activity;Z)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

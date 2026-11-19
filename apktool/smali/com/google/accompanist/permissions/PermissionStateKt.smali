.class public abstract Lcom/google/accompanist/permissions/PermissionStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "permissions_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/permissions/MutablePermissionState;
    .locals 7

    const v0, 0x37042c49

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v0, Lcom/google/accompanist/permissions/PermissionStateKt$rememberPermissionState$1;->c:Lcom/google/accompanist/permissions/PermissionStateKt$rememberPermissionState$1;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x54e42f85

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, -0x716e8b37

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v4, :cond_2

    new-instance v2, Lcom/google/accompanist/permissions/MutablePermissionState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    :goto_0
    instance-of v6, v5, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_1

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/app/Activity;

    const-string v6, "android.permission.POST_NOTIFICATIONS"

    invoke-direct {v2, v6, v1, v5}, Lcom/google/accompanist/permissions/MutablePermissionState;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-string p0, "Permissions should be called in the context of an Activity"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    :goto_1
    check-cast v2, Lcom/google/accompanist/permissions/MutablePermissionState;

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->J()V

    const/4 v1, 0x0

    invoke-static {v2, v3, p0, v1}, Lcom/google/accompanist/permissions/PermissionsUtilKt;->a(Lcom/google/accompanist/permissions/MutablePermissionState;Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/Composer;I)V

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    const v3, -0x716e89a5

    invoke-interface {p0, v3}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_3

    if-ne v5, v4, :cond_4

    :cond_3
    new-instance v5, Lcom/google/accompanist/permissions/MutablePermissionStateKt$rememberMutablePermissionState$launcher$1$1;

    invoke-direct {v5, v2, v0}, Lcom/google/accompanist/permissions/MutablePermissionStateKt$rememberMutablePermissionState$launcher$1$1;-><init>(Lcom/google/accompanist/permissions/MutablePermissionState;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->J()V

    const/16 v0, 0x8

    invoke-static {v1, v5, p0, v0}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v0

    new-instance v1, Lcom/google/accompanist/permissions/MutablePermissionStateKt$rememberMutablePermissionState$2;

    invoke-direct {v1, v2, v0}, Lcom/google/accompanist/permissions/MutablePermissionStateKt$rememberMutablePermissionState$2;-><init>(Lcom/google/accompanist/permissions/MutablePermissionState;Landroidx/activity/compose/ManagedActivityResultLauncher;)V

    invoke-static {v2, v0, v1, p0}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->J()V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->J()V

    return-object v2
.end method

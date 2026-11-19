.class public abstract Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Landroid/app/Activity;)V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p0, Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    instance-of v4, p0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    instance-of v5, p0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v5, :cond_3

    invoke-static {v0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v5

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz v1, :cond_5

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    const v5, 0x7f0a0532

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    if-eqz v4, :cond_6

    move-object v3, p0

    check-cast v3, Landroidx/savedstate/SavedStateRegistryOwner;

    const v5, 0x7f0a0535

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/ViewModelStoreOwner;

    const v5, 0x7f0a0536

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lcom/vuitton/android/presentation/di/CrashReporterEntryPoint;

    invoke-static {v0, v3}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/di/CrashReporterEntryPoint;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/di/CrashReporterEntryPoint;->d()Lcom/vuitton/android/domain/reporter/CrashReporter;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/domain/reporter/CrashReporter;->isReady()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    :cond_9
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, " [lifecycle="

    const-string v8, ", savedState="

    const-string v9, "[ViewTreeLifecycleOwner ComposeView crash fix] DecorView missing ViewTree owners in "

    invoke-static {v9, p0, v7, v8, v1}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", vmStore="

    const-string v8, "] on "

    invoke-static {v1, v4, v7, v2, v8}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, " API "

    const-string v4, " "

    invoke-static {v1, v3, v4, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ". Forcing setup as fallback."

    invoke-static {v6, v2, v1}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "W/ViewTreeOwners: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/vuitton/android/domain/reporter/CrashReporter;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/vuitton/android/domain/reporter/CrashReporter;->e()V

    const-string v2, "vt_owner_fallback_last_activity"

    invoke-interface {v0, v2, p0}, Lcom/vuitton/android/domain/reporter/CrashReporter;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3, v4, v5}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vt_owner_fallback_device"

    invoke-interface {v0, v3, v2}, Lcom/vuitton/android/domain/reporter/CrashReporter;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Lcom/vuitton/android/domain/reporter/CrashReporter;->c(I)V

    sget-object v2, Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;->a:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/vuitton/android/presentation/extensions/ViewTreeOwnersFallbackApplied;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/extensions/ViewTreeOwnersFallbackApplied;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/vuitton/android/domain/reporter/CrashReporter;->b(Ljava/lang/RuntimeException;)V

    :cond_a
    :goto_2
    return-void
.end method

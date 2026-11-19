.class public abstract Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/notification/NotificationBuilderKt$WhenMappings;
    }
.end annotation

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
.field public static a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmg0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmg0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;
    .locals 3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    if-nez v1, :cond_0

    const v1, 0x2c14daed

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vuitton/android/presentation/notification/NotificationBuilderEntryPoint;

    invoke-static {v2, v1}, Ldagger/hilt/EntryPoints;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/notification/NotificationBuilderEntryPoint;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/notification/NotificationBuilderEntryPoint;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v1

    sput-object v1, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_0
    const v1, 0x2c1805c5

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "notificationBuilder"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->d:Z

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->g:Lcom/vuitton/android/presentation/notification/NotificationAction;

    iget-object v0, v0, Lcom/vuitton/android/presentation/notification/NotificationAction;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->b:Z

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/material3/SnackbarDuration;->Indefinite:Landroidx/compose/material3/SnackbarDuration;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->c:Lcom/vuitton/android/presentation/notification/NotificationDuration;

    sget-object v5, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    sget-object p1, Landroidx/compose/material3/SnackbarDuration;->Indefinite:Landroidx/compose/material3/SnackbarDuration;

    goto :goto_1

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_3
    sget-object p1, Landroidx/compose/material3/SnackbarDuration;->Long:Landroidx/compose/material3/SnackbarDuration;

    goto :goto_1

    :cond_4
    sget-object p1, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    :goto_1
    iget-boolean v5, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->f:Z

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->e:Z

    sget-object p0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt$WhenMappings;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v4, :cond_7

    if-ne p0, v0, :cond_6

    if-eqz v1, :cond_5

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->SUCCESS_INVERT:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    :goto_2
    move-object v8, p0

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->ERROR_INVERT:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    goto :goto_2

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_7
    if-eqz v1, :cond_8

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->SUCCESS:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    goto :goto_2

    :cond_8
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->ERROR:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    goto :goto_2

    :goto_3
    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;-><init>(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;)V

    return-object v2
.end method

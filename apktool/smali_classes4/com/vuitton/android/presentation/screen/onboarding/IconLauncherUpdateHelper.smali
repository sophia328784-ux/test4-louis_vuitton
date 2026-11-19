.class public abstract Lcom/vuitton/android/presentation/screen/onboarding/IconLauncherUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/onboarding/IconLauncherUpdateHelper;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".preprod"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".presentation.screen.splash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->c()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-static {p1, v4, v3}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->CLASSIC:Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    return-object p0
.end method

.method public static b(Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ".preprod"

    invoke-static {p2, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ".presentation.screen.splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-static {p2, v2, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-static {}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->c()Lkotlin/enums/EnumEntries;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2, v0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p3, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    :cond_2
    return-void
.end method

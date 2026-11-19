.class public final Landroidx/compose/ui/tooling/PreviewActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/PreviewActivity;",
        "Landroidx/activity/ComponentActivity;",
        "<init>",
        "()V",
        "ui-tooling"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "composable"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 v0, 0x6

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lkotlin/text/StringsKt;->z(Ljava/lang/CharSequence;CII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, p1, p1}, Lkotlin/text/StringsKt;->R(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "parameterProviderClassName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v4, Landroidx/compose/ui/tooling/PreviewLogger;->a:Landroidx/compose/ui/tooling/PreviewLogger$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v6

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "parameterProviderIndex"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v4, :cond_c

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v7, v4

    move v8, v2

    move v9, v8

    move-object v10, v6

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v11, v4, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_3

    if-eqz v9, :cond_2

    :goto_3
    move-object v10, v6

    goto :goto_4

    :cond_2
    move v9, v5

    move-object v10, v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v10, :cond_b

    invoke-virtual {v10, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;

    if-gez v3, :cond_6

    invoke-interface {v4}, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;->a()Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v4}, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;->getCount()I

    move-result v3

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    :goto_5
    if-ge v2, v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;->a()Lkotlin/sequences/Sequence;

    move-result-object v4

    const-string v7, "Sequence doesn\'t contain element at index "

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v3, :cond_9

    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v2

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ne v3, v8, :cond_7

    move-object v6, v9

    goto :goto_7

    :cond_7
    move v8, v10

    goto :goto_6

    :cond_8
    invoke-static {v7, v3, v1}, Ln00;->q(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laz;->v(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    invoke-static {v7, v3, v1}, Ln00;->q(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laz;->v(Ljava/lang/String;)V

    :goto_7
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_9

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PreviewParameterProvider constructor can not have parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lkotlin/jvm/KotlinReflectionNotSupportedError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p0, "Deploying Compose Previews with PreviewParameterProvider arguments requires adding a dependency to the kotlin-reflect library.\nConsider adding \'debugImplementation \"org.jetbrains.kotlin:kotlin-reflect:$kotlin_version\"\' to the module\'s build.gradle."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_c
    new-array v4, v2, [Ljava/lang/Object;

    :cond_d
    :goto_9
    array-length v1, v4

    if-le v1, v5, :cond_e

    new-instance v1, Lhp0;

    invoke-direct {v1, v4, v0, p1}, Lhp0;-><init>([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x33602623    # -8.3807976E7f

    invoke-direct {p1, v0, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    goto :goto_a

    :cond_e
    new-instance v1, Lhp0;

    invoke-direct {v1, v0, p1, v4}, Lhp0;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x7155c95a

    invoke-direct {p1, v0, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    goto :goto_a

    :cond_f
    new-instance v1, Lva;

    invoke-direct {v1, v0, p1}, Lva;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x321af304

    invoke-direct {p1, v0, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    :cond_10
    :goto_a
    return-void
.end method

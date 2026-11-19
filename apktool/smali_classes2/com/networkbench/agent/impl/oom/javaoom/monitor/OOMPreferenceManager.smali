.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u000fJ\u001a\u0010\u0018\u001a\u00020\u000f2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rJ\u000e\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;",
        "",
        "()V",
        "PREFERENCE_NAME",
        "",
        "mPreferences",
        "Landroid/content/SharedPreferences;",
        "getMPreferences",
        "()Landroid/content/SharedPreferences;",
        "mPreferences$delegate",
        "Lkotlin/Lazy;",
        "mPrefix",
        "mSharedPreferencesInvoker",
        "Lkotlin/Function1;",
        "clearUnusedPreference",
        "",
        "preferences",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "getAnalysisTimes",
        "",
        "getFirstLaunchTime",
        "",
        "increaseAnalysisTimes",
        "init",
        "sharedPreferencesInvoker",
        "setFirstLaunchTime",
        "time",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "koom_hprof_analysis"

.field private static final mPreferences$delegate:Lkotlin/Lazy;

.field private static mPrefix:Ljava/lang/String;

.field private static mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager$mPreferences$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager$mPreferences$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMSharedPreferencesInvoker$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mSharedPreferencesInvoker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setMSharedPreferencesInvoker$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final clearUnusedPreference(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/base/Monitor_SharedPreferencesKt;->getAllKeys(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method private final getMPreferences()Landroid/content/SharedPreferences;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final getAnalysisTimes()I
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getFirstLaunchTime()J
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "first_analysis_time"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->setFirstLaunchTime(J)V

    :cond_0
    return-wide v0

    :cond_1
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final increaseAnalysisTimes()V
    .locals 7

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->clearUnusedPreference(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mPrefix"

    if-eqz v2, :cond_1

    const-string v5, "times"

    invoke-static {v2, v5, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public final init(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getVERSION_NAME()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5f

    invoke-static {p0, p1, v0}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public final setFirstLaunchTime(J)V
    .locals 5

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mPrefix"

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "first_analysis_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method

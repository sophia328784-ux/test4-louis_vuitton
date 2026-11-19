.class public final Lcom/dynatrace/android/agent/AdkSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static final k:Lcom/dynatrace/android/agent/AdkSettings;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:I

.field public d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

.field public e:Landroid/content/Context;

.field public f:Lcom/dynatrace/android/agent/conf/Configuration;

.field public volatile g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    sput-object v0, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    sput-object v0, Lcom/dynatrace/android/agent/AdkSettings;->j:Ljava/lang/String;

    new-instance v0, Lcom/dynatrace/android/agent/AdkSettings;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v2, v0, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    new-instance v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    iput v2, v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    new-instance v2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {v2, v1}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "switching settings: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iput-object v2, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    sput-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/agent/AdkSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "DTXNewVisitorSent"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Lcom/dynatrace/android/agent/conf/Configuration;Landroid/app/Application;)V
    .locals 3

    iput-object p1, p0, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xfa

    invoke-static {v0, p2}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    iget-object p2, p0, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/dynatrace/android/agent/AdkSettings;->j:Ljava/lang/String;

    iget-object p2, p0, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    new-instance v0, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/Configuration;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/dynatrace/android/agent/conf/PreferencesManager;

    const-string v1, "com.dynatrace.android.dtxPref"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lcom/dynatrace/android/agent/conf/PreferencesManager;-><init>(Landroid/content/SharedPreferences;Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;)V

    iput-object p1, p0, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    iget-object p0, p0, Lcom/dynatrace/android/agent/AdkSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p1, "DTXNewVisitorSent"

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_1
    return-void
.end method

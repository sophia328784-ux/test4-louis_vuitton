.class public abstract Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/common/utility/BasicPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "YCMKSDK_ANDROID_QUICK_LAUNCH_SETTING"

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "SETTING_COUNTRY_CODE"

    invoke-virtual {v1, v2, v0}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "SETTING_LANGUAGE_LOCALE_CODE"

    invoke-virtual {v1, v2, v0}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_BUILT_IN_CONTENT_VERSION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BUILT_IN_CONTENT_VERSION_STRING"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.class public final synthetic Ln7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget p0, p0, Ln7;->a:I

    const-string v0, "LookHandler"

    const-string v1, "Doesn\'t have a valid license."

    const-string v2, "Module \'PerfectLibFaceTracking\' is missing."

    const-string v3, "[clearAll] success"

    const-string v4, "SkuHandler"

    const-string v5, "[clearAll] ended."

    const-string v6, "release"

    const/4 v7, 0x0

    const-string v8, "ApplyEffectUtility"

    const-string v9, "ContentPreloader"

    const/4 v10, 0x3

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "SETTING_LANGUAGE_LOCALE_CODE_FOR_SKU"

    invoke-virtual {v1, v2, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SETTING_COUNTRY_CODE_FOR_SKU"

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "[syncServerInternal] end"

    invoke-static {v10, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[downloadProductsInternal] end"

    invoke-static {v10, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "SkuCacheStrategyHelper"

    const-string v0, "[queryForCacheFirstThenUpdate] end"

    invoke-static {v10, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "SkinCare3RecommendationHandler"

    invoke-static {v10, p0, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    const-string p0, "ShadeFinderRecommendationHandler"

    invoke-static {v10, p0, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->p:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    invoke-direct {p0, v2}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v1}, Lmt;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_6
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "pf.cfg"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/common/utility/FileUtils;->e(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    const-string v0, "FileUtils"

    const-string v1, "[readText] failed."

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v1, Lcom/perfectcorp/perfectlib/internal/a;

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/internal/a;

    if-eqz p0, :cond_4

    sput-object p0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "new config is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_2
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/a;->logcat:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/perfectcorp/common/logger/j;->c(Z)V

    sput v1, Lcom/perfectcorp/common/utility/Log;->a:I

    :cond_5
    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/internal/a;->file:Z

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/perfectcorp/common/logger/j;->a()V

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/logger/j;->b(Ljava/io/File;)V

    sget-object p0, Lcom/perfectcorp/common/logger/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/logger/a;

    if-eqz p0, :cond_6

    iput v1, p0, Lcom/perfectcorp/common/logger/a;->b:I

    :cond_6
    invoke-static {}, Lcom/perfectcorp/perfectlib/internal/b;->a()V

    return-void

    :pswitch_7
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string p0, "com.perfectcorp.perfectlib.TutorialHandler"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_8
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-class p0, Lcom/perfectcorp/perfectlib/LookHandler;

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_9
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-class p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    invoke-virtual {p0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_a
    invoke-static {}, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->b()V

    return-void

    :pswitch_b
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "SETTING_LANGUAGE_LOCALE_CODE_FOR_NAIL_LOOK"

    invoke-virtual {v1, v2, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SETTING_COUNTRY_CODE_FOR_NAIL_LOOK"

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_c
    const-string p0, "NailLookHandler"

    invoke-static {v10, p0, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_d
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "SETTING_LANGUAGE_LOCALE_CODE_FOR_LOOK"

    invoke-virtual {v1, v2, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SETTING_COUNTRY_CODE_FOR_LOOK"

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_e
    const-string p0, "[deleteLooks] success"

    invoke-static {v10, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_f
    invoke-static {v10, v0, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_10
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "SETTING_LANGUAGE_LOCALE_CODE_FOR_JEWELRY_LOOK"

    invoke-virtual {v1, v2, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SETTING_COUNTRY_CODE_FOR_JEWELRY_LOOK"

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_11
    const-string p0, "JewelryLookHandler"

    invoke-static {v10, p0, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_12
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-boolean p0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->p:Z

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    invoke-direct {p0, v2}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v1}, Lmt;->i(Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_13
    const-string p0, "[preloadFunStickerContent] done"

    invoke-static {v10, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_14
    const-string p0, "[preloadIdSystemContent] done"

    invoke-static {v10, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_15
    const-string p0, "[preloadLook] complete"

    invoke-static {v10, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_16
    const-string p0, "[preloadSkuSet] complete"

    invoke-static {v10, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_17
    const-string p0, "[preloadSku] complete"

    invoke-static {v10, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_18
    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string p0, "[downloadSkuSets] queryForCacheFirstThenUpdate done"

    invoke-static {v10, v8, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_19
    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string p0, "[downloadSkuSets] queryForCacheFirstThenUpdate disposed"

    invoke-static {v10, v8, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1a
    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string p0, "[handleSkuSetCacheFirst] end"

    invoke-static {v10, v8, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1b
    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string p0, "[transformToRelatedSkuGuidObservable] end"

    invoke-static {v10, v8, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1c
    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string p0, "[downloadSkuSets] end"

    invoke-static {v10, v8, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

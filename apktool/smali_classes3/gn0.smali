.class public final synthetic Lgn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/Configuration;I)V
    .locals 0

    iput p2, p0, Lgn0;->a:I

    iput-object p1, p0, Lgn0;->b:Lcom/perfectcorp/perfectlib/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lgn0;->a:I

    const-class v1, Lcom/perfectcorp/perfectlib/LookHandler;

    const/4 v2, 0x3

    const-string v3, "PerfectLib"

    const/4 v4, 0x0

    iget-object p0, p0, Lgn0;->b:Lcom/perfectcorp/perfectlib/Configuration;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->c:Lcom/perfectcorp/perfectlib/Path;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/Path;->a:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Path;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/a;->c(Ljava/lang/String;Z)Lcom/perfectcorp/perfectlib/ymk/a$a;

    move-result-object p0

    sput-object p0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {v4, p0}, Lcom/perfectcorp/perfectlib/ymk/a;->c(Ljava/lang/String;Z)Lcom/perfectcorp/perfectlib/ymk/a$a;

    move-result-object p0

    sput-object p0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    :goto_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->h:Ljava/util/List;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->j:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->g:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_1
    sget-boolean p0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->x:Z

    const-string v0, "SdkConfig"

    if-nez p0, :cond_2

    const-string p0, "[setupHairStyleLicense] no module"

    :goto_2
    invoke-static {v2, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/a$a;->i:Lcom/perfectcorp/perfectlib/ymk/a$a$a;

    if-nez p0, :cond_3

    const-string p0, "[setupHairStyleLicense] license is null"

    goto :goto_2

    :cond_3
    const-string p0, "[setupHairStyleLicense] setup"

    invoke-static {v2, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.perfectcorp.perfectlib.HairStylist"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "setupServerLicenseSetting"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->i:Lcom/perfectcorp/perfectlib/ymk/a$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a$a;->a:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a;->i:Lcom/perfectcorp/perfectlib/ymk/a$a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a$a;->b:Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ymk/a$a;->i:Lcom/perfectcorp/perfectlib/ymk/a$a$a;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ymk/a$a$a;->c:Ljava/lang/String;

    filled-new-array {v0, v1, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v0, "SDK configurations"

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v0, "VERSION"

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->a:Ljava/lang/String;

    const-string v1, "COUNTLY_ID"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->b:Ljava/lang/String;

    const-string v1, "COUNTLY_DOMAIN"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->c:Ljava/lang/String;

    const-string v1, "API_KEY"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->d:Ljava/lang/String;

    const-string v1, "PARAMETER_PLATFORM"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->e:Ljava/lang/String;

    const-string v1, "PARAMETER_PRODUCT"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->f:Ljava/lang/String;

    const-string v1, "PARAMETER_VERSION"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->g:Ljava/lang/String;

    const-string v1, "PARAMETER_VERSION_TYPE"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->h:Ljava/util/List;

    const-string v1, "DOMAINS"

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "localeCode="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "countryCode="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->a(Landroid/content/Context;)V

    goto :goto_4

    :cond_4
    const-string p0, "No valid configuration file."

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    sget-object v5, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->SD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FUN_STICKER_QUALITY"

    invoke-virtual {v0, v6, v5}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    if-eq v0, p0, :cond_5

    const-string v0, "fun sticker quality changed"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "deleteLooksForFunStickerQualityChanged"

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v6, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/Globals;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "maxTextureSize="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/perfectcorp/common/opengl/GLInfo;->a:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->c()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "enable test config"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-eqz v0, :cond_7

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler;

    const-class v2, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "deleteLooksByServerResponse"

    invoke-virtual {v1, p0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->w:Z

    if-eqz p0, :cond_7

    const-string p0, "com.perfectcorp.perfectlib.TutorialHandler"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->o:Lcom/perfectcorp/perfectlib/internal/c;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/c;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

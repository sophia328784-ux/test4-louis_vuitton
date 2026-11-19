.class public abstract Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;,
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;,
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$StatusErrorException;
    }
.end annotation


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static volatile b:Ljava/lang/String;

.field public static volatile c:Ljava/lang/String;


# direct methods
.method public static a(Lcom/perfectcorp/common/utility/HttpRequest;)V
    .locals 2

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->b(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lang"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LocaleCodeNotSetException;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/exceptions/LocaleCodeNotSetException;-><init>()V

    throw p0
.end method

.method public static b(Lcom/perfectcorp/common/utility/HttpRequest;)V
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->d:Ljava/lang/String;

    const-string v1, "platform"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->e:Ljava/lang/String;

    const-string v1, "product"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->f:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->g:Ljava/lang/String;

    const-string v1, "versiontype"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagename"

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/widgetpool/aboutPage/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "${domain}"

    const-string v1, "${DOMAIN}"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v3

    const-string v4, "HE_SERVER_DOMAIN"

    invoke-virtual {v3, v4, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v3

    const-string v4, "getHeDomainString failed. domain="

    const-string v5, ", url="

    invoke-static {v4, v2, v5, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NetworkManager"

    invoke-static {v4, v2, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->b:Ljava/lang/String;

    const-string v1, "${DOMAIN}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "${domain}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "NetworkManager"

    const-string v1, "getHeDomainUri"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;)V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->f:Ljava/lang/String;

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->h:Ljava/lang/String;

    const-string v3, ", testbed="

    const-string v4, ", heServerDomain="

    const-string v5, "Update domain from response, production="

    invoke-static {v5, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->b:Ljava/lang/String;

    const-string v5, ", aiProductionDomain="

    const-string v6, ", aiTestbedDomain="

    invoke-static {v3, v4, v5, v2, v6}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "NetworkManager"

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v3

    const-string v6, "ENABLE_PREVIEW_MODE"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    :cond_0
    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v2, p0

    :cond_1
    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->c:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Update domain from response, sUriDomain="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", aiApiDomain="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->c:Ljava/lang/String;

    invoke-static {p0, v0, v4, v5}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.class public Lcom/sightcall/universal/scenario/steps/ConnectionStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/scenario/Step$WithSession;


# static fields
.field public static declined:Z = false


# instance fields
.field private final session:Lcom/sightcall/universal/model/Session;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    return-void
.end method

.method private configureUserWithDefaultValues(Lnet/rtccloud/sdk/User$Builder;Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lnet/rtccloud/sdk/User$Builder<",
            "**>;>(TU;",
            "Lcom/sightcall/universal/model/Session;",
            "Landroid/content/Context;",
            ")TU;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sightcall/universal/model/Session;->hap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->hap(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;

    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createDisplayName(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/User$Builder;->displayName(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;

    iget-object p0, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->suffix()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    const/4 p3, 0x0

    invoke-static {p3}, Lnet/rtccloud/sdk/util/Utils;->safeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sightcall/universal/model/Config;->suffix(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    :cond_0
    iget-object p0, p2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->suffix()Ljava/lang/String;

    move-result-object p0

    instance-of p2, p1, Lnet/rtccloud/sdk/User$External$Builder;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lnet/rtccloud/sdk/User$External$Builder;

    invoke-virtual {p2, p0}, Lnet/rtccloud/sdk/User$External$Builder;->suffix(Ljava/lang/String;)Lnet/rtccloud/sdk/User$External$Builder;

    return-object p1

    :cond_1
    instance-of p2, p1, Lnet/rtccloud/sdk/User$SixDigits$Builder;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lnet/rtccloud/sdk/User$SixDigits$Builder;

    invoke-virtual {p2, p0}, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix(Ljava/lang/String;)Lnet/rtccloud/sdk/User$SixDigits$Builder;

    :cond_2
    return-object p1
.end method

.method private createDisplayName(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->patchDisplayName()V

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->reference()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object p0

    sget-object p1, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->CODE:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    if-ne p0, p1, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    invoke-static {p2}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->deviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createExternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$External$Builder;
    .locals 2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->appId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/User;->external(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$External$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->configureUserWithDefaultValues(Lnet/rtccloud/sdk/User$Builder;Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Builder;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/User$External$Builder;

    return-object p0
.end method

.method private createInternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Internal$Builder;
    .locals 4

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->appId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->rtccToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/User;->internal(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$Internal$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$Builder;->extras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->configureUserWithDefaultValues(Lnet/rtccloud/sdk/User$Builder;Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Builder;

    return-object v0
.end method

.method private createSixDigitsUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$SixDigits$Builder;
    .locals 2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->appId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->pin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/User;->sixDigits(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$SixDigits$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->configureUserWithDefaultValues(Lnet/rtccloud/sdk/User$Builder;Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Builder;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;

    return-object p0
.end method

.method private createUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/model/Session;",
            "Landroid/content/Context;",
            ")",
            "Lnet/rtccloud/sdk/User$Builder<",
            "**>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v2

    sget-object v3, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createExternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$External$Builder;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v3, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createExternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$External$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Invalid configuration mode to create a user: "

    invoke-static {v0, p0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v2, v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createInternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Internal$Builder;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createSixDigitsUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$SixDigits$Builder;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v2, v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createInternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Internal$Builder;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createExternalUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$External$Builder;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Call Distribution is null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private findConsoleSslPlugin(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/ProviderCustomization;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/ProviderCustomization;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "console_ssl_plugin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/ProviderCustomization;->value()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->parseCustomBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findLocalUdpCusto(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/ProviderCustomization;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/ProviderCustomization;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtcc_localudp_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/ProviderCustomization;->value()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->parseCustomBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findUsapCusto(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/ProviderCustomization;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/ProviderCustomization;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtcc_usapturn_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/ProviderCustomization;->value()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->parseCustomBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private nextStep()Lcom/sightcall/universal/scenario/Step;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Usecase;->callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v3, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;->with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-ne v0, v5, :cond_3

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    const-string v1, " ~ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    :goto_0
    return-object v2

    :cond_5
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/AcdCallStep;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;->with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/DirectCallStep;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized onUserConnected()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->status()Lnet/rtccloud/sdk/User$Status;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->utils()Lnet/rtccloud/sdk/UtilsModule;

    move-result-object v0

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v2, v2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Config;->deadPartyTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/UtilsModule;->setDeadPartyTimeout(I)V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, v2, v1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onConnected(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/User;)V

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->nextStep()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_2
    filled-new-array {v0}, [Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    const-string v3, "Wait for full CONNECTED/REGISTERED rtcc: %s user: %s"

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->status()Lnet/rtccloud/sdk/User$Status;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private parseCustomBoolean(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private patchDisplayName()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p0

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->displayNameMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "optional"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onDisplayNameSkipped(Lcom/sightcall/universal/model/Session;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onDisplayNameSet(Lcom/sightcall/universal/model/Session;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->declined:Z

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 p0, 0x3

    if-eq v2, p0, :cond_1

    const/4 p0, 0x4

    if-eq v2, p0, :cond_3

    const/4 p0, 0x5

    if-eq v2, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_1
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onRegistrationEvent(Lnet/rtccloud/sdk/event/presence/RegistrationEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->status()Lnet/rtccloud/sdk/User$Status;

    move-result-object p1

    sget-object v0, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->onUserConnected()V

    :cond_0
    return-void
.end method

.method public onRtccError(Lnet/rtccloud/sdk/Rtcc$Error;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->toastConnectionError(Lnet/rtccloud/sdk/Rtcc$Error;)V

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq p1, v0, :cond_2

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->interrupt()V

    return-void
.end method

.method public onRtccStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 4
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->declined:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->uid()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/fcm/messages/GuestReady;->guestUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->guestUid()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "recipent"

    :cond_2
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object v0

    const-string v1, "@M2M_DECLINE@"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lnet/rtccloud/sdk/DataChannelModule;->send(Ljava/lang/Object;JLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->interrupt()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->onUserConnected()V

    return-void
.end method

.method public onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->networkExpected()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->interrupt()V

    return-void

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->createUser(Lcom/sightcall/universal/model/Session;Landroid/content/Context;)Lnet/rtccloud/sdk/User$Builder;

    move-result-object p1

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->providerCustomizations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->findUsapCusto(Ljava/util/List;)Z

    move-result v0

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->providerCustomizations()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->findLocalUdpCusto(Ljava/util/List;)Z

    move-result v1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/UniversalAgent;->providerCustomizations()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->findConsoleSslPlugin(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/User$Builder;->rtccLocalUdpDisabled(Z)Lnet/rtccloud/sdk/User$Builder;

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->rtccUsapTurnDisabled(Z)Lnet/rtccloud/sdk/User$Builder;

    invoke-virtual {p1, v2}, Lnet/rtccloud/sdk/User$Builder;->rtccAttendeeSslPlugin(Z)Lnet/rtccloud/sdk/User$Builder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->localUdp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->rtccLocalUdpDisabled(Z)Lnet/rtccloud/sdk/User$Builder;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->usapTurn()Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->rtccUsapTurnDisabled(Z)Lnet/rtccloud/sdk/User$Builder;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->sslPlugin()Z

    move-result v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->rtccAttendeeSslPlugin(Z)Lnet/rtccloud/sdk/User$Builder;

    :goto_1
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-boolean v0, v0, Lcom/sightcall/universal/agent/Usecase;->useAdvancedAnnotations:Z

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->rtccAdvancedAnnotations(Z)Lnet/rtccloud/sdk/User$Builder;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/api/Environment;->getEnvironmentPlatform()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->rtccEnvironment(I)Lnet/rtccloud/sdk/User$Builder;

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getSelectedLanguage()Lcom/sightcall/livetranslation/domain/Language;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Language;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->liveTranslationLanguage(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/User$Builder;->liveTranslationLanguage(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;

    :goto_2
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->rtccJwt:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lnet/rtccloud/sdk/Rtcc;->connect(Lnet/rtccloud/sdk/User$Builder;Ljava/lang/String;)Lnet/rtccloud/sdk/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to connect this user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->interrupt()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->onServiceDisconnected()V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/ar/UniversalAr;->checkArCoreAvailability()V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    return-void
.end method

.method public session()Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method

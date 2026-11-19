.class public Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/sightcall/universal/agent/RegisterCallback;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/scenario/Step;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/sightcall/universal/agent/RegisterCallback;",
        "Lcom/google/android/gms/tasks/OnFailureListener;"
    }
.end annotation


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final config:Lcom/sightcall/universal/model/Config;

.field private final context:Landroid/content/Context;

.field private final defaultEnvironment:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/api/Environment;",
            ">;"
        }
    .end annotation
.end field

.field private environmentToRestore:Lcom/sightcall/universal/api/Environment;

.field private final startWithOldLogin:Z

.field private final temporaryToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AgentRegistrationStep"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->config:Lcom/sightcall/universal/model/Config;

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->temporaryToken:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/util/UniversalSettings;->defaultEnvironment()Lcom/sightcall/universal/util/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->defaultEnvironment:Lcom/sightcall/universal/util/Lazy;

    iput-boolean p3, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->startWithOldLogin:Z

    return-void
.end method

.method public static with(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;
    .locals 1

    .line 10
    new-instance v0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;-><init>(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)V

    return-object v0
.end method

.method public static with(Ljava/lang/String;Z)Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Config;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Config;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->with(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->interrupt()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->defaultEnvironment:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/api/Environment;

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->environmentToRestore:Lcom/sightcall/universal/api/Environment;

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->context:Landroid/content/Context;

    sget v0, Lcom/sightcall/universal/R$string;->universal_agent_fcm_token_error:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V
    .locals 2

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->context:Landroid/content/Context;

    sget v0, Lcom/sightcall/universal/R$string;->universal_agent_registration_error:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public onRegisterSuccess(Lcom/sightcall/universal/agent/RegisterCallback$Success;)V
    .locals 2

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->context:Landroid/content/Context;

    sget v0, Lcom/sightcall/universal/R$string;->universal_agent_registration_success:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Override default environment to [%s]"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->defaultEnvironment:Lcom/sightcall/universal/util/Lazy;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->startWithOldLogin:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->temporaryToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;->temporaryToken(Ljava/lang/String;)Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;->fcmToken(Ljava/lang/String;)Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/registration/OldRegistration$Builder;->build()Lcom/sightcall/universal/agent/registration/OldRegistration;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->temporaryToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->context:Landroid/content/Context;

    sget v2, Lcom/sightcall/universal/R$string;->google_app_id:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sightcall/universal/agent/registration/NewRegistrationMapperKt;->createNewRegistrationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->startWithOldLogin:Z

    invoke-virtual {v0, p1, p0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->register(Lcom/sightcall/universal/agent/registration/RegistrationRequest;Lcom/sightcall/universal/agent/RegisterCallback;Z)V

    return-void
.end method

.method public onUnbind()V
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->defaultEnvironment:Lcom/sightcall/universal/util/Lazy;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/AgentRegistrationStep;->environmentToRestore:Lcom/sightcall/universal/api/Environment;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

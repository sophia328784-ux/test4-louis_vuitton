.class Lcom/batch/android/v0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/v0/j;->a(Lcom/batch/android/PushRegistrationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/batch/android/PushRegistrationProvider;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/batch/android/v0/j;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/j;Lcom/batch/android/PushRegistrationProvider;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/v0/j$a;->d:Lcom/batch/android/v0/j;

    iput-object p2, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    iput-object p3, p0, Lcom/batch/android/v0/j$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "push_registration"

    return-object p0
.end method

.method public run()V
    .locals 6

    const-string v0, "Push"

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    invoke-interface {v1}, Lcom/batch/android/PushRegistrationProvider;->checkLibraryAvailability()V
    :try_end_0
    .catch Lcom/batch/android/PushRegistrationProviderAvailabilityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    invoke-interface {v1}, Lcom/batch/android/PushRegistrationProvider;->getRegistration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    const/16 v5, 0x1000

    if-le v3, v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/batch/android/PushRegistrationProvider;->getShortname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" did return a Registration ID/Push token longer than 4096, ignoring it."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/batch/android/BatchPushRegistration;

    invoke-interface {v4}, Lcom/batch/android/PushRegistrationProvider;->getShortname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    invoke-interface {v3}, Lcom/batch/android/PushRegistrationProvider;->getSenderID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    invoke-interface {v4}, Lcom/batch/android/PushRegistrationProvider;->getGCPProjectID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/batch/android/BatchPushRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/v0/j$a;->d:Lcom/batch/android/v0/j;

    iget-object p0, p0, Lcom/batch/android/v0/j$a;->c:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/v0/j;Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V

    return-void

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    invoke-interface {p0}, Lcom/batch/android/PushRegistrationProvider;->getShortname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" did not return a registration."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Provider \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/v0/j$a;->b:Lcom/batch/android/PushRegistrationProvider;

    invoke-interface {p0}, Lcom/batch/android/PushRegistrationProvider;->getShortname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" could not register for push: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

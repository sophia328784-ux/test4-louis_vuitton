.class public abstract Lcom/batch/android/d1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/PushRegistrationProvider;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/d1/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/d1/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/batch/android/d1/a;->c()V

    return-void
.end method

.method private a()Z
    .locals 0

    :try_start_0
    sget-object p0, Lcom/google/firebase/FirebaseApp;->k:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public c()V
    .locals 6

    const-string v0, "Push"

    const-string v1, "Using FCM Sender ID from builtin configuration: "

    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->d()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, v2, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->a()V

    iget-object v4, v3, Lcom/google/firebase/FirebaseOptions;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p0, "Could not register for FCM Push: Could not get a Sender ID for this project. Are notifications well configured in the project\'s console and your google-services.json up to date?"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v4, p0, Lcom/batch/android/d1/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->a()V

    iget-object v2, v3, Lcom/google/firebase/FirebaseOptions;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/batch/android/d1/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Project ID: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/d1/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "Could not register for FCM Push: Firebase has thrown an exception"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public checkLibraryAvailability()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/PushRegistrationProviderAvailabilityException;
        }
    .end annotation

    const-string v0, "Push"

    const-string v1, "Checking FCM libraries availability"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/batch/android/d1/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/batch/android/d1/a;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/batch/android/v0/j;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/batch/android/PushRegistrationProviderAvailabilityException;

    const-string v0, "com.batch.android.BatchPushService is missing from the manifest."

    invoke-direct {p0, v0}, Lcom/batch/android/PushRegistrationProviderAvailabilityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/batch/android/PushRegistrationProviderAvailabilityException;

    const-string v0, "Firebase Messaging is missing. Did you add \'com.google.firebase:firebase-messaging\' to your gradle dependencies?"

    invoke-direct {p0, v0}, Lcom/batch/android/PushRegistrationProviderAvailabilityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/batch/android/PushRegistrationProviderAvailabilityException;

    const-string v0, "Firebase Core is missing. Did you add \'com.google.firebase:firebase-core\' to your gradle dependencies?"

    invoke-direct {p0, v0}, Lcom/batch/android/PushRegistrationProviderAvailabilityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkServiceAvailability()V
    .locals 0

    return-void
.end method

.method public getGCPProjectID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/d1/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getSenderID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/d1/a;->a:Ljava/lang/String;

    return-object p0
.end method

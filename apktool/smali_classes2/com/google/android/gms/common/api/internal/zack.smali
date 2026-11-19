.class final Lcom/google/android/gms/common/api/internal/zack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/signin/internal/zak;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zacm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zack;->zaa:Lcom/google/android/gms/signin/internal/zak;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zack;->zab:Lcom/google/android/gms/common/api/internal/zacm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zack;->zab:Lcom/google/android/gms/common/api/internal/zacm;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zack;->zaa:Lcom/google/android/gms/signin/internal/zak;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zak;->c:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->W1()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zak;->d:Lcom/google/android/gms/common/internal/zay;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zay;->d:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->W1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "SignInCoordinator"

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->n:Lcom/google/android/gms/common/api/internal/zacl;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->m:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacm;->n:Lcom/google/android/gms/common/api/internal/zacl;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zay;->c:Landroid/os/IBinder;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sget v2, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->a:I

    const-string v2, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v4, :cond_2

    move-object p0, v3

    check-cast p0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/gms/common/internal/zzt;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    move-object p0, v3

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zacm;->k:Ljava/util/Set;

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/zabn;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabn;->d:Ljava/util/Set;

    iget-boolean v3, v1, Lcom/google/android/gms/common/api/internal/zabn;->e:Z

    if-eqz v3, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabn;->a:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/common/api/Api$Client;->i(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v3, "Received null response from onSignInSuccess"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2

    :cond_5
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->n:Lcom/google/android/gms/common/api/internal/zacl;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_6
    :goto_2
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->m:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void
.end method

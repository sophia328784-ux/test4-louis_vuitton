.class final Lcom/google/ar/core/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/ar/core/h;

.field final synthetic c:Lcom/google/ar/core/y;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/y;Landroid/content/Context;Lcom/google/ar/core/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/ab;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ar/core/ab;->c:Lcom/google/ar/core/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/ab;->c:Lcom/google/ar/core/y;

    iget-object v0, v0, Lcom/google/ar/core/y;->c:Lcom/google/ar/core/dependencies/h;

    iget-object v1, p0, Lcom/google/ar/core/ab;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package.name"

    const-string v4, "com.google.ar.core"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/ar/core/aa;

    iget-object v4, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/h;

    invoke-direct {v3, p0, v4}, Lcom/google/ar/core/aa;-><init>(Lcom/google/ar/core/ab;Lcom/google/ar/core/h;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ar/core/dependencies/h;->e(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/ar/core/dependencies/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/h;

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p0, v0}, Lcom/google/ar/core/h;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void
.end method

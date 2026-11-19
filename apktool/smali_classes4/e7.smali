.class public final synthetic Le7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;I)V
    .locals 0

    iput p2, p0, Le7;->b:I

    iput-object p1, p0, Le7;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget v0, p0, Le7;->b:I

    iget-object p0, p0, Le7;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;

    packed-switch v0, :pswitch_data_0

    :try_start_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    const-string v1, "FCM Token"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    const-string v1, "Firebase device ID"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V
    :try_end_1
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

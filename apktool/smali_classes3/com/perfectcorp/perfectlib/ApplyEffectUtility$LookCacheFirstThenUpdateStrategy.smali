.class abstract Lcom/perfectcorp/perfectlib/ApplyEffectUtility$LookCacheFirstThenUpdateStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ApplyEffectUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LookCacheFirstThenUpdateStrategy"
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->a:Ljava/lang/String;

    const-string v1, "[updateDownloadedLook] Record deleted."

    const-string v2, "LookCacheFirstThenUpdateStrategy"

    :try_start_0
    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "[updateDownloadedLook] MakeupItemMetadata parsed."

    const/4 v4, 0x3

    invoke-static {v4, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :try_start_1
    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    const-string v5, "[updateDownloadedLook] Old look deleted."

    invoke-static {v4, v2, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/camera/panel/a;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v5

    iput-boolean p0, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->o:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b()Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    const-string p0, "[updateDownloadedLook] Look updated."

    invoke-static {v4, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/LookHandler;->d(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    const-string p0, "[updateDownloadedLook] Modified date updated."

    invoke-static {v4, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iget-wide v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->b:J

    invoke-static {p0, v5, v6, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->b(Landroid/database/sqlite/SQLiteDatabase;JLcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    const-string p0, "[updateDownloadedLook] MakeupItemMetadata updated."

    invoke-static {v4, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->d(Ljava/lang/String;)V

    invoke-static {v4, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    const-string p1, "[updateDownloadedLook] updateDownloadedLook failed."

    invoke-static {v2, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->d(Ljava/lang/String;)V

    invoke-static {v4, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->d(Ljava/lang/String;)V

    invoke-static {v4, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    throw p0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[updateDownloadedLook] Parse JSON failed. row="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->d(Ljava/lang/String;)V

    return-void
.end method

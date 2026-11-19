.class public final synthetic Lcom/perfectcorp/perfectlib/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/SharedPreferences$Editor;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/f4;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/f4;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/f4;->d:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/f4;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/f4;->f:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    iput-boolean p6, p0, Lcom/perfectcorp/perfectlib/f4;->g:Z

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/f4;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d;->result:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a;->lastModified:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/f4;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/f4;->c:Ljava/lang/String;

    const/4 v6, 0x3

    const-string v7, "SkinCare3RecommendationHandler"

    const-string v8, "LAST_SETTING_ID"

    const-string v9, "LAST_SURVEY_ID"

    const-string v10, "LAST_MODIFIED"

    if-lez v2, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-wide/high16 v11, -0x8000000000000000L

    invoke-virtual {v2, v10, v11, v12}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-ltz v11, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v11}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v2, v8, v11}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "[syncServerInternal] up-to-date"

    invoke-static {v6, v7, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/m3;

    invoke-direct {p0, v3}, Lcom/perfectcorp/perfectlib/m3;-><init>(I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/f4;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_2

    const-string p0, "[syncServerInternal] no recommendation data"

    invoke-static {v6, v7, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->f()V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    return-object p0

    :cond_2
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a;->baseURLs:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a$a;

    if-eqz v0, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/f4;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/f4;->f:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a;->baseURLs:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a$a;->surveyContentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v9, "surveyId"

    invoke-virtual {v0, v9, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v4, Lsw0;

    invoke-direct {v4, v7, v0, v1}, Lsw0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v4, Lna0;

    const/4 v9, 0x4

    invoke-direct {v4, v2, v8, v9}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v4, Lpv0;

    const/4 v9, 0x5

    invoke-direct {v4, v9}, Lpv0;-><init>(I)V

    new-instance v9, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v9, v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v0, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    :goto_1
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a;->baseURLs:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a$a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d$a$a;->recommendationSettingUrlV2:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "settingId"

    invoke-virtual {p1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lsw0;

    const/4 v5, 0x1

    invoke-direct {v4, v7, p1, v5}, Lsw0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v4, Lcom/perfectcorp/perfectlib/c0;

    invoke-direct {v4, v2, v8, v7, v6}, Lcom/perfectcorp/perfectlib/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, p1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lpv0;

    const/4 v4, 0x6

    invoke-direct {p1, v4}, Lpv0;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p1

    new-instance v2, Lpv0;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Lpv0;-><init>(I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v4, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p1, Lld;

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/f4;->g:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/f4;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, v7, v8, v2, p0}, Lld;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;ZLjava/util/concurrent/atomic/AtomicReference;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p0, v4, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    if-nez v2, :cond_4

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_2

    :cond_4
    new-instance p1, Lo7;

    const/16 v2, 0x8

    invoke-direct {p1, v7, v8, v2}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p1

    :goto_2
    new-array v2, v6, [Lcom/perfectcorp/thirdparty/io/reactivex/b;

    aput-object v0, v2, v1

    aput-object p0, v2, v5

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->d([Lcom/perfectcorp/thirdparty/io/reactivex/b;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/NullBaseURLsException;

    const-string p1, "BaseURLs is Null."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/NullBaseURLsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

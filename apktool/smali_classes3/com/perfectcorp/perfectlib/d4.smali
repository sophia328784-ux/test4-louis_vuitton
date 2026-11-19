.class public final synthetic Lcom/perfectcorp/perfectlib/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/common/utility/EventPublisher;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/utility/EventPublisher;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/d4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/d4;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/d4;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/utility/EventPublisher;)V
    .locals 0

    .line 11
    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/perfectlib/d4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/d4;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/d4;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lcom/perfectcorp/perfectlib/d4;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/d4;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/d4;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v4, Ls21;

    invoke-direct {v4, v0, v3}, Ls21;-><init>(Lcom/perfectcorp/common/utility/EventPublisher;I)V

    new-instance v5, Ls21;

    invoke-direct {v5, v0, v2}, Ls21;-><init>(Lcom/perfectcorp/common/utility/EventPublisher;I)V

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    invoke-static {v0, p0, v4}, Lcom/perfectcorp/perfectlib/TagHandler;->b(Lcom/perfectcorp/perfectlib/TagHandler$Type;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v0

    sget-object v4, Lcom/perfectcorp/perfectlib/TagHandler$Type;->b:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    invoke-static {v4, p0, v5}, Lcom/perfectcorp/perfectlib/TagHandler;->b(Lcom/perfectcorp/perfectlib/TagHandler$Type;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-array v1, v1, [Lcom/perfectcorp/thirdparty/io/reactivex/b;

    aput-object v0, v1, v3

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->d([Lcom/perfectcorp/thirdparty/io/reactivex/b;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v8, p0, Lcom/perfectcorp/perfectlib/d4;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/d4;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    new-instance v9, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object p0, v9, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->a:Lcom/perfectcorp/common/utility/EventPublisher;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-ne p0, v0, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/Configuration;->k:Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/Configuration;->l:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[syncServerInternal] needToDownloadThumbnail="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", surveyId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", settingId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    const-string v4, "SkinCare3RecommendationHandler"

    invoke-static {v0, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget-object p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance p0, Lcom/perfectcorp/perfectlib/y3;

    invoke-direct {p0, v9, v2}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$f;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$f;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$f;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v4, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$e;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$e;-><init>()V

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$e;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v4

    new-instance v12, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$g;

    invoke-direct {v12}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$g;-><init>()V

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$g;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v12

    new-instance v13, Lcom/perfectcorp/perfectlib/z0;

    const/4 v14, 0x6

    invoke-direct {v13, v8, v14}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v13}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a(Lcom/perfectcorp/perfectlib/z0;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    move-result-object v13

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    aput-object p0, v0, v3

    aput-object v4, v0, v2

    aput-object v12, v0, v1

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;

    invoke-direct {p0, v0, v13}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;-><init>([Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lxv0;

    invoke-direct {v0, v9, v1}, Lxv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v4, Lcom/perfectcorp/perfectlib/f4;

    invoke-direct/range {v4 .. v11}, Lcom/perfectcorp/perfectlib/f4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;ZLjava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {v0, p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lrw0;

    invoke-direct {p0, v11, v7, v9, v3}, Lrw0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/SkinCareRecommendationIdNotSetException;

    const-string v0, "Doesn\'t have skin care setting ID."

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/SkinCareRecommendationIdNotSetException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

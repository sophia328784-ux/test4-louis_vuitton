.class public Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdSystemFiles"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Collection;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->b:Ljava/util/Collection;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 1

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->b:Ljava/util/Collection;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance p3, Lp3;

    const/16 v0, 0x1b

    invoke-direct {p3, p0, p2, v0}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-virtual {p2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "IDC files"

    return-object p0
.end method

.method public final c()Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;
    .locals 0

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    return-object p0
.end method

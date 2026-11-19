.class public Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdSystem"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->c(Ljava/util/Collection;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    .line 16
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "IDC"

    return-object p0
.end method

.method public final c()Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;
    .locals 0

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->a:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    return-object p0
.end method

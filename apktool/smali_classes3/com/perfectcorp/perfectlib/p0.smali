.class public final synthetic Lcom/perfectcorp/perfectlib/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/p0;->a:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/p0;->b:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/p0;->c:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/p0;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/p0;->e:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/p0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/p0;->a:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[downloadAndApplySkus] product GUIDs are found. mappedVtoSettings="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, p1, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iget v1, p0, Lcom/perfectcorp/perfectlib/p0;->b:I

    iget v2, p0, Lcom/perfectcorp/perfectlib/p0;->c:I

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/p0;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/p0;->e:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/p0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->k(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V

    return-void
.end method

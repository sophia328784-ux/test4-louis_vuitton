.class public final synthetic Lwx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;I)V
    .locals 0

    iput p4, p0, Lwx0;->b:I

    iput-object p1, p0, Lwx0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lwx0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lwx0;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lwx0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lwx0;->e:Ljava/util/List;

    iget-object v3, p0, Lwx0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lwx0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v2, p0, v1, v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v2, p0, v1, v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Z)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip_md5:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->b:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_temp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

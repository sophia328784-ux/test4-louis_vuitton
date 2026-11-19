.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/HttpRequestProvider;


# instance fields
.field public final a:Lcom/perfectcorp/common/network/HttpRequestProvider;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    return-void
.end method


# virtual methods
.method public final get()Lcom/perfectcorp/common/utility/HttpRequest;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    invoke-interface {p0}, Lcom/perfectcorp/common/network/HttpRequestProvider;->get()Lcom/perfectcorp/common/utility/HttpRequest;

    move-result-object p0

    const-string v0, "platform"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-string v0, "product"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const-string v0, "versiontype"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perfectcorp/uma/s;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

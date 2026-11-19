.class public final synthetic Lu71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/HttpRequestProvider;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu71;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lu71;->b:Z

    return-void
.end method


# virtual methods
.method public final get()Lcom/perfectcorp/common/utility/HttpRequest;
    .locals 3

    iget-object v0, p0, Lu71;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lu71;->b:Z

    new-instance v1, Lcom/perfectcorp/common/utility/HttpRequest;

    const-string v2, "/service/sdk/v2/init"

    invoke-static {v0, v2}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->b(Lcom/perfectcorp/common/utility/HttpRequest;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->c:Ljava/lang/String;

    const-string v2, "apikey"

    invoke-virtual {v1, v0, v2}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "mode"

    const-string v0, "develop"

    invoke-virtual {v1, v0, p0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "country"

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

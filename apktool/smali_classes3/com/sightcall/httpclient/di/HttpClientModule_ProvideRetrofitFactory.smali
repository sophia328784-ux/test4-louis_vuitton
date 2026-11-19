.class public final Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/httpclient/di/HttpClientModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/httpclient/di/HttpClientModule;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/di/HttpClientModule;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->module:Lcom/sightcall/httpclient/di/HttpClientModule;

    iput-object p2, p0, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/httpclient/di/HttpClientModule;Ldagger/internal/Provider;)Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/di/HttpClientModule;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;-><init>(Lcom/sightcall/httpclient/di/HttpClientModule;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideRetrofit(Lcom/sightcall/httpclient/di/HttpClientModule;Landroid/content/Context;)Lretrofit2/Retrofit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/httpclient/di/HttpClientModule;->provideRetrofit(Landroid/content/Context;)Lretrofit2/Retrofit;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->module:Lcom/sightcall/httpclient/di/HttpClientModule;

    iget-object p0, p0, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->provideRetrofit(Lcom/sightcall/httpclient/di/HttpClientModule;Landroid/content/Context;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

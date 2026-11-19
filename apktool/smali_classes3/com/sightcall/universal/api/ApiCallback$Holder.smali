.class public Lcom/sightcall/universal/api/ApiCallback$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/ApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/api/ApiCallback$Holder;->call:Lretrofit2/Call;

    iput-object p2, p0, Lcom/sightcall/universal/api/ApiCallback$Holder;->response:Lretrofit2/Response;

    iput-object p3, p0, Lcom/sightcall/universal/api/ApiCallback$Holder;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/api/ApiCallback$Holder;)Lretrofit2/Call;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/ApiCallback$Holder;->call:Lretrofit2/Call;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/api/ApiCallback$Holder;)Lretrofit2/Response;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/ApiCallback$Holder;->response:Lretrofit2/Response;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/api/ApiCallback$Holder;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/ApiCallback$Holder;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static hold(Lcom/sightcall/universal/api/ApiCallback;)Lcom/sightcall/universal/api/ApiCallback$Holder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sightcall/universal/api/ApiCallback<",
            "TT;>;)",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/api/ApiCallback$Holder;

    invoke-virtual {p0}, Lcom/sightcall/universal/api/ApiCallback;->call()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/api/ApiCallback;->response()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/universal/api/ApiCallback;->throwable()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/universal/api/ApiCallback$Holder;-><init>(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/sightcall/universal/api/ApiCallback$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/sightcall/universal/api/ApiCallback$Holder;-><init>(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/sightcall/universal/api/ApiCallback$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sightcall/universal/api/ApiCallback$Holder;-><init>(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/sightcall/universal/api/ApiCallback$Holder;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;-><init>(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

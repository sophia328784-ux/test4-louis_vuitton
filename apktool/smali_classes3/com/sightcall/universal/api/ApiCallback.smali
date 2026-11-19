.class public abstract Lcom/sightcall/universal/api/ApiCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/ApiCallback$Holder;
    }
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
.field private final holder:Lcom/sightcall/universal/api/ApiCallback$Holder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/api/ApiCallback;->holder:Lcom/sightcall/universal/api/ApiCallback$Holder;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "TT;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sightcall/universal/api/ApiCallback;->holder:Lcom/sightcall/universal/api/ApiCallback$Holder;

    return-void
.end method


# virtual methods
.method public call()Lretrofit2/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/api/ApiCallback;->holder:Lcom/sightcall/universal/api/ApiCallback$Holder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/api/ApiCallback$Holder;->a(Lcom/sightcall/universal/api/ApiCallback$Holder;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public response()Lretrofit2/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/api/ApiCallback;->holder:Lcom/sightcall/universal/api/ApiCallback$Holder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/api/ApiCallback$Holder;->b(Lcom/sightcall/universal/api/ApiCallback$Holder;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/api/ApiCallback;->holder:Lcom/sightcall/universal/api/ApiCallback$Holder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/api/ApiCallback$Holder;->c(Lcom/sightcall/universal/api/ApiCallback$Holder;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

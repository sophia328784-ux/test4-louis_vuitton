.class public final Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;->retrofitProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;

    invoke-direct {v0, p0}, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideReferenceApiV3$session_release(Lretrofit2/Retrofit;)Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;
    .locals 1

    sget-object v0, Lcom/sightcall/session/di/SessionModule;->Companion:Lcom/sightcall/session/di/SessionModule$Companion;

    invoke-virtual {v0, p0}, Lcom/sightcall/session/di/SessionModule$Companion;->provideReferenceApiV3$session_release(Lretrofit2/Retrofit;)Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;->retrofitProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    invoke-static {p0}, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;->provideReferenceApiV3$session_release(Lretrofit2/Retrofit;)Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;->get()Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    move-result-object p0

    return-object p0
.end method

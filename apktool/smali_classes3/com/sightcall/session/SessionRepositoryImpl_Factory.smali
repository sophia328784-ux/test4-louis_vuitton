.class public final Lcom/sightcall/session/SessionRepositoryImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/session/SessionRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final referenceDataSourceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;",
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
            "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/SessionRepositoryImpl_Factory;->referenceDataSourceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/session/SessionRepositoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;",
            ">;)",
            "Lcom/sightcall/session/SessionRepositoryImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/session/SessionRepositoryImpl_Factory;

    invoke-direct {v0, p0}, Lcom/sightcall/session/SessionRepositoryImpl_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)Lcom/sightcall/session/SessionRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/session/SessionRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/sightcall/session/SessionRepositoryImpl;-><init>(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/session/SessionRepositoryImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/SessionRepositoryImpl_Factory;->referenceDataSourceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/session/datasource/reference/ReferenceDataSource;

    invoke-static {p0}, Lcom/sightcall/session/SessionRepositoryImpl_Factory;->newInstance(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)Lcom/sightcall/session/SessionRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/session/SessionRepositoryImpl_Factory;->get()Lcom/sightcall/session/SessionRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

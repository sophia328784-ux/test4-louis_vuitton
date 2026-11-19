.class public final Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;",
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

.field private final referenceApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;->referenceApiProvider:Ldagger/internal/Provider;

    iput-object p2, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;
    .locals 1

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;-><init>(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;->referenceApiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    iget-object p0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;->newInstance(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl_Factory;->get()Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    move-result-object p0

    return-object p0
.end method

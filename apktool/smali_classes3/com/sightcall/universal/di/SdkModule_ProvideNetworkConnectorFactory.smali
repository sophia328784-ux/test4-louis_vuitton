.class public final Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/sightcall/universal/di/SdkModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/di/SdkModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;->module:Lcom/sightcall/universal/di/SdkModule;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;-><init>(Lcom/sightcall/universal/di/SdkModule;)V

    return-object v0
.end method

.method public static provideNetworkConnector(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/libraries/network/NetworkConnector;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/di/SdkModule;->provideNetworkConnector()Lcom/sightcall/libraries/network/NetworkConnector;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/libraries/network/NetworkConnector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;->module:Lcom/sightcall/universal/di/SdkModule;

    invoke-static {p0}, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;->provideNetworkConnector(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/libraries/network/NetworkConnector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;->get()Lcom/sightcall/libraries/network/NetworkConnector;

    move-result-object p0

    return-object p0
.end method

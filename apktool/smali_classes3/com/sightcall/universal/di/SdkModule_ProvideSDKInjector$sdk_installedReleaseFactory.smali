.class public final Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/universal/di/SDKInjectorI;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/sightcall/universal/di/SdkModule;

.field private final sdkComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/di/SdkComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/di/SdkModule;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/di/SdkModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/di/SdkComponent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/di/SdkModule;

    iput-object p2, p0, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;->sdkComponentProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/di/SdkModule;Ldagger/internal/Provider;)Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/di/SdkModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/di/SdkComponent;",
            ">;)",
            "Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;-><init>(Lcom/sightcall/universal/di/SdkModule;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideSDKInjector$sdk_installedRelease(Lcom/sightcall/universal/di/SdkModule;Lcom/sightcall/universal/di/SdkComponent;)Lcom/sightcall/universal/di/SDKInjectorI;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/SdkModule;->provideSDKInjector$sdk_installedRelease(Lcom/sightcall/universal/di/SdkComponent;)Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/universal/di/SDKInjectorI;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/di/SdkModule;

    iget-object p0, p0, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;->sdkComponentProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/di/SdkComponent;

    invoke-static {v0, p0}, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;->provideSDKInjector$sdk_installedRelease(Lcom/sightcall/universal/di/SdkModule;Lcom/sightcall/universal/di/SdkComponent;)Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/universal/di/SdkModule_ProvideSDKInjector$sdk_installedReleaseFactory;->get()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p0

    return-object p0
.end method

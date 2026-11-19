.class public final Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/sightcall/universal/di/SdkModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/di/SdkModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/di/SdkModule;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;-><init>(Lcom/sightcall/universal/di/SdkModule;)V

    return-object v0
.end method

.method public static provideApplicationContext$sdk_installedRelease(Lcom/sightcall/universal/di/SdkModule;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/di/SdkModule;->provideApplicationContext$sdk_installedRelease()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/di/SdkModule;

    invoke-static {p0}, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;->provideApplicationContext$sdk_installedRelease(Lcom/sightcall/universal/di/SdkModule;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;->get()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

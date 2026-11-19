.class final Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContextProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;


# direct methods
.method public constructor <init>(Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    return-void
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-interface {p0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$CapabilitiesComponentImpl$ContextProvider;->get()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

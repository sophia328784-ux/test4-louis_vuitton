.class public final Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/capabilities/di/CapabilitiesModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0001\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;",
        "",
        "<init>",
        "()V",
        "provideCapabilitiesRepositories",
        "Lcom/sightcall/capabilities/CapabilitiesRepository;",
        "context",
        "Landroid/content/Context;",
        "rtccDatasource",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
        "provideCapabilitiesRepositories$capabilities_release",
        "capabilities_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCapabilitiesRepositories$capabilities_release(Landroid/content/Context;Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)Lcom/sightcall/capabilities/CapabilitiesRepository;
    .locals 0
    .annotation runtime Lcom/sightcall/capabilities/di/CapabilitiesScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;

    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;-><init>(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)V

    return-object p0
.end method

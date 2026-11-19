.class public abstract Lcom/sightcall/capabilities/di/CapabilitiesModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/capabilities/di/CapabilitiesModule;",
        "",
        "<init>",
        "()V",
        "provideRtccDatasource",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
        "rtccDatasourceImpl",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;",
        "provideRtccDatasource$capabilities_release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/capabilities/di/CapabilitiesModule;->Companion:Lcom/sightcall/capabilities/di/CapabilitiesModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract provideRtccDatasource$capabilities_release(Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;)Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

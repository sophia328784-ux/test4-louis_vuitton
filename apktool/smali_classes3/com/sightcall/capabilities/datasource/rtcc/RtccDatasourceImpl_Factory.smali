.class public final Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;
    .locals 1

    sget-object v0, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory$InstanceHolder;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;

    return-object v0
.end method

.method public static newInstance()Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;

    invoke-direct {v0}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;
    .locals 0

    .line 5
    invoke-static {}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;->newInstance()Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;->get()Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;

    invoke-direct {v0}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;-><init>()V

    sput-object v0, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory$InstanceHolder;->INSTANCE:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasourceImpl_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

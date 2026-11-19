.class public Lcom/networkbench/agent/impl/instrumentation/NBSLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSLocation;->countryCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSLocation;->region:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "Country code and region must not be null."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSLocation;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSLocation;->region:Ljava/lang/String;

    return-object p0
.end method

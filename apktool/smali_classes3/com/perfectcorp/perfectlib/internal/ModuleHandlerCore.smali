.class final Lcom/perfectcorp/perfectlib/internal/ModuleHandlerCore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/internal/ModuleConfig$Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getModuleName()Ljava/lang/String;
    .locals 0

    const-string p0, "PerfectLibHandlerCore"

    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    const-string p0, "5.27.2.111031404"

    return-object p0
.end method

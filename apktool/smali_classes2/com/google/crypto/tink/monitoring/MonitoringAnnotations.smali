.class public final Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;-><init>()V

    iget-object v1, v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations$Builder;->a:Ljava/util/HashMap;

    sput-object v2, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    return-void

    :cond_0
    const-string v0, "cannot call build() twice"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object p0, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

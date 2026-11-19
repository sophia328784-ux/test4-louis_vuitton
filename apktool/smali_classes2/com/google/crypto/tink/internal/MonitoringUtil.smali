.class public abstract Lcom/google/crypto/tink/internal/MonitoringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MonitoringUtil$DoNothingLogger;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/crypto/tink/monitoring/MonitoringClient$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/crypto/tink/internal/MonitoringUtil$DoNothingLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil;->a:Lcom/google/crypto/tink/monitoring/MonitoringClient$Logger;

    return-void
.end method

.method public static a(Lcom/google/crypto/tink/PrimitiveSet;)Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    .locals 10

    new-instance v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet;->c:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v2, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    iput-object v1, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    iget-object v5, v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;->d:Lcom/google/crypto/tink/proto/KeyStatusType;

    sget-object v6, Lcom/google/crypto/tink/internal/MonitoringUtil$1;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/google/crypto/tink/KeyStatus;->d:Lcom/google/crypto/tink/KeyStatus;

    goto :goto_1

    :cond_1
    const-string p0, "Unknown key status"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    sget-object v5, Lcom/google/crypto/tink/KeyStatus;->c:Lcom/google/crypto/tink/KeyStatus;

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/google/crypto/tink/KeyStatus;->b:Lcom/google/crypto/tink/KeyStatus;

    :goto_1
    iget v6, v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;->f:I

    iget-object v7, v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;->g:Ljava/lang/String;

    const-string v8, "type.googleapis.com/google.crypto."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v4, v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;->e:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    new-instance v9, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;

    invoke-direct {v9, v5, v6, v7, v4}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;-><init>(Lcom/google/crypto/tink/KeyStatus;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string p0, "addEntry cannot be called after build()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_6
    iget-object p0, p0, Lcom/google/crypto/tink/PrimitiveSet;->b:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    if-eqz p0, :cond_8

    iget p0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->f:I

    iget-object v1, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->c:Ljava/lang/Integer;

    goto :goto_3

    :cond_7
    const-string p0, "setPrimaryKeyId cannot be called after build()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_8
    :goto_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a()Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    return-object v3

    :cond_9
    const-string p0, "setAnnotations cannot be called after build()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3
.end method

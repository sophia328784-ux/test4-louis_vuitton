.class public final Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    .locals 5

    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;

    iget v3, v3, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;->b:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_1
    const-string p0, "primary key ID is not present in entries"

    invoke-static {p0}, Lv40;->j(Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    new-instance v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;

    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->b:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v3, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->c:Ljava/lang/Integer;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;-><init>(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/util/List;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;->a:Ljava/util/ArrayList;

    return-object v0

    :cond_3
    const-string p0, "cannot call build() twice"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.class public Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

.field public filtertype:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->a:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvalidUrl(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->filtertype:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->FIRST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->filtertype:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->LAST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->filtertype:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->MIDDLE_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->filtertype:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->NONE:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

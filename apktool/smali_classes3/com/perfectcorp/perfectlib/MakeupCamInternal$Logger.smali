.class final Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/MakeupCamInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logger"
.end annotation


# instance fields
.field public volatile a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/ReshapeEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->b:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getEventFeature()Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->k(Ljava/util/List;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void
.end method

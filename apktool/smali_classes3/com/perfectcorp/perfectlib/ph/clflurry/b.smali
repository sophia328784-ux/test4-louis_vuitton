.class public final Lcom/perfectcorp/perfectlib/ph/clflurry/b;
.super Lcom/perfectcorp/perfectlib/ph/clflurry/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 2

    const-string v0, "MCSDK_Tryout"

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    :cond_0
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v0, "ver"

    const-string v1, "12"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    invoke-virtual {p2, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a(Ljava/util/Map;)V

    return-void
.end method

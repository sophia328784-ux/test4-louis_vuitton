.class public final synthetic Lcom/perfectcorp/perfectlib/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/a4;->a:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p1, v0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a4;->a:Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;->progress(D)V

    return-void
.end method

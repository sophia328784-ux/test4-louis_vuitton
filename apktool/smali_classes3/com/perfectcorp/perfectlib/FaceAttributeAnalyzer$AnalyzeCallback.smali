.class public interface abstract Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnalyzeCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lcom/perfectcorp/perfectlib/FaceAnalysisData;)V
.end method

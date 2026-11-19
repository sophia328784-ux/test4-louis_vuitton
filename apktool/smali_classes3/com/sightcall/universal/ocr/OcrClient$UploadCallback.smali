.class public interface abstract Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ocr/OcrClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadCallback"
.end annotation


# virtual methods
.method public abstract onUploadError()V
.end method

.method public abstract onUploadFailure()V
.end method

.method public abstract onUploadSuccess()V
.end method

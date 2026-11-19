.class interface abstract Lcom/sightcall/universal/media/UploaderClient$UploadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/UploaderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadCallback"
.end annotation


# virtual methods
.method public abstract onMediaUploadError()V
.end method

.method public abstract onMediaUploadFailure()V
.end method

.method public abstract onMediaUploadSuccess()V
.end method

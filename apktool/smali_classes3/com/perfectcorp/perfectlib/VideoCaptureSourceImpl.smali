.class final Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/videoconsultsdk/api/VideoCaptureSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/videoconsultsdk/api/VideoCaptureSource<",
        "Lcom/perfectcorp/videoconsultsdk/api/StreamingSinkMakeupCam;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/videoconsultsdk/streaming/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/videoconsultsdk/streaming/a;

    invoke-direct {v0}, Lcom/perfectcorp/videoconsultsdk/streaming/a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;->a:Lcom/perfectcorp/videoconsultsdk/streaming/a;

    return-void
.end method

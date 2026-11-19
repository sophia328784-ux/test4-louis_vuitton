.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;
.super Ljava/lang/Object;


# instance fields
.field final backgroundSticker:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

.field final className:Ljava/lang/String;

.field final index:I

.field final rootFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;->className:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;->backgroundSticker:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;->rootFolder:Ljava/lang/String;

    iput p4, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/e;->index:I

    return-void
.end method

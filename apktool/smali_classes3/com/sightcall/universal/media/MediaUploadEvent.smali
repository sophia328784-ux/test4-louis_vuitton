.class public Lcom/sightcall/universal/media/MediaUploadEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/MediaUploadEvent$Status;
    }
.end annotation


# instance fields
.field private final media:Lcom/sightcall/universal/media/Media;

.field private final metadata:Lcom/sightcall/universal/media/Metadata;

.field private final status:Lcom/sightcall/universal/media/MediaUploadEvent$Status;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaUploadEvent;->media:Lcom/sightcall/universal/media/Media;

    iput-object p2, p0, Lcom/sightcall/universal/media/MediaUploadEvent;->metadata:Lcom/sightcall/universal/media/Metadata;

    iput-object p3, p0, Lcom/sightcall/universal/media/MediaUploadEvent;->status:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    return-void
.end method


# virtual methods
.method public media()Lcom/sightcall/universal/media/Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaUploadEvent;->media:Lcom/sightcall/universal/media/Media;

    return-object p0
.end method

.method public metadata()Lcom/sightcall/universal/media/Metadata;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaUploadEvent;->metadata:Lcom/sightcall/universal/media/Metadata;

    return-object p0
.end method

.method public status()Lcom/sightcall/universal/media/MediaUploadEvent$Status;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaUploadEvent;->status:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    return-object p0
.end method

.class public Lcom/sightcall/universal/media/MediaSavedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final media:Lcom/sightcall/universal/media/Media;

.field private final metadata:Lcom/sightcall/universal/media/Metadata;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/MediaSavedEvent;->media:Lcom/sightcall/universal/media/Media;

    iput-object p2, p0, Lcom/sightcall/universal/media/MediaSavedEvent;->metadata:Lcom/sightcall/universal/media/Metadata;

    return-void
.end method


# virtual methods
.method public media()Lcom/sightcall/universal/media/Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaSavedEvent;->media:Lcom/sightcall/universal/media/Media;

    return-object p0
.end method

.method public metadata()Lcom/sightcall/universal/media/Metadata;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/MediaSavedEvent;->metadata:Lcom/sightcall/universal/media/Metadata;

    return-object p0
.end method

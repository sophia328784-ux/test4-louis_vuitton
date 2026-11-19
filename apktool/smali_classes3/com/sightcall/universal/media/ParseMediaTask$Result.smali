.class Lcom/sightcall/universal/media/ParseMediaTask$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/ParseMediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field final base64:Ljava/lang/String;

.field final media:Lcom/sightcall/universal/media/Media;

.field final metadata:Lcom/sightcall/universal/media/Metadata;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Metadata;Ljava/lang/String;Lcom/sightcall/universal/media/Media;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/ParseMediaTask$Result;->metadata:Lcom/sightcall/universal/media/Metadata;

    iput-object p2, p0, Lcom/sightcall/universal/media/ParseMediaTask$Result;->base64:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/media/ParseMediaTask$Result;->media:Lcom/sightcall/universal/media/Media;

    return-void
.end method

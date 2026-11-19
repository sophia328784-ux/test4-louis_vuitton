.class public final Lcom/sightcall/videoplayer/model/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001c\u001a\u00020\u0005H\u00d6\u0081\u0004J\n\u0010\u001d\u001a\u00020\u001eH\u00d6\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sightcall/videoplayer/model/VideoPlayer;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "seek",
        "",
        "paused",
        "",
        "<init>",
        "(Landroid/net/Uri;IZ)V",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "getSeek",
        "()I",
        "setSeek",
        "(I)V",
        "getPaused",
        "()Z",
        "setPaused",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "videoplayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private paused:Z

.field private seek:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 24
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/videoplayer/model/VideoPlayer;-><init>(Landroid/net/Uri;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    .line 22
    iput p2, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    .line 23
    iput-boolean p3, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/videoplayer/model/VideoPlayer;-><init>(Landroid/net/Uri;IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/videoplayer/model/VideoPlayer;Landroid/net/Uri;IZILjava/lang/Object;)Lcom/sightcall/videoplayer/model/VideoPlayer;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/videoplayer/model/VideoPlayer;->copy(Landroid/net/Uri;IZ)Lcom/sightcall/videoplayer/model/VideoPlayer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    return p0
.end method

.method public final copy(Landroid/net/Uri;IZ)Lcom/sightcall/videoplayer/model/VideoPlayer;
    .locals 0

    new-instance p0, Lcom/sightcall/videoplayer/model/VideoPlayer;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/videoplayer/model/VideoPlayer;-><init>(Landroid/net/Uri;IZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/videoplayer/model/VideoPlayer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/videoplayer/model/VideoPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    iget v3, p1, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    iget-boolean p1, p1, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    return p0
.end method

.method public final getSeek()I
    .locals 0

    iget p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    return p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    return-void
.end method

.method public final setSeek(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->uri:Landroid/net/Uri;

    iget v1, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->seek:I

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/model/VideoPlayer;->paused:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoPlayer(uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", seek="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paused="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

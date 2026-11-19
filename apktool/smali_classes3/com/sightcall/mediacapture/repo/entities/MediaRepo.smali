.class public final Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u00d6\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0005H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "mimeType",
        "",
        "size",
        "Landroid/util/Size;",
        "<init>",
        "(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V",
        "getUri",
        "()Landroid/net/Uri;",
        "getMimeType",
        "()Ljava/lang/String;",
        "getSize",
        "()Landroid/util/Size;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "lib_release"
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
.field private final mimeType:Ljava/lang/String;

.field private final size:Landroid/util/Size;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;ILjava/lang/Object;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->copy(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    return-object p0
.end method

.method public final copy(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)Lcom/sightcall/mediacapture/repo/entities/MediaRepo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    iget-object p1, p1, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->mimeType:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->size:Landroid/util/Size;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaRepo(uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mimeType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

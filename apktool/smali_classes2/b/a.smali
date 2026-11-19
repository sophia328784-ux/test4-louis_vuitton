.class public Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->g:Ljava/lang/String;

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lb/a;->h:J

    iput-object v0, p0, Lb/a;->i:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lb/a;->j:J

    iput-object v0, p0, Lb/a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lb/a;)V
    .locals 2

    iget-object v0, p1, Lb/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->b:Ljava/lang/String;

    iget-object v0, p1, Lb/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->c:Ljava/lang/String;

    iget-object v0, p1, Lb/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->d:Ljava/lang/String;

    iget-object v0, p1, Lb/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->e:Ljava/lang/String;

    iget-object v0, p1, Lb/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->f:Ljava/lang/String;

    iget-object v0, p1, Lb/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->g:Ljava/lang/String;

    iget-wide v0, p1, Lb/a;->h:J

    iput-wide v0, p0, Lb/a;->h:J

    iget-object v0, p1, Lb/a;->i:Ljava/lang/String;

    iput-object v0, p0, Lb/a;->i:Ljava/lang/String;

    iget-wide v0, p1, Lb/a;->j:J

    iput-wide v0, p0, Lb/a;->j:J

    iget-object p1, p1, Lb/a;->k:Ljava/lang/String;

    iput-object p1, p0, Lb/a;->k:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlbumInfo [title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumArtURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Singer_ID=0, Format=, Size=, publish_time=, Type_Description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a;->k:Ljava/lang/String;

    const-string v1, ", type=0, album_id=0]"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

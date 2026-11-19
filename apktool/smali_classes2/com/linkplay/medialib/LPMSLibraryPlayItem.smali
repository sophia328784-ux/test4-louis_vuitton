.class public Lcom/linkplay/medialib/LPMSLibraryPlayItem;
.super Lcom/linkplay/lpmdpkit/bean/LPPlayItem;
.source "SourceFile"


# instance fields
.field private Size:Ljava/lang/String;

.field private currDirArr:[Ljava/lang/String;

.field private fileId:I

.field private filePath:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private local_id:Ljava/lang/String;

.field private songCount:I

.field private songlist:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->local_id:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->track:Ljava/lang/String;

    const-string v1, "unknown"

    iput-object v1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->genreName:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->Size:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->fileId:I

    iput-object v0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->songlist:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->filePath:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->songCount:I

    iput-object v0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->folderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrDirArr()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->currDirArr:[Ljava/lang/String;

    return-object p0
.end method

.method public getFileId()I
    .locals 0

    iget p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->fileId:I

    return p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->folderName:Ljava/lang/String;

    return-object p0
.end method

.method public getGenreName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->genreName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocal_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->local_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->Size:Ljava/lang/String;

    return-object p0
.end method

.method public getSongCount()I
    .locals 0

    iget p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->songCount:I

    return p0
.end method

.method public getSonglist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->songlist:Ljava/lang/String;

    return-object p0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->track:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrDirArr([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->currDirArr:[Ljava/lang/String;

    return-void
.end method

.method public setFileId(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->fileId:I

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->folderName:Ljava/lang/String;

    return-void
.end method

.method public setGenreName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->genreName:Ljava/lang/String;

    return-void
.end method

.method public setLocal_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->local_id:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->Size:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->songCount:I

    return-void
.end method

.method public setSonglist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->songlist:Ljava/lang/String;

    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryPlayItem;->track:Ljava/lang/String;

    return-void
.end method

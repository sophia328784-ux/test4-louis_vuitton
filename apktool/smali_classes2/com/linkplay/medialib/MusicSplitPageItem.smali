.class public Lcom/linkplay/medialib/MusicSplitPageItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public classify:Lcom/linkplay/medialib/ELocSearchType;

.field public isPaged:Z

.field public page:I

.field public pageSize:I

.field public searchKey:Ljava/lang/String;

.field public shouldExecuteSearchKey:Z


# direct methods
.method public constructor <init>(ZII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->isPaged:Z

    sget-object v1, Lcom/linkplay/medialib/ELocSearchType;->LP_SONGS:Lcom/linkplay/medialib/ELocSearchType;

    iput-object v1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    const-string v1, ""

    iput-object v1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    iput-boolean p1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->isPaged:Z

    iput p2, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->page:I

    iput p3, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->pageSize:I

    return-void
.end method

.method public constructor <init>(ZIILcom/linkplay/medialib/ELocSearchType;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->isPaged:Z

    .line 25
    sget-object v1, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    .line 27
    iput-boolean v0, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    .line 28
    iput-boolean p1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->isPaged:Z

    .line 29
    iput p2, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->pageSize:I

    .line 30
    iput p3, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->page:I

    .line 31
    iput-object p4, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    return-void
.end method

.method public constructor <init>(ZIILcom/linkplay/medialib/ELocSearchType;Ljava/lang/String;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->isPaged:Z

    .line 34
    sget-object v0, Lcom/linkplay/medialib/ELocSearchType;->LP_ARTIST:Lcom/linkplay/medialib/ELocSearchType;

    .line 35
    iput-boolean p1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->isPaged:Z

    .line 36
    iput p2, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->pageSize:I

    .line 37
    iput p3, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->page:I

    .line 38
    iput-object p4, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->classify:Lcom/linkplay/medialib/ELocSearchType;

    .line 39
    iput-object p5, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    .line 40
    iput-boolean p6, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    return-void
.end method


# virtual methods
.method public setSearchKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public setShouldExecuteSearchKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/medialib/MusicSplitPageItem;->shouldExecuteSearchKey:Z

    return-void
.end method

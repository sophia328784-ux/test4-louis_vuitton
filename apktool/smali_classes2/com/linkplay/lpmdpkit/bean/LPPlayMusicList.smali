.class public Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LPPlayMusicList"


# instance fields
.field account:Lcom/linkplay/lpmdpkit/bean/LPAccount;

.field header:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

.field index:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->index:I

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/linkplay/lpmdpkit/bean/LPAccount;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->account:Lcom/linkplay/lpmdpkit/bean/LPAccount;

    return-object p0
.end method

.method public getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->header:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->index:I

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->list:Ljava/util/List;

    return-object p0
.end method

.method public setAccount(Lcom/linkplay/lpmdpkit/bean/LPAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->account:Lcom/linkplay/lpmdpkit/bean/LPAccount;

    return-void
.end method

.method public setHeader(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->header:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->index:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayItem;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->list:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

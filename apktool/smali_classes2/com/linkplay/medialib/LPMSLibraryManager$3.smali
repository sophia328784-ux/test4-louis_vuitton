.class Lcom/linkplay/medialib/LPMSLibraryManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/medialib/LPMSLibraryManager;->searchSonglists(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/medialib/LPMSLibraryManager;

.field final synthetic val$listener:Lcom/linkplay/medialib/LPSearchMediaResultListener;

.field final synthetic val$transPlayHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;


# direct methods
.method public constructor <init>(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Lcom/linkplay/medialib/LPSearchMediaResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->this$0:Lcom/linkplay/medialib/LPMSLibraryManager;

    iput-object p2, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$transPlayHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    iput-object p3, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$listener:Lcom/linkplay/medialib/LPSearchMediaResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/linkplay/medialib/MusicSplitPageItem;

    iget-object v1, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$transPlayHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getPerPage()I

    move-result v1

    iget-object v2, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$transPlayHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/medialib/MusicSplitPageItem;-><init>(ZII)V

    iget-object v1, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->this$0:Lcom/linkplay/medialib/LPMSLibraryManager;

    invoke-static {v1, v0}, Lcom/linkplay/medialib/LPMSLibraryManager;->access$100(Lcom/linkplay/medialib/LPMSLibraryManager;Lcom/linkplay/medialib/MusicSplitPageItem;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$listener:Lcom/linkplay/medialib/LPSearchMediaResultListener;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    iget-object v2, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$transPlayHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setHeader(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/linkplay/medialib/LPMSLibraryManager$3;->val$listener:Lcom/linkplay/medialib/LPSearchMediaResultListener;

    invoke-interface {p0, v1}, Lcom/linkplay/medialib/LPSearchMediaResultListener;->success(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)V

    :cond_0
    return-void
.end method

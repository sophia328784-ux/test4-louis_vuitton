.class Lcom/linkplay/core/clingx/LPSearchControlPoint$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPSearchControlPoint;->executeUpnpSearchByTimer([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

.field final synthetic val$searchKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPSearchControlPoint;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    iput-object p2, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->val$searchKeys:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->a(Lcom/linkplay/core/clingx/LPSearchControlPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->val$searchKeys:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->executeUpnpSearchX(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->executeUpnpSearch()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->executeUpnpSearch()V

    :cond_2
    return-void
.end method

.class final Lcom/perfectcorp/common/downloader/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/downloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/downloader/c$c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/downloader/c$c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/perfectcorp/common/downloader/c$c$a;->a:I

    iput v0, p0, Lcom/perfectcorp/common/downloader/c$c;->a:I

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/c$c$a;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/c$c;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/perfectcorp/common/downloader/c$c$a;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/c$c;->c:Ljava/util/List;

    return-void
.end method

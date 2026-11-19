.class final Lcom/perfectcorp/common/downloader/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/downloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/perfectcorp/common/downloader/c$a;->a:I

    iput p2, p0, Lcom/perfectcorp/common/downloader/c$a;->b:I

    iput p3, p0, Lcom/perfectcorp/common/downloader/c$a;->c:I

    return-void
.end method

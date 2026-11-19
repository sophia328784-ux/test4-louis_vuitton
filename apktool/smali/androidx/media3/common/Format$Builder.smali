.class public final Landroidx/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A:F

.field public B:[B

.field public C:I

.field public D:Landroidx/media3/common/ColorInfo;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/common/collect/ImmutableList;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Landroidx/media3/common/Metadata;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:Ljava/util/List;

.field public r:Landroidx/media3/common/DrmInitData;

.field public s:J

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/Format$Builder;->h:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->i:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->o:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->p:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroidx/media3/common/Format$Builder;->s:J

    iput v0, p0, Landroidx/media3/common/Format$Builder;->u:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->v:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->w:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->x:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->A:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->C:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->E:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->F:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->G:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->H:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->K:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/Format$Builder;->L:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->M:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->N:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/Format$Builder;->O:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->g:I

    return-void
.end method

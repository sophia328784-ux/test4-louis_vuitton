.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->d(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->a:J

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->c(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->e(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->f(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->g(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->b(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->h(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->i(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->h:J

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->j(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->i:J

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->k(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->j:J

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->l(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->k:J

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->m(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->n(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;->o(Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$f;->n:Ljava/lang/String;

    return-void
.end method

.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->d:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->f:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->d:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->e:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->h:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "SkuSetID"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Type"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Vendor"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CustomerId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LastModified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "MakeupVersion"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Metadata"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "IsDeleted"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

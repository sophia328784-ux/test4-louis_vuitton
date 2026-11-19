.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;

    const-string v1, "GenericTagGroup"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGroup;->b:[Ljava/lang/String;

    const-string v3, "GenericTagGroupDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    const-string p0, "Type"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "Name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IsFreeTag"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;-><init>()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->a:Ljava/lang/String;

    iput-wide v0, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->b:J

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->c:Ljava/lang/String;

    iput-boolean p1, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->d:Z

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;

    invoke-direct {p0, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;)V

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "Type"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "Name"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->d:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "IsFreeTag"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

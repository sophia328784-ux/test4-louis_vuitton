.class public final Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;

    const-string v1, "ConditionalInfo"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$ConditionalInfo;->b:[Ljava/lang/String;

    const-string v3, "ConditionalInfoDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/b;

    return-void
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    const-string p0, "GUID"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Info"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;->b:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;)V

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "GUID"

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Info"

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

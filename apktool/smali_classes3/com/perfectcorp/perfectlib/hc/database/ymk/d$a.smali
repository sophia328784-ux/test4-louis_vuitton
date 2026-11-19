.class abstract Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/hc/database/ymk/d$b;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->g:I

    const v0, 0xffff

    and-int/2addr p1, v0

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a:I

    return p0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "upgrade db to version: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    const-string v0, "DatabaseUpgradeHelper"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

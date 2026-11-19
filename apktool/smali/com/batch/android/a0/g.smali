.class public Lcom/batch/android/a0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/a0/g$c;,
        Lcom/batch/android/a0/g$d;,
        Lcom/batch/android/a0/g$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/regex/Pattern;


# instance fields
.field private a:Lcom/batch/android/a0/e;

.field private b:Ljava/lang/String;

.field private c:Lcom/batch/android/a0/g$c;

.field private d:Lcom/batch/android/a0/g$d;

.field private e:Lcom/batch/android/a0/f;

.field private f:Lcom/batch/android/a0/h;

.field private g:Lcom/batch/android/a0/c;

.field private h:Lcom/batch/android/a0/d;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "@import sdk\\(\"([^\"]*)\"\\);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a0/g;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/a0/g;->j:Z

    iput-object p1, p0, Lcom/batch/android/a0/g;->a:Lcom/batch/android/a0/e;

    iput-object p2, p0, Lcom/batch/android/a0/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/batch/android/a0/g;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/a0/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/batch/android/a0/g;->k:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/batch/android/a0/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/batch/android/a0/g;->a:Lcom/batch/android/a0/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/batch/android/a0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/a0/g;->b:Ljava/lang/String;

    return-void
.end method

.method private a(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/batch/android/a0/g$b;->a(C)Lcom/batch/android/a0/g$b;

    move-result-object p1

    .line 65
    sget-object v0, Lcom/batch/android/a0/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->c()V

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->g()V

    return-void

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->f()V

    return-void

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->h()V

    return-void

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->i()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/batch/android/a0/g;->j:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/batch/android/a0/g;->j:Z

    return-void
.end method

.method private d()V
    .locals 1

    sget-object v0, Lcom/batch/android/a0/g$c;->b:Lcom/batch/android/a0/g$c;

    iput-object v0, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    sget-object v0, Lcom/batch/android/a0/g$d;->b:Lcom/batch/android/a0/g$d;

    iput-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    new-instance v0, Lcom/batch/android/a0/d;

    invoke-direct {v0}, Lcom/batch/android/a0/d;-><init>()V

    iput-object v0, p0, Lcom/batch/android/a0/g;->h:Lcom/batch/android/a0/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    iput-object v0, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    iput-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    return-void
.end method

.method private e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/batch/android/a0/g;->b:Ljava/lang/String;

    const-string v2, ":;{}\n"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_0

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_0

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_0

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/batch/android/a0/g;->a(C)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/batch/android/a0/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public b()Lcom/batch/android/a0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/a0/g;->d()V

    invoke-direct {p0}, Lcom/batch/android/a0/g;->e()V

    iget-object v0, p0, Lcom/batch/android/a0/g;->h:Lcom/batch/android/a0/d;

    invoke-direct {p0}, Lcom/batch/android/a0/g;->d()V

    return-object v0
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->e:Lcom/batch/android/a0/g$d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->g()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    sget-object v1, Lcom/batch/android/a0/g$c;->b:Lcom/batch/android/a0/g$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->b:Lcom/batch/android/a0/g$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/a0/g;->j:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->d:Lcom/batch/android/a0/g$d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_2
    iget-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/batch/android/a0/i;

    invoke-direct {v0}, Lcom/batch/android/a0/i;-><init>()V

    iput-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/batch/android/a0/c;

    invoke-direct {v0}, Lcom/batch/android/a0/c;-><init>()V

    iput-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    :goto_0
    iget-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    iget-object v1, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/a0/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/batch/android/a0/g$d;->e:Lcom/batch/android/a0/g$d;

    iput-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    return-void
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->e:Lcom/batch/android/a0/g$d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    iget-object v1, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/a0/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    iget-object v0, v0, Lcom/batch/android/a0/h;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/a0/g;->g:Lcom/batch/android/a0/c;

    sget-object v0, Lcom/batch/android/a0/g$d;->d:Lcom/batch/android/a0/g$d;

    iput-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    return-void
.end method

.method public h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->e:Lcom/batch/android/a0/g$d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->g()V

    :cond_0
    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->d:Lcom/batch/android/a0/g$d;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    sget-object v2, Lcom/batch/android/a0/g$c;->c:Lcom/batch/android/a0/g$c;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/batch/android/a0/g$d;->b:Lcom/batch/android/a0/g$d;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    sget-object v1, Lcom/batch/android/a0/g$c;->c:Lcom/batch/android/a0/g$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_2
    iget-object v0, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    iget-object v0, v0, Lcom/batch/android/a0/f;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/batch/android/a0/g;->h:Lcom/batch/android/a0/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_5
    iget-object v0, p0, Lcom/batch/android/a0/g;->h:Lcom/batch/android/a0/d;

    iget-object v0, v0, Lcom/batch/android/a0/d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    sget-object v0, Lcom/batch/android/a0/g$c;->b:Lcom/batch/android/a0/g$c;

    iput-object v0, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/batch/android/a0/g;->h:Lcom/batch/android/a0/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_8
    iget-object v0, p0, Lcom/batch/android/a0/g;->h:Lcom/batch/android/a0/d;

    iget-object v0, v0, Lcom/batch/android/a0/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    :goto_0
    sget-object v0, Lcom/batch/android/a0/g$d;->b:Lcom/batch/android/a0/g$d;

    iput-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    return-void
.end method

.method public i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    sget-object v1, Lcom/batch/android/a0/g$d;->b:Lcom/batch/android/a0/g$d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    sget-object v1, Lcom/batch/android/a0/g$c;->b:Lcom/batch/android/a0/g$c;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_2
    sget-object v0, Lcom/batch/android/a0/g$c;->c:Lcom/batch/android/a0/g$c;

    iput-object v0, p0, Lcom/batch/android/a0/g;->c:Lcom/batch/android/a0/g$c;

    iget-object v0, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/batch/android/a0/g;->j()V

    :cond_3
    new-instance v0, Lcom/batch/android/a0/f;

    invoke-direct {v0}, Lcom/batch/android/a0/f;-><init>()V

    iput-object v0, p0, Lcom/batch/android/a0/g;->e:Lcom/batch/android/a0/f;

    iget-object p0, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    iput-object p0, v0, Lcom/batch/android/a0/f;->a:Ljava/lang/String;

    return-void

    :cond_4
    new-instance v0, Lcom/batch/android/a0/h;

    invoke-direct {v0}, Lcom/batch/android/a0/h;-><init>()V

    iput-object v0, p0, Lcom/batch/android/a0/g;->f:Lcom/batch/android/a0/h;

    iget-object v1, p0, Lcom/batch/android/a0/g;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/batch/android/a0/h;->a:Ljava/lang/String;

    sget-object v0, Lcom/batch/android/a0/g$d;->d:Lcom/batch/android/a0/g$d;

    iput-object v0, p0, Lcom/batch/android/a0/g;->d:Lcom/batch/android/a0/g$d;

    return-void
.end method

.method public j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a0/a;
        }
    .end annotation

    new-instance p0, Lcom/batch/android/a0/a;

    const-string v0, "Internal parsing error"

    invoke-direct {p0, v0}, Lcom/batch/android/a0/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
